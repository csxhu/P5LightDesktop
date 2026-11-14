package com.local.p5home;

import android.content.Context;
import android.net.Uri;
import android.os.Bundle;
import android.os.SystemClock;
import java.util.concurrent.Executors;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;

/* loaded from: classes.dex */
public final class TurnCameraStatusClient implements AutoCloseable {
    public static final Uri URI = Uri.parse("content://com.local.p5home.turncamera/status");
    private final Context app;
    private volatile boolean closed;
    private int connection;
    private int gear;
    private int lamp;
    private long lastAttempt;
    private final Object lock;
    private boolean observer;
    private long observerGeneration;
    private final AtomicBoolean queued;
    private long sequence;
    private String session;
    private long sessionGeneration;
    private final ScheduledExecutorService worker;

    static /* synthetic */ Thread lambda$new$0(Runnable runnable) {
        Thread thread = new Thread(runnable, "G3TurnCameraStatus");
        thread.setDaemon(true);
        return thread;
    }

    public TurnCameraStatusClient(Context context) {
        ScheduledExecutorService scheduledExecutorServiceNewSingleThreadScheduledExecutor = Executors.newSingleThreadScheduledExecutor(new ThreadFactory() { // from class: com.local.p5home.TurnCameraStatusClient$$ExternalSyntheticLambda1
            @Override // java.util.concurrent.ThreadFactory
            public final Thread newThread(Runnable runnable) {
                return TurnCameraStatusClient.lambda$new$0(runnable);
            }
        });
        this.worker = scheduledExecutorServiceNewSingleThreadScheduledExecutor;
        this.queued = new AtomicBoolean();
        this.lock = new Object();
        this.sessionGeneration = -1L;
        this.lastAttempt = -1L;
        if (context == null) {
            throw new IllegalArgumentException("context");
        }
        Context applicationContext = context.getApplicationContext();
        this.app = applicationContext != null ? applicationContext : context;
        scheduledExecutorServiceNewSingleThreadScheduledExecutor.scheduleWithFixedDelay(new Runnable() { // from class: com.local.p5home.TurnCameraStatusClient$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.flush();
            }
        }, 0L, 8L, TimeUnit.SECONDS);
    }

    public void observerAttempt(boolean z) {
        synchronized (this.lock) {
            if (this.closed) {
                return;
            }
            this.observerGeneration++;
            this.observer = z;
            this.lamp = 0;
            requestFlush();
        }
    }

    public void connection(boolean z) {
        synchronized (this.lock) {
            if (this.closed) {
                return;
            }
            this.observerGeneration++;
            this.connection = z ? 1 : 2;
            this.gear = 0;
            this.lamp = 0;
            requestFlush();
        }
    }

    public void lampCallback(boolean z) {
        synchronized (this.lock) {
            if (this.closed) {
                return;
            }
            int i = z ? 1 : 2;
            if (this.lamp == i) {
                return;
            }
            this.lamp = i;
            requestFlush();
        }
    }

    public void gearCallback(boolean z) {
        synchronized (this.lock) {
            if (this.closed) {
                return;
            }
            int i = z ? 1 : 2;
            if (this.gear == i) {
                return;
            }
            this.gear = i;
            requestFlush();
        }
    }

    private void requestFlush() {
        if (this.closed || !this.queued.compareAndSet(false, true)) {
            return;
        }
        try {
            this.worker.schedule(new Runnable() { // from class: com.local.p5home.TurnCameraStatusClient$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.m169lambda$requestFlush$1$comlocalg3homeTurnCameraStatusClient();
                }
            }, 1L, TimeUnit.SECONDS);
        } catch (RejectedExecutionException e) {
            this.queued.set(false);
        }
    }

    /* renamed from: lambda$requestFlush$1$com-local-g3home-TurnCameraStatusClient, reason: not valid java name */
    /* synthetic */ void m169lambda$requestFlush$1$comlocalg3homeTurnCameraStatusClient() {
        this.queued.set(false);
        flush();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void flush() {
        if (this.closed) {
            return;
        }
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        long j = this.lastAttempt;
        if (j >= 0 && jElapsedRealtime >= j && jElapsedRealtime - j < 1000) {
            requestFlush();
            return;
        }
        this.lastAttempt = jElapsedRealtime;
        try {
            synchronized (this.lock) {
                if (this.closed) {
                    return;
                }
                long j2 = this.observerGeneration;
                if (this.session == null || this.sessionGeneration != j2) {
                    Bundle bundleCall = this.app.getContentResolver().call(URI, "begin", (String) null, (Bundle) null);
                    String string = bundleCall == null ? null : bundleCall.getString("session");
                    if (string != null && string.matches("[0-9a-f]{32}")) {
                        this.session = string;
                        this.sessionGeneration = j2;
                        this.sequence = 0L;
                    }
                    return;
                }
                Bundle bundle = new Bundle();
                synchronized (this.lock) {
                    if (this.closed) {
                        return;
                    }
                    if (this.observerGeneration != j2) {
                        this.session = null;
                        return;
                    }
                    bundle.putString("session", this.session);
                    long j3 = this.sequence;
                    this.sequence = 1 + j3;
                    bundle.putLong("sequence", j3);
                    bundle.putBoolean("observer", this.observer);
                    bundle.putInt("connection", this.connection);
                    bundle.putInt("lamp", this.lamp);
                    bundle.putInt("gear", this.gear);
                    Bundle bundleCall2 = this.app.getContentResolver().call(URI, "publish", (String) null, bundle);
                    if (bundleCall2 == null || !bundleCall2.getBoolean("accepted", false)) {
                        this.session = null;
                    }
                }
            }
        } catch (Exception | LinkageError e) {
            this.session = null;
        }
    }

    @Override // java.lang.AutoCloseable
    public void close() {
        this.closed = true;
        this.worker.shutdownNow();
    }
}
