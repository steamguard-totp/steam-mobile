package com.google.android.gms.internal;

import android.annotation.TargetApi;
import android.app.Activity;
import android.app.ActivityManager;
import android.app.ActivityManager.RunningAppProcessInfo;
import android.app.KeyguardManager;
import android.content.Context;
import android.graphics.Rect;
import android.os.PowerManager;
import android.os.Process;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.ValueCallback;
import android.webkit.WebView;
import android.widget.EditText;
import android.widget.TextView;
import com.google.android.gms.ads.internal.zzv;
import com.google.android.gms.common.util.zzs;
import java.util.List;
import org.json.JSONException;
import org.json.JSONObject;

@TargetApi(14)
@zzmb
public class zzdb extends Thread {
    private boolean mStarted = false;
    private boolean zzak = false;
    private final Object zzrN;
    private boolean zzxD = false;
    private final zzcz zzxE;
    private final zzma zzxF;
    private final int zzxG;
    private final int zzxH;
    private final int zzxI;
    private final int zzxJ;
    private final int zzxK;
    private final int zzxL;
    private final String zzxM;
    private final int zzxe;
    private final int zzxg;

    @zzmb
    class zza {
        final int zzxU;
        final int zzxV;

        zza(zzdb com_google_android_gms_internal_zzdb, int i, int i2) {
            this.zzxU = i;
            this.zzxV = i2;
        }
    }

    public zzdb(zzcz com_google_android_gms_internal_zzcz, zzma com_google_android_gms_internal_zzma) {
        this.zzxE = com_google_android_gms_internal_zzcz;
        this.zzxF = com_google_android_gms_internal_zzma;
        this.zzrN = new Object();
        this.zzxe = ((Integer) zzfx.zzBP.get()).intValue();
        this.zzxH = ((Integer) zzfx.zzBQ.get()).intValue();
        this.zzxg = ((Integer) zzfx.zzBR.get()).intValue();
        this.zzxI = ((Integer) zzfx.zzBS.get()).intValue();
        this.zzxJ = ((Integer) zzfx.zzBV.get()).intValue();
        this.zzxK = ((Integer) zzfx.zzBX.get()).intValue();
        this.zzxL = ((Integer) zzfx.zzBY.get()).intValue();
        this.zzxG = ((Integer) zzfx.zzBT.get()).intValue();
        this.zzxM = (String) zzfx.zzCa.get();
        setName("ContentFetchTask");
    }

    public void run() {
        while (true) {
            try {
                if (zzef()) {
                    Activity activity = zzv.zzcM().getActivity();
                    if (activity == null) {
                        zzpy.zzbc("ContentFetchThread: no activity. Sleeping.");
                        zzeh();
                    } else {
                        zza(activity);
                    }
                } else {
                    zzpy.zzbc("ContentFetchTask: sleeping");
                    zzeh();
                }
                Thread.sleep((long) (this.zzxG * 1000));
            } catch (Throwable e) {
                zzpy.zzb("Error in ContentFetchTask", e);
            } catch (Throwable e2) {
                zzpy.zzb("Error in ContentFetchTask", e2);
                this.zzxF.zza(e2, "ContentFetchTask.run");
            }
            synchronized (this.zzrN) {
                while (this.zzxD) {
                    try {
                        zzpy.zzbc("ContentFetchTask: waiting");
                        this.zzrN.wait();
                    } catch (InterruptedException e3) {
                    }
                }
            }
        }
    }

    public void wakeup() {
        synchronized (this.zzrN) {
            this.zzxD = false;
            this.zzrN.notifyAll();
            zzpy.zzbc("ContentFetchThread: wakeup");
        }
    }

    zza zza(View view, zzcy com_google_android_gms_internal_zzcy) {
        int i = 0;
        if (view == null) {
            return new zza(this, 0, 0);
        }
        Context context = zzv.zzcM().getContext();
        if (context != null) {
            String str = (String) view.getTag(context.getResources().getIdentifier((String) zzfx.zzBZ.get(), "id", context.getPackageName()));
            if (!(TextUtils.isEmpty(this.zzxM) || str == null || !str.equals(this.zzxM))) {
                return new zza(this, 0, 0);
            }
        }
        boolean globalVisibleRect = view.getGlobalVisibleRect(new Rect());
        if ((view instanceof TextView) && !(view instanceof EditText)) {
            CharSequence text = ((TextView) view).getText();
            if (TextUtils.isEmpty(text)) {
                return new zza(this, 0, 0);
            }
            com_google_android_gms_internal_zzcy.zzb(text.toString(), globalVisibleRect, view.getX(), view.getY(), (float) view.getWidth(), (float) view.getHeight());
            return new zza(this, 1, 0);
        } else if ((view instanceof WebView) && !(view instanceof zzqp)) {
            com_google_android_gms_internal_zzcy.zzea();
            return zza((WebView) view, com_google_android_gms_internal_zzcy, globalVisibleRect) ? new zza(this, 0, 1) : new zza(this, 0, 0);
        } else if (!(view instanceof ViewGroup)) {
            return new zza(this, 0, 0);
        } else {
            ViewGroup viewGroup = (ViewGroup) view;
            int i2 = 0;
            for (int i3 = 0; i3 < viewGroup.getChildCount(); i3++) {
                zza zza = zza(viewGroup.getChildAt(i3), com_google_android_gms_internal_zzcy);
                i2 += zza.zzxU;
                i += zza.zzxV;
            }
            return new zza(this, i2, i);
        }
    }

    void zza(Activity activity) {
        if (activity != null) {
            View view = null;
            try {
                if (!(activity.getWindow() == null || activity.getWindow().getDecorView() == null)) {
                    view = activity.getWindow().getDecorView().findViewById(16908290);
                }
            } catch (Throwable th) {
                zzpy.zzbc("Failed getting root view of activity. Content not extracted.");
            }
            if (view != null) {
                zzh(view);
            }
        }
    }

    void zza(zzcy com_google_android_gms_internal_zzcy, WebView webView, String str, boolean z) {
        com_google_android_gms_internal_zzcy.zzdZ();
        try {
            if (!TextUtils.isEmpty(str)) {
                String optString = new JSONObject(str).optString("text");
                if (TextUtils.isEmpty(webView.getTitle())) {
                    com_google_android_gms_internal_zzcy.zza(optString, z, webView.getX(), webView.getY(), (float) webView.getWidth(), (float) webView.getHeight());
                } else {
                    String valueOf = String.valueOf(webView.getTitle());
                    com_google_android_gms_internal_zzcy.zza(new StringBuilder((String.valueOf(valueOf).length() + 1) + String.valueOf(optString).length()).append(valueOf).append("\n").append(optString).toString(), z, webView.getX(), webView.getY(), (float) webView.getWidth(), (float) webView.getHeight());
                }
            }
            if (com_google_android_gms_internal_zzcy.zzdU()) {
                this.zzxE.zzb(com_google_android_gms_internal_zzcy);
            }
        } catch (JSONException e) {
            zzpy.zzbc("Json string may be malformed.");
        } catch (Throwable th) {
            zzpy.zza("Failed to get webview content.", th);
            this.zzxF.zza(th, "ContentFetchTask.processWebViewContent");
        }
    }

    boolean zza(RunningAppProcessInfo runningAppProcessInfo) {
        return runningAppProcessInfo.importance == 100;
    }

    @TargetApi(19)
    boolean zza(final WebView webView, final zzcy com_google_android_gms_internal_zzcy, final boolean z) {
        if (!zzs.zzyF()) {
            return false;
        }
        com_google_android_gms_internal_zzcy.zzea();
        webView.post(new Runnable(this) {
            final /* synthetic */ zzdb zzxO;
            ValueCallback<String> zzxP = new ValueCallback<String>(this) {
                final /* synthetic */ AnonymousClass2 zzxT;

                {
                    this.zzxT = r1;
                }

                public /* synthetic */ void onReceiveValue(Object obj) {
                    zzE((String) obj);
                }

                public void zzE(String str) {
                    this.zzxT.zzxO.zza(com_google_android_gms_internal_zzcy, webView, str, z);
                }
            };

            public void run() {
                if (webView.getSettings().getJavaScriptEnabled()) {
                    try {
                        webView.evaluateJavascript("(function() { return  {text:document.body.innerText}})();", this.zzxP);
                    } catch (Throwable th) {
                        this.zzxP.onReceiveValue("");
                    }
                }
            }
        });
        return true;
    }

    public void zzee() {
        synchronized (this.zzrN) {
            if (this.mStarted) {
                zzpy.zzbc("Content hash thread already started, quiting...");
                return;
            }
            this.mStarted = true;
            start();
        }
    }

    boolean zzef() {
        try {
            Context context = zzv.zzcM().getContext();
            if (context == null) {
                return false;
            }
            ActivityManager activityManager = (ActivityManager) context.getSystemService("activity");
            KeyguardManager keyguardManager = (KeyguardManager) context.getSystemService("keyguard");
            if (activityManager == null || keyguardManager == null) {
                return false;
            }
            List<RunningAppProcessInfo> runningAppProcesses = activityManager.getRunningAppProcesses();
            if (runningAppProcesses == null) {
                return false;
            }
            for (RunningAppProcessInfo runningAppProcessInfo : runningAppProcesses) {
                if (Process.myPid() == runningAppProcessInfo.pid) {
                    if (zza(runningAppProcessInfo) && !keyguardManager.inKeyguardRestrictedInputMode() && zzh(context)) {
                        return true;
                    }
                    return false;
                }
            }
            return false;
        } catch (Throwable th) {
            return false;
        }
    }

    public zzcy zzeg() {
        return this.zzxE.zzed();
    }

    public void zzeh() {
        synchronized (this.zzrN) {
            this.zzxD = true;
            zzpy.zzbc("ContentFetchThread: paused, mPause = " + this.zzxD);
        }
    }

    public boolean zzei() {
        return this.zzxD;
    }

    boolean zzh(Context context) {
        PowerManager powerManager = (PowerManager) context.getSystemService("power");
        return powerManager == null ? false : powerManager.isScreenOn();
    }

    boolean zzh(final View view) {
        if (view == null) {
            return false;
        }
        view.post(new Runnable(this) {
            final /* synthetic */ zzdb zzxO;

            public void run() {
                this.zzxO.zzi(view);
            }
        });
        return true;
    }

    void zzi(View view) {
        try {
            zzcy com_google_android_gms_internal_zzcy = new zzcy(this.zzxe, this.zzxH, this.zzxg, this.zzxI, this.zzxJ, this.zzxK, this.zzxL);
            zza zza = zza(view, com_google_android_gms_internal_zzcy);
            com_google_android_gms_internal_zzcy.zzeb();
            if (zza.zzxU != 0 || zza.zzxV != 0) {
                if (zza.zzxV != 0 || com_google_android_gms_internal_zzcy.zzec() != 0) {
                    if (zza.zzxV != 0 || !this.zzxE.zza(com_google_android_gms_internal_zzcy)) {
                        this.zzxE.zzc(com_google_android_gms_internal_zzcy);
                    }
                }
            }
        } catch (Throwable e) {
            zzpy.zzb("Exception in fetchContentOnUIThread", e);
            this.zzxF.zza(e, "ContentFetchTask.fetchContent");
        }
    }
}
