package com.local.p5home;

import android.app.Application;
import android.content.Context;
import com.local.p5home.Navigator;

/* loaded from: classes.dex */
public final class G3Application extends Application {
    private static boolean installed;

    static synchronized void ensure(final Context context) {
        if (installed) {
            return;
        }
        Context applicationContext = context.getApplicationContext();
        if (applicationContext != null) {
            context = applicationContext;
        }
        Navigator.setReplySink(context, new Navigator.ReplySink() { // from class: com.local.p5home.G3Application$$ExternalSyntheticLambda0
            @Override // com.local.p5home.Navigator.ReplySink
            public final void onReply(String str, String str2, String str3, String str4) {
                G3Application.lambda$ensure$0(context, str, str2, str3, str4);
            }
        });
        SpeechOutput.get(context);
        VehicleBridgeClient.start(context);
        installed = true;
    }

    static /* synthetic */ void lambda$ensure$0(Context context, String str, String str2, String str3, String str4) {
        BridgeStore.enqueueReply(context, str, str2, str3, str4);
        BridgeStore.update(context, "收到地图协议结果", null, "");
    }

    @Override // android.app.Application
    public void onCreate() {
        super.onCreate();
        ensure(this);
    }
}
