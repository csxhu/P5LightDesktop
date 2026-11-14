package com.local.p5home;

import android.app.ActivityOptions;
import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
import android.util.Base64;
import com.local.p5home.MusicPolicy;
import java.nio.charset.StandardCharsets;
import java.util.Arrays;
import java.util.List;
import java.util.UUID;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.function.BooleanSupplier;

/* loaded from: classes.dex */
final class MusicRouter {

    static final class Provider {
        final String id;
        final boolean installed;
        final String label;
        final String pkg;
        final boolean supported;

        Provider(Context context, String str, String str2, String... strArr) {
            String str3;
            this.id = str;
            this.label = str2;
            int length = strArr.length;
            boolean z = false;
            int i = 0;
            while (true) {
                if (i >= length) {
                    str3 = "";
                    break;
                }
                str3 = strArr[i];
                if (context.getPackageManager().getApplicationInfo(str3, 0).enabled) {
                    break;
                } else {
                    i++;
                }
            }
            this.pkg = str3;
            boolean z2 = !str3.isEmpty();
            this.installed = z2;
            if ("system".equals(str) || (z2 && MusicRouter.resolve(context, str, str3) != null)) {
                z = true;
            }
            this.supported = z;
        }
    }

    static List<Provider> providers(Context context) {
        return Arrays.asList(new Provider(context, "system", "跟随原车音乐", "com.xiaopeng.musicradio"), new Provider(context, "netease", "网易云音乐", "com.netease.cloudmusic.iot"), new Provider(context, "qq", "QQ音乐", "com.tencent.qqmusiccar"), new Provider(context, "kugou", "酷狗音乐", "com.kugou.android.auto", "com.kugou.android"), new Provider(context, "qishui", "汽水音乐", "com.luna.music.car"));
    }

    static Provider provider(Context context, String str) {
        for (Provider provider : providers(context)) {
            if (provider.id.equals(str)) {
                return provider;
            }
        }
        return null;
    }

    static String label(Context context, String str) {
        Provider provider = provider(context, str);
        return provider == null ? "跟随原车音乐" : provider.label;
    }

    static boolean available(Context context, String str) {
        Provider provider = provider(context, str);
        return provider != null && !"system".equals(str) && provider.supported && (!"qishui".equals(str) || lunaReady(context));
    }

    static boolean lunaReady(Context context) throws PackageManager.NameNotFoundException {
        try {
            PackageInfo packageInfo = context.getPackageManager().getPackageInfo("com.luna.music.car", 0);
            SharedPreferences sharedPreferencesPrefs = ConfigStore.prefs(context);
            if (packageInfo.applicationInfo != null && packageInfo.applicationInfo.enabled && packageInfo.getLongVersionCode() > 0 && sharedPreferencesPrefs.getLong("lunaBridgeVerifiedCode", -1L) == packageInfo.getLongVersionCode() && sharedPreferencesPrefs.getLong("lunaBridgeVerifiedUpdate", -1L) == packageInfo.lastUpdateTime) {
                return sharedPreferencesPrefs.getInt("lunaBridgeVerifiedUid", -1) == packageInfo.applicationInfo.uid;
            }
            return false;
        } catch (Exception e) {
            return false;
        }
    }

    static String packageName(Context context, String str) {
        Provider provider = provider(context, str);
        return provider == null ? "" : provider.pkg;
    }

    static Intent intent(String str, String str2, MusicPolicy.Song song) {
        Intent intentAddFlags = new Intent().addFlags(268435456);
        if ("qq".equals(str)) {
            return intentAddFlags.setComponent(new ComponentName(str2, "com.tencent.qqmusiccar.app.activity.DispacherActivityForThird")).setAction("com.tencent.qqmusiccar.action").putExtra("action", 8).putExtra("search_key", Base64.encodeToString(song.query().getBytes(StandardCharsets.UTF_8), 2)).putExtra("m1", true);
        }
        if ("netease".equals(str)) {
            return intentAddFlags.setComponent(new ComponentName(str2, "com.netease.cloudmusic.audio.launch.IotRedirectActivity")).setAction("android.intent.action.VIEW").setDataAndType(Uri.parse("voice://netease.audioplayer/player").buildUpon().appendQueryParameter("search", song.query()).build(), "voice/audio");
        }
        if ("kugou".equals(str)) {
            return intentAddFlags.setAction("android.media.action.MEDIA_PLAY_FROM_SEARCH").setPackage(str2).putExtra("query", song.query()).putExtra("android.intent.extra.title", song.title).putExtra("android.intent.extra.artist", song.artist).putExtra("android.intent.extra.album", song.album).putExtra("android.intent.extra.focus", "vnd.android.cursor.item/audio");
        }
        if ("qishui".equals(str)) {
            return intentAddFlags.setComponent(new ComponentName(str2, "com.luna.music.car.variants.ui.XPengMainActivity")).setAction("android.intent.action.MAIN").addCategory("android.intent.category.LAUNCHER").addFlags(536870912);
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static ComponentName resolve(Context context, String str, String str2) throws PackageManager.NameNotFoundException {
        ActivityInfo activityInfo;
        try {
            Intent intent = intent(str, str2, new MusicPolicy.Song("test", "", ""));
            if (intent == null) {
                return null;
            }
            if (intent.getComponent() != null) {
                activityInfo = context.getPackageManager().getActivityInfo(intent.getComponent(), 0);
            } else {
                ResolveInfo resolveInfoResolveActivity = context.getPackageManager().resolveActivity(intent, 65536);
                if (resolveInfoResolveActivity == null) {
                    return null;
                }
                activityInfo = resolveInfoResolveActivity.activityInfo;
            }
            if (activityInfo != null && str2.equals(activityInfo.packageName) && activityInfo.exported && activityInfo.enabled && (activityInfo.permission == null || context.checkSelfPermission(activityInfo.permission) == 0)) {
                return new ComponentName(activityInfo.packageName, activityInfo.name);
            }
            return null;
        } catch (Exception e) {
            return null;
        }
    }

    static /* synthetic */ boolean lambda$play$0() {
        return true;
    }

    static String play(Context context, String str, String str2) {
        return play(context, str, str2, new BooleanSupplier() { // from class: com.local.p5home.MusicRouter$$ExternalSyntheticLambda0
            @Override // java.util.function.BooleanSupplier
            public final boolean getAsBoolean() {
                return MusicRouter.lambda$play$0();
            }
        });
    }

    static String play(Context context, String str, String str2, BooleanSupplier booleanSupplier) throws InterruptedException, PackageManager.NameNotFoundException {
        if (!booleanSupplier.getAsBoolean()) {
            throw new IllegalStateException("点歌请求已取消");
        }
        MusicPolicy.Song song = MusicPolicy.song(str2);
        if (song == null) {
            throw new IllegalArgumentException("歌曲信息无效");
        }
        Provider provider = provider(context, str);
        if (provider == null || !provider.supported || "system".equals(str)) {
            throw new IllegalStateException("音乐应用未安装或当前版本不支持直接点歌");
        }
        ComponentName componentNameResolve = resolve(context, str, provider.pkg);
        if (componentNameResolve == null) {
            throw new IllegalStateException("音乐点歌入口不可用");
        }
        Intent component = intent(str, provider.pkg, song).setComponent(componentNameResolve);
        ActivityOptions activityOptionsMakeBasic = ActivityOptions.makeBasic();
        activityOptionsMakeBasic.setLaunchDisplayId(0);
        context.startActivity(component, activityOptionsMakeBasic.toBundle());
        if ("qishui".equals(str)) {
            lunaPlay(context, song, booleanSupplier);
        }
        return "已向" + provider.label + "发送播放请求；实际播放取决于应用登录、网络和歌曲权限";
    }

    private static void lunaPlay(Context context, MusicPolicy.Song song, BooleanSupplier booleanSupplier) throws InterruptedException {
        if (Looper.myLooper() == Looper.getMainLooper()) {
            throw new IllegalStateException("音乐请求需要后台处理");
        }
        String string = UUID.randomUUID().toString();
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        for (int i = 0; i < 6; i++) {
            if (!booleanSupplier.getAsBoolean()) {
                throw new IllegalStateException("点歌请求已取消");
            }
            final CountDownLatch countDownLatch = new CountDownLatch(1);
            final AtomicInteger atomicInteger = new AtomicInteger();
            context.sendOrderedBroadcast(new Intent("com.local.p5home.MUSIC_PLAY_LUNA").setPackage("com.luna.music.car").putExtra("data", song.json()).putExtra("requestId", string).putExtra("queuedAt", jElapsedRealtime), null, new BroadcastReceiver() { // from class: com.local.p5home.MusicRouter.1
                @Override // android.content.BroadcastReceiver
                public void onReceive(Context context2, Intent intent) {
                    atomicInteger.set(getResultCode());
                    countDownLatch.countDown();
                }
            }, new Handler(Looper.getMainLooper()), 0, null, null);
            try {
                countDownLatch.await(1200L, TimeUnit.MILLISECONDS);
                if (atomicInteger.get() == 202) {
                    return;
                }
                if (atomicInteger.get() == 400 || atomicInteger.get() == 500) {
                    break;
                }
                Thread.sleep(600L);
            } catch (InterruptedException e) {
                Thread.currentThread().interrupt();
            }
        }
        throw new IllegalStateException("汽水点歌桥接未就绪，请在 LSPosed 勾选汽水音乐作用域并重启该应用");
    }

    private MusicRouter() {
    }
}
