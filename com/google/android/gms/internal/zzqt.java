package com.google.android.gms.internal;

import android.annotation.TargetApi;
import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.content.MutableContextWrapper;
import android.graphics.Canvas;
import android.net.Uri;
import android.os.Build.VERSION;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewTreeObserver.OnGlobalLayoutListener;
import android.view.ViewTreeObserver.OnScrollChangedListener;
import android.view.WindowManager;
import android.webkit.DownloadListener;
import android.webkit.ValueCallback;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.google.android.gms.ads.internal.overlay.zze;
import com.google.android.gms.ads.internal.zzd;
import com.google.android.gms.ads.internal.zzt;
import com.google.android.gms.ads.internal.zzv;
import com.google.android.gms.common.util.zzs;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

@zzmb
class zzqt extends WebView implements OnGlobalLayoutListener, DownloadListener, zzqp {
    private final zzav zzGr;
    private int zzLQ = -1;
    private int zzLR = -1;
    private int zzLT = -1;
    private int zzLU = -1;
    private String zzOn = "";
    private zzgd zzOo;
    private Boolean zzWh;
    private final zza zzYX;
    private final zzt zzYY;
    private zzqq zzYZ;
    private zze zzZa;
    private boolean zzZb;
    private boolean zzZc;
    private boolean zzZd;
    private boolean zzZe;
    private int zzZf;
    private boolean zzZg = true;
    boolean zzZh = false;
    private zzqu zzZi;
    private boolean zzZj;
    private boolean zzZk;
    private zzgs zzZl;
    private int zzZm;
    private int zzZn;
    private zzgd zzZo;
    private zzgd zzZp;
    private zzge zzZq;
    private WeakReference<OnClickListener> zzZr;
    private zze zzZs;
    private Map<String, zzil> zzZt;
    private final Object zzrN = new Object();
    private final zzd zzsz;
    private final zzqa zztr;
    private zzec zzum;
    private zzpw zzvP;
    private final WindowManager zzwf;

    @zzmb
    public static class zza extends MutableContextWrapper {
        private Activity zzXO;
        private Context zzZv;
        private Context zzvZ;

        public zza(Context context) {
            super(context);
            setBaseContext(context);
        }

        public Object getSystemService(String str) {
            return this.zzZv.getSystemService(str);
        }

        public void setBaseContext(Context context) {
            this.zzvZ = context.getApplicationContext();
            this.zzXO = context instanceof Activity ? (Activity) context : null;
            this.zzZv = context;
            super.setBaseContext(this.zzvZ);
        }

        public void startActivity(Intent intent) {
            if (this.zzXO != null) {
                this.zzXO.startActivity(intent);
                return;
            }
            intent.setFlags(268435456);
            this.zzvZ.startActivity(intent);
        }

        public Activity zzkR() {
            return this.zzXO;
        }

        public Context zzkS() {
            return this.zzZv;
        }
    }

    protected zzqt(zza com_google_android_gms_internal_zzqt_zza, zzec com_google_android_gms_internal_zzec, boolean z, boolean z2, zzav com_google_android_gms_internal_zzav, zzqa com_google_android_gms_internal_zzqa, zzgf com_google_android_gms_internal_zzgf, zzt com_google_android_gms_ads_internal_zzt, zzd com_google_android_gms_ads_internal_zzd) {
        super(com_google_android_gms_internal_zzqt_zza);
        this.zzYX = com_google_android_gms_internal_zzqt_zza;
        this.zzum = com_google_android_gms_internal_zzec;
        this.zzZd = z;
        this.zzZf = -1;
        this.zzGr = com_google_android_gms_internal_zzav;
        this.zztr = com_google_android_gms_internal_zzqa;
        this.zzYY = com_google_android_gms_ads_internal_zzt;
        this.zzsz = com_google_android_gms_ads_internal_zzd;
        this.zzwf = (WindowManager) getContext().getSystemService("window");
        setBackgroundColor(0);
        WebSettings settings = getSettings();
        settings.setAllowFileAccess(false);
        settings.setJavaScriptEnabled(true);
        settings.setSavePassword(false);
        settings.setSupportMultipleWindows(true);
        settings.setJavaScriptCanOpenWindowsAutomatically(true);
        if (VERSION.SDK_INT >= 21) {
            settings.setMixedContentMode(2);
        }
        zzv.zzcJ().zza((Context) com_google_android_gms_internal_zzqt_zza, com_google_android_gms_internal_zzqa.zzaZ, settings);
        zzv.zzcL().zza(getContext(), settings);
        setDownloadListener(this);
        zzlF();
        if (zzs.zzyD()) {
            addJavascriptInterface(new zzqv(this), "googleAdsJsInterface");
        }
        if (zzs.zzyx()) {
            removeJavascriptInterface("accessibility");
            removeJavascriptInterface("accessibilityTraversal");
        }
        this.zzvP = new zzpw(this.zzYX.zzkR(), this, this, null);
        zzd(com_google_android_gms_internal_zzgf);
    }

    private void zzO(boolean z) {
        Map hashMap = new HashMap();
        hashMap.put("isVisible", z ? "1" : "0");
        zza("onAdVisibilityChanged", hashMap);
    }

    static zzqt zzb(Context context, zzec com_google_android_gms_internal_zzec, boolean z, boolean z2, zzav com_google_android_gms_internal_zzav, zzqa com_google_android_gms_internal_zzqa, zzgf com_google_android_gms_internal_zzgf, zzt com_google_android_gms_ads_internal_zzt, zzd com_google_android_gms_ads_internal_zzd) {
        return new zzqt(new zza(context), com_google_android_gms_internal_zzec, z, z2, com_google_android_gms_internal_zzav, com_google_android_gms_internal_zzqa, com_google_android_gms_internal_zzgf, com_google_android_gms_ads_internal_zzt, com_google_android_gms_ads_internal_zzd);
    }

    private void zzd(zzgf com_google_android_gms_internal_zzgf) {
        zzlJ();
        this.zzZq = new zzge(new zzgf(true, "make_wv", this.zzum.zzzk));
        this.zzZq.zzfv().zzc(com_google_android_gms_internal_zzgf);
        this.zzOo = zzgb.zzb(this.zzZq.zzfv());
        this.zzZq.zza("native:view_create", this.zzOo);
        this.zzZp = null;
        this.zzZo = null;
    }

    private void zzlB() {
        synchronized (this.zzrN) {
            this.zzWh = zzv.zzcN().zzjT();
            if (this.zzWh == null) {
                try {
                    evaluateJavascript("(function(){})()", null);
                    zzb(Boolean.valueOf(true));
                } catch (IllegalStateException e) {
                    zzb(Boolean.valueOf(false));
                }
            }
        }
    }

    private void zzlC() {
        zzgb.zza(this.zzZq.zzfv(), this.zzOo, "aeh2");
    }

    private void zzlD() {
        zzgb.zza(this.zzZq.zzfv(), this.zzOo, "aebb2");
    }

    private void zzlF() {
        synchronized (this.zzrN) {
            if (this.zzZd || this.zzum.zzzl) {
                if (VERSION.SDK_INT < 14) {
                    zzpy.zzbc("Disabling hardware acceleration on an overlay.");
                    zzlG();
                } else {
                    zzpy.zzbc("Enabling hardware acceleration on an overlay.");
                    zzlH();
                }
            } else if (VERSION.SDK_INT < 18) {
                zzpy.zzbc("Disabling hardware acceleration on an AdView.");
                zzlG();
            } else {
                zzpy.zzbc("Enabling hardware acceleration on an AdView.");
                zzlH();
            }
        }
    }

    private void zzlG() {
        synchronized (this.zzrN) {
            if (!this.zzZe) {
                zzv.zzcL().zzu(this);
            }
            this.zzZe = true;
        }
    }

    private void zzlH() {
        synchronized (this.zzrN) {
            if (this.zzZe) {
                zzv.zzcL().zzt(this);
            }
            this.zzZe = false;
        }
    }

    private void zzlI() {
        synchronized (this.zzrN) {
            this.zzZt = null;
        }
    }

    private void zzlJ() {
        if (this.zzZq != null) {
            zzgf zzfv = this.zzZq.zzfv();
            if (zzfv != null && zzv.zzcN().zzjN() != null) {
                zzv.zzcN().zzjN().zza(zzfv);
            }
        }
    }

    public void destroy() {
        synchronized (this.zzrN) {
            zzlJ();
            this.zzvP.zzkF();
            if (this.zzZa != null) {
                this.zzZa.close();
                this.zzZa.onDestroy();
                this.zzZa = null;
            }
            this.zzYZ.reset();
            if (this.zzZc) {
                return;
            }
            zzv.zzdg().zze(this);
            zzlI();
            this.zzZc = true;
            zzpe.v("Initiating WebView self destruct sequence in 3...");
            this.zzYZ.zzls();
        }
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    @android.annotation.TargetApi(19)
    public void evaluateJavascript(java.lang.String r3, android.webkit.ValueCallback<java.lang.String> r4) {
        /*
        r2 = this;
        r1 = r2.zzrN;
        monitor-enter(r1);
        r0 = r2.isDestroyed();	 Catch:{ all -> 0x001b }
        if (r0 == 0) goto L_0x0016;
    L_0x0009:
        r0 = "The webview is destroyed. Ignoring action.";
        com.google.android.gms.internal.zzpy.zzbe(r0);	 Catch:{ all -> 0x001b }
        if (r4 == 0) goto L_0x0014;
    L_0x0010:
        r0 = 0;
        r4.onReceiveValue(r0);	 Catch:{ all -> 0x001b }
    L_0x0014:
        monitor-exit(r1);	 Catch:{ all -> 0x001b }
    L_0x0015:
        return;
    L_0x0016:
        super.evaluateJavascript(r3, r4);	 Catch:{ all -> 0x001b }
        monitor-exit(r1);	 Catch:{ all -> 0x001b }
        goto L_0x0015;
    L_0x001b:
        r0 = move-exception;
        monitor-exit(r1);	 Catch:{ all -> 0x001b }
        throw r0;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.zzqt.evaluateJavascript(java.lang.String, android.webkit.ValueCallback):void");
    }

    protected void finalize() throws Throwable {
        synchronized (this.zzrN) {
            if (!this.zzZc) {
                this.zzYZ.reset();
                zzv.zzdg().zze(this);
                zzlI();
            }
        }
        super.finalize();
    }

    public String getRequestId() {
        String str;
        synchronized (this.zzrN) {
            str = this.zzOn;
        }
        return str;
    }

    public int getRequestedOrientation() {
        int i;
        synchronized (this.zzrN) {
            i = this.zzZf;
        }
        return i;
    }

    public View getView() {
        return this;
    }

    public WebView getWebView() {
        return this;
    }

    public boolean isDestroyed() {
        boolean z;
        synchronized (this.zzrN) {
            z = this.zzZc;
        }
        return z;
    }

    public void loadData(String str, String str2, String str3) {
        synchronized (this.zzrN) {
            if (isDestroyed()) {
                zzpy.zzbe("The webview is destroyed. Ignoring action.");
            } else {
                super.loadData(str, str2, str3);
            }
        }
    }

    public void loadDataWithBaseURL(String str, String str2, String str3, String str4, String str5) {
        synchronized (this.zzrN) {
            if (isDestroyed()) {
                zzpy.zzbe("The webview is destroyed. Ignoring action.");
            } else {
                super.loadDataWithBaseURL(str, str2, str3, str4, str5);
            }
        }
    }

    public void loadUrl(String str) {
        synchronized (this.zzrN) {
            if (isDestroyed()) {
                zzpy.zzbe("The webview is destroyed. Ignoring action.");
            } else {
                try {
                    super.loadUrl(str);
                } catch (Throwable th) {
                    String valueOf = String.valueOf(th);
                    zzpy.zzbe(new StringBuilder(String.valueOf(valueOf).length() + 24).append("Could not call loadUrl. ").append(valueOf).toString());
                }
            }
        }
    }

    protected void onAttachedToWindow() {
        boolean z = true;
        synchronized (this.zzrN) {
            super.onAttachedToWindow();
            if (!isDestroyed()) {
                this.zzvP.onAttachedToWindow();
            }
            boolean z2 = this.zzZj;
            if (zzkV() == null || !zzkV().zzlo()) {
                z = z2;
            } else if (!this.zzZk) {
                OnGlobalLayoutListener zzlp = zzkV().zzlp();
                if (zzlp != null) {
                    zzv.zzdh().zza(getView(), zzlp);
                }
                OnScrollChangedListener zzlq = zzkV().zzlq();
                if (zzlq != null) {
                    zzv.zzdh().zza(getView(), zzlq);
                }
                this.zzZk = true;
            }
            zzO(z);
        }
    }

    protected void onDetachedFromWindow() {
        synchronized (this.zzrN) {
            if (!isDestroyed()) {
                this.zzvP.onDetachedFromWindow();
            }
            super.onDetachedFromWindow();
            if (this.zzZk && zzkV() != null && zzkV().zzlo() && getViewTreeObserver() != null && getViewTreeObserver().isAlive()) {
                OnGlobalLayoutListener zzlp = zzkV().zzlp();
                if (zzlp != null) {
                    zzv.zzcL().zza(getViewTreeObserver(), zzlp);
                }
                OnScrollChangedListener zzlq = zzkV().zzlq();
                if (zzlq != null) {
                    getViewTreeObserver().removeOnScrollChangedListener(zzlq);
                }
                this.zzZk = false;
            }
        }
        zzO(false);
    }

    public void onDownloadStart(String str, String str2, String str3, String str4, long j) {
        try {
            Intent intent = new Intent("android.intent.action.VIEW");
            intent.setDataAndType(Uri.parse(str), str4);
            zzv.zzcJ().zzb(getContext(), intent);
        } catch (ActivityNotFoundException e) {
            zzpy.zzbc(new StringBuilder((String.valueOf(str).length() + 51) + String.valueOf(str4).length()).append("Couldn't find an Activity to view url/mimetype: ").append(str).append(" / ").append(str4).toString());
        }
    }

    @TargetApi(21)
    protected void onDraw(Canvas canvas) {
        if (!isDestroyed()) {
            if (VERSION.SDK_INT != 21 || !canvas.isHardwareAccelerated() || isAttachedToWindow()) {
                super.onDraw(canvas);
                if (zzkV() != null && zzkV().zzlz() != null) {
                    zzkV().zzlz().zzcc();
                }
            }
        }
    }

    public boolean onGenericMotionEvent(MotionEvent motionEvent) {
        if (((Boolean) zzfx.zzCp.get()).booleanValue()) {
            float axisValue = motionEvent.getAxisValue(9);
            float axisValue2 = motionEvent.getAxisValue(10);
            if ((motionEvent.getActionMasked() == 8 ? 1 : 0) != 0 && ((axisValue > 0.0f && !canScrollVertically(-1)) || ((axisValue < 0.0f && !canScrollVertically(1)) || ((axisValue2 > 0.0f && !canScrollHorizontally(-1)) || (axisValue2 < 0.0f && !canScrollHorizontally(1)))))) {
                return false;
            }
        }
        return super.onGenericMotionEvent(motionEvent);
    }

    public void onGlobalLayout() {
        boolean zzlA = zzlA();
        zze zzkT = zzkT();
        if (zzkT != null && zzlA) {
            zzkT.zzho();
        }
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    @android.annotation.SuppressLint({"DrawAllocation"})
    protected void onMeasure(int r10, int r11) {
        /*
        r9 = this;
        r0 = 2147483647; // 0x7fffffff float:NaN double:1.060997895E-314;
        r8 = 1073741824; // 0x40000000 float:2.0 double:5.304989477E-315;
        r7 = 8;
        r6 = -2147483648; // 0xffffffff80000000 float:-0.0 double:NaN;
        r4 = r9.zzrN;
        monitor-enter(r4);
        r1 = r9.isDestroyed();	 Catch:{ all -> 0x002e }
        if (r1 == 0) goto L_0x0019;
    L_0x0012:
        r0 = 0;
        r1 = 0;
        r9.setMeasuredDimension(r0, r1);	 Catch:{ all -> 0x002e }
        monitor-exit(r4);	 Catch:{ all -> 0x002e }
    L_0x0018:
        return;
    L_0x0019:
        r1 = r9.isInEditMode();	 Catch:{ all -> 0x002e }
        if (r1 != 0) goto L_0x0029;
    L_0x001f:
        r1 = r9.zzZd;	 Catch:{ all -> 0x002e }
        if (r1 != 0) goto L_0x0029;
    L_0x0023:
        r1 = r9.zzum;	 Catch:{ all -> 0x002e }
        r1 = r1.zzzn;	 Catch:{ all -> 0x002e }
        if (r1 == 0) goto L_0x0031;
    L_0x0029:
        super.onMeasure(r10, r11);	 Catch:{ all -> 0x002e }
        monitor-exit(r4);	 Catch:{ all -> 0x002e }
        goto L_0x0018;
    L_0x002e:
        r0 = move-exception;
        monitor-exit(r4);	 Catch:{ all -> 0x002e }
        throw r0;
    L_0x0031:
        r1 = r9.zzum;	 Catch:{ all -> 0x002e }
        r1 = r1.zzzo;	 Catch:{ all -> 0x002e }
        if (r1 == 0) goto L_0x0082;
    L_0x0037:
        r0 = com.google.android.gms.internal.zzfx.zzEe;	 Catch:{ all -> 0x002e }
        r0 = r0.get();	 Catch:{ all -> 0x002e }
        r0 = (java.lang.Boolean) r0;	 Catch:{ all -> 0x002e }
        r0 = r0.booleanValue();	 Catch:{ all -> 0x002e }
        if (r0 != 0) goto L_0x004b;
    L_0x0045:
        r0 = com.google.android.gms.common.util.zzs.zzyD();	 Catch:{ all -> 0x002e }
        if (r0 != 0) goto L_0x0050;
    L_0x004b:
        super.onMeasure(r10, r11);	 Catch:{ all -> 0x002e }
        monitor-exit(r4);	 Catch:{ all -> 0x002e }
        goto L_0x0018;
    L_0x0050:
        r0 = "/contentHeight";
        r1 = r9.zzlE();	 Catch:{ all -> 0x002e }
        r9.zza(r0, r1);	 Catch:{ all -> 0x002e }
        r0 = "(function() {  var height = -1;  if (document.body) { height = document.body.offsetHeight;}  else if (document.documentElement) {      height = document.documentElement.offsetHeight;  }  var url = 'gmsg://mobileads.google.com/contentHeight?';  url += 'height=' + height;  window.googleAdsJsInterface.notify(url);  })();";
        r9.zzbj(r0);	 Catch:{ all -> 0x002e }
        r0 = r9.zzYX;	 Catch:{ all -> 0x002e }
        r0 = r0.getResources();	 Catch:{ all -> 0x002e }
        r0 = r0.getDisplayMetrics();	 Catch:{ all -> 0x002e }
        r0 = r0.density;	 Catch:{ all -> 0x002e }
        r1 = android.view.View.MeasureSpec.getSize(r10);	 Catch:{ all -> 0x002e }
        r2 = r9.zzZn;	 Catch:{ all -> 0x002e }
        switch(r2) {
            case -1: goto L_0x007d;
            default: goto L_0x0073;
        };	 Catch:{ all -> 0x002e }
    L_0x0073:
        r2 = r9.zzZn;	 Catch:{ all -> 0x002e }
        r2 = (float) r2;	 Catch:{ all -> 0x002e }
        r0 = r0 * r2;
        r0 = (int) r0;	 Catch:{ all -> 0x002e }
    L_0x0078:
        r9.setMeasuredDimension(r1, r0);	 Catch:{ all -> 0x002e }
        monitor-exit(r4);	 Catch:{ all -> 0x002e }
        goto L_0x0018;
    L_0x007d:
        r0 = android.view.View.MeasureSpec.getSize(r11);	 Catch:{ all -> 0x002e }
        goto L_0x0078;
    L_0x0082:
        r1 = r9.zzum;	 Catch:{ all -> 0x002e }
        r1 = r1.zzzl;	 Catch:{ all -> 0x002e }
        if (r1 == 0) goto L_0x00a0;
    L_0x0088:
        r0 = new android.util.DisplayMetrics;	 Catch:{ all -> 0x002e }
        r0.<init>();	 Catch:{ all -> 0x002e }
        r1 = r9.zzwf;	 Catch:{ all -> 0x002e }
        r1 = r1.getDefaultDisplay();	 Catch:{ all -> 0x002e }
        r1.getMetrics(r0);	 Catch:{ all -> 0x002e }
        r1 = r0.widthPixels;	 Catch:{ all -> 0x002e }
        r0 = r0.heightPixels;	 Catch:{ all -> 0x002e }
        r9.setMeasuredDimension(r1, r0);	 Catch:{ all -> 0x002e }
        monitor-exit(r4);	 Catch:{ all -> 0x002e }
        goto L_0x0018;
    L_0x00a0:
        r2 = android.view.View.MeasureSpec.getMode(r10);	 Catch:{ all -> 0x002e }
        r3 = android.view.View.MeasureSpec.getSize(r10);	 Catch:{ all -> 0x002e }
        r5 = android.view.View.MeasureSpec.getMode(r11);	 Catch:{ all -> 0x002e }
        r1 = android.view.View.MeasureSpec.getSize(r11);	 Catch:{ all -> 0x002e }
        if (r2 == r6) goto L_0x00b4;
    L_0x00b2:
        if (r2 != r8) goto L_0x014b;
    L_0x00b4:
        r2 = r3;
    L_0x00b5:
        if (r5 == r6) goto L_0x00b9;
    L_0x00b7:
        if (r5 != r8) goto L_0x00ba;
    L_0x00b9:
        r0 = r1;
    L_0x00ba:
        r5 = r9.zzum;	 Catch:{ all -> 0x002e }
        r5 = r5.widthPixels;	 Catch:{ all -> 0x002e }
        if (r5 > r2) goto L_0x00c6;
    L_0x00c0:
        r2 = r9.zzum;	 Catch:{ all -> 0x002e }
        r2 = r2.heightPixels;	 Catch:{ all -> 0x002e }
        if (r2 <= r0) goto L_0x0135;
    L_0x00c6:
        r0 = r9.zzYX;	 Catch:{ all -> 0x002e }
        r0 = r0.getResources();	 Catch:{ all -> 0x002e }
        r0 = r0.getDisplayMetrics();	 Catch:{ all -> 0x002e }
        r0 = r0.density;	 Catch:{ all -> 0x002e }
        r2 = r9.zzum;	 Catch:{ all -> 0x002e }
        r2 = r2.widthPixels;	 Catch:{ all -> 0x002e }
        r2 = (float) r2;	 Catch:{ all -> 0x002e }
        r2 = r2 / r0;
        r2 = (int) r2;	 Catch:{ all -> 0x002e }
        r5 = r9.zzum;	 Catch:{ all -> 0x002e }
        r5 = r5.heightPixels;	 Catch:{ all -> 0x002e }
        r5 = (float) r5;	 Catch:{ all -> 0x002e }
        r5 = r5 / r0;
        r5 = (int) r5;	 Catch:{ all -> 0x002e }
        r3 = (float) r3;	 Catch:{ all -> 0x002e }
        r3 = r3 / r0;
        r3 = (int) r3;	 Catch:{ all -> 0x002e }
        r1 = (float) r1;	 Catch:{ all -> 0x002e }
        r0 = r1 / r0;
        r0 = (int) r0;	 Catch:{ all -> 0x002e }
        r1 = new java.lang.StringBuilder;	 Catch:{ all -> 0x002e }
        r6 = 103; // 0x67 float:1.44E-43 double:5.1E-322;
        r1.<init>(r6);	 Catch:{ all -> 0x002e }
        r6 = "Not enough space to show ad. Needs ";
        r1 = r1.append(r6);	 Catch:{ all -> 0x002e }
        r1 = r1.append(r2);	 Catch:{ all -> 0x002e }
        r2 = "x";
        r1 = r1.append(r2);	 Catch:{ all -> 0x002e }
        r1 = r1.append(r5);	 Catch:{ all -> 0x002e }
        r2 = " dp, but only has ";
        r1 = r1.append(r2);	 Catch:{ all -> 0x002e }
        r1 = r1.append(r3);	 Catch:{ all -> 0x002e }
        r2 = "x";
        r1 = r1.append(r2);	 Catch:{ all -> 0x002e }
        r0 = r1.append(r0);	 Catch:{ all -> 0x002e }
        r1 = " dp.";
        r0 = r0.append(r1);	 Catch:{ all -> 0x002e }
        r0 = r0.toString();	 Catch:{ all -> 0x002e }
        com.google.android.gms.internal.zzpy.zzbe(r0);	 Catch:{ all -> 0x002e }
        r0 = r9.getVisibility();	 Catch:{ all -> 0x002e }
        if (r0 == r7) goto L_0x012d;
    L_0x0129:
        r0 = 4;
        r9.setVisibility(r0);	 Catch:{ all -> 0x002e }
    L_0x012d:
        r0 = 0;
        r1 = 0;
        r9.setMeasuredDimension(r0, r1);	 Catch:{ all -> 0x002e }
    L_0x0132:
        monitor-exit(r4);	 Catch:{ all -> 0x002e }
        goto L_0x0018;
    L_0x0135:
        r0 = r9.getVisibility();	 Catch:{ all -> 0x002e }
        if (r0 == r7) goto L_0x013f;
    L_0x013b:
        r0 = 0;
        r9.setVisibility(r0);	 Catch:{ all -> 0x002e }
    L_0x013f:
        r0 = r9.zzum;	 Catch:{ all -> 0x002e }
        r0 = r0.widthPixels;	 Catch:{ all -> 0x002e }
        r1 = r9.zzum;	 Catch:{ all -> 0x002e }
        r1 = r1.heightPixels;	 Catch:{ all -> 0x002e }
        r9.setMeasuredDimension(r0, r1);	 Catch:{ all -> 0x002e }
        goto L_0x0132;
    L_0x014b:
        r2 = r0;
        goto L_0x00b5;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.zzqt.onMeasure(int, int):void");
    }

    public void onPause() {
        if (!isDestroyed()) {
            try {
                if (zzs.zzyx()) {
                    super.onPause();
                }
            } catch (Throwable e) {
                zzpy.zzb("Could not pause webview.", e);
            }
        }
    }

    public void onResume() {
        if (!isDestroyed()) {
            try {
                if (zzs.zzyx()) {
                    super.onResume();
                }
            } catch (Throwable e) {
                zzpy.zzb("Could not resume webview.", e);
            }
        }
    }

    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (zzkV().zzlo()) {
            synchronized (this.zzrN) {
                if (this.zzZl != null) {
                    this.zzZl.zzc(motionEvent);
                }
            }
        } else if (this.zzGr != null) {
            this.zzGr.zza(motionEvent);
        }
        return isDestroyed() ? false : super.onTouchEvent(motionEvent);
    }

    public void setContext(Context context) {
        this.zzYX.setBaseContext(context);
        this.zzvP.zzl(this.zzYX.zzkR());
    }

    public void setOnClickListener(OnClickListener onClickListener) {
        this.zzZr = new WeakReference(onClickListener);
        super.setOnClickListener(onClickListener);
    }

    public void setRequestedOrientation(int i) {
        synchronized (this.zzrN) {
            this.zzZf = i;
            if (this.zzZa != null) {
                this.zzZa.setRequestedOrientation(this.zzZf);
            }
        }
    }

    public void setWebViewClient(WebViewClient webViewClient) {
        super.setWebViewClient(webViewClient);
        if (webViewClient instanceof zzqq) {
            this.zzYZ = (zzqq) webViewClient;
        }
    }

    public void stopLoading() {
        if (!isDestroyed()) {
            try {
                super.stopLoading();
            } catch (Throwable e) {
                zzpy.zzb("Could not stop loading webview.", e);
            }
        }
    }

    public void zzJ(boolean z) {
        synchronized (this.zzrN) {
            this.zzZd = z;
            zzlF();
        }
    }

    public void zzK(int i) {
        if (i == 0) {
            zzlD();
        }
        zzlC();
        if (this.zzZq.zzfv() != null) {
            this.zzZq.zzfv().zzg("close_type", String.valueOf(i));
        }
        Map hashMap = new HashMap(2);
        hashMap.put("closetype", String.valueOf(i));
        hashMap.put("version", this.zztr.zzaZ);
        zza("onhide", hashMap);
    }

    public void zzK(boolean z) {
        synchronized (this.zzrN) {
            if (this.zzZa != null) {
                this.zzZa.zza(this.zzYZ.zzdz(), z);
            } else {
                this.zzZb = z;
            }
        }
    }

    public void zzL(boolean z) {
        synchronized (this.zzrN) {
            this.zzZg = z;
        }
    }

    public void zzM(boolean z) {
        synchronized (this.zzrN) {
            this.zzZm = (z ? 1 : -1) + this.zzZm;
            if (this.zzZm <= 0 && this.zzZa != null) {
                this.zzZa.zzhr();
            }
        }
    }

    public void zza(Context context, zzec com_google_android_gms_internal_zzec, zzgf com_google_android_gms_internal_zzgf) {
        synchronized (this.zzrN) {
            this.zzvP.zzkF();
            setContext(context);
            this.zzZa = null;
            this.zzum = com_google_android_gms_internal_zzec;
            this.zzZd = false;
            this.zzZb = false;
            this.zzOn = "";
            this.zzZf = -1;
            zzv.zzcL().zzm(this);
            loadUrl("about:blank");
            this.zzYZ.reset();
            setOnTouchListener(null);
            setOnClickListener(null);
            this.zzZg = true;
            this.zzZh = false;
            this.zzZi = null;
            zzd(com_google_android_gms_internal_zzgf);
            this.zzZj = false;
            this.zzZm = 0;
            zzv.zzdg().zze(this);
            zzlI();
        }
    }

    public void zza(com.google.android.gms.internal.zzcv.zza com_google_android_gms_internal_zzcv_zza) {
        synchronized (this.zzrN) {
            this.zzZj = com_google_android_gms_internal_zzcv_zza.zzxb;
        }
        zzO(com_google_android_gms_internal_zzcv_zza.zzxb);
    }

    public void zza(zzec com_google_android_gms_internal_zzec) {
        synchronized (this.zzrN) {
            this.zzum = com_google_android_gms_internal_zzec;
            requestLayout();
        }
    }

    public void zza(zzqu com_google_android_gms_internal_zzqu) {
        synchronized (this.zzrN) {
            if (this.zzZi != null) {
                zzpy.e("Attempt to create multiple AdWebViewVideoControllers.");
                return;
            }
            this.zzZi = com_google_android_gms_internal_zzqu;
        }
    }

    @TargetApi(19)
    protected void zza(String str, ValueCallback<String> valueCallback) {
        synchronized (this.zzrN) {
            if (isDestroyed()) {
                zzpy.zzbe("The webview is destroyed. Ignoring action.");
                if (valueCallback != null) {
                    valueCallback.onReceiveValue(null);
                }
            } else {
                evaluateJavascript(str, valueCallback);
            }
        }
    }

    public void zza(String str, zzhx com_google_android_gms_internal_zzhx) {
        if (this.zzYZ != null) {
            this.zzYZ.zza(str, com_google_android_gms_internal_zzhx);
        }
    }

    public void zza(String str, Map<String, ?> map) {
        try {
            zzb(str, zzv.zzcJ().zzP(map));
        } catch (JSONException e) {
            zzpy.zzbe("Could not convert parameters to JSON.");
        }
    }

    public void zza(String str, JSONObject jSONObject) {
        if (jSONObject == null) {
            jSONObject = new JSONObject();
        }
        zzi(str, jSONObject.toString());
    }

    public void zzb(zze com_google_android_gms_ads_internal_overlay_zze) {
        synchronized (this.zzrN) {
            this.zzZa = com_google_android_gms_ads_internal_overlay_zze;
        }
    }

    public void zzb(zzgs com_google_android_gms_internal_zzgs) {
        synchronized (this.zzrN) {
            this.zzZl = com_google_android_gms_internal_zzgs;
        }
    }

    void zzb(Boolean bool) {
        synchronized (this.zzrN) {
            this.zzWh = bool;
        }
        zzv.zzcN().zzb(bool);
    }

    public void zzb(String str, zzhx com_google_android_gms_internal_zzhx) {
        if (this.zzYZ != null) {
            this.zzYZ.zzb(str, com_google_android_gms_internal_zzhx);
        }
    }

    public void zzb(String str, JSONObject jSONObject) {
        if (jSONObject == null) {
            jSONObject = new JSONObject();
        }
        String jSONObject2 = jSONObject.toString();
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append("(window.AFMA_ReceiveMessage || function() {})('");
        stringBuilder.append(str);
        stringBuilder.append("'");
        stringBuilder.append(",");
        stringBuilder.append(jSONObject2);
        stringBuilder.append(");");
        String str2 = "Dispatching AFMA event: ";
        jSONObject2 = String.valueOf(stringBuilder.toString());
        zzpy.zzbc(jSONObject2.length() != 0 ? str2.concat(jSONObject2) : new String(str2));
        zzbj(stringBuilder.toString());
    }

    public zzec zzbD() {
        zzec com_google_android_gms_internal_zzec;
        synchronized (this.zzrN) {
            com_google_android_gms_internal_zzec = this.zzum;
        }
        return com_google_android_gms_internal_zzec;
    }

    public void zzbV() {
        synchronized (this.zzrN) {
            this.zzZh = true;
            if (this.zzYY != null) {
                this.zzYY.zzbV();
            }
        }
    }

    public void zzbW() {
        synchronized (this.zzrN) {
            this.zzZh = false;
            if (this.zzYY != null) {
                this.zzYY.zzbW();
            }
        }
    }

    public void zzbf(String str) {
        synchronized (this.zzrN) {
            try {
                super.loadUrl(str);
            } catch (Throwable th) {
                String valueOf = String.valueOf(th);
                zzpy.zzbe(new StringBuilder(String.valueOf(valueOf).length() + 24).append("Could not call loadUrl. ").append(valueOf).toString());
            }
        }
    }

    public void zzbg(String str) {
        synchronized (this.zzrN) {
            if (str == null) {
                str = "";
            }
            this.zzOn = str;
        }
    }

    protected void zzbi(String str) {
        synchronized (this.zzrN) {
            if (isDestroyed()) {
                zzpy.zzbe("The webview is destroyed. Ignoring action.");
            } else {
                loadUrl(str);
            }
        }
    }

    protected void zzbj(String str) {
        if (zzs.zzyF()) {
            if (zzjT() == null) {
                zzlB();
            }
            if (zzjT().booleanValue()) {
                zza(str, null);
                return;
            }
            String str2 = "javascript:";
            String valueOf = String.valueOf(str);
            zzbi(valueOf.length() != 0 ? str2.concat(valueOf) : new String(str2));
            return;
        }
        str2 = "javascript:";
        valueOf = String.valueOf(str);
        zzbi(valueOf.length() != 0 ? str2.concat(valueOf) : new String(str2));
    }

    public zzd zzbz() {
        return this.zzsz;
    }

    public void zzc(zze com_google_android_gms_ads_internal_overlay_zze) {
        synchronized (this.zzrN) {
            this.zzZs = com_google_android_gms_ads_internal_overlay_zze;
        }
    }

    public void zzhp() {
        if (this.zzZo == null) {
            zzgb.zza(this.zzZq.zzfv(), this.zzOo, "aes2");
            this.zzZo = zzgb.zzb(this.zzZq.zzfv());
            this.zzZq.zza("native:view_show", this.zzZo);
        }
        Map hashMap = new HashMap(1);
        hashMap.put("version", this.zztr.zzaZ);
        zza("onshow", hashMap);
    }

    public void zzi(String str, String str2) {
        zzbj(new StringBuilder((String.valueOf(str).length() + 3) + String.valueOf(str2).length()).append(str).append("(").append(str2).append(");").toString());
    }

    Boolean zzjT() {
        Boolean bool;
        synchronized (this.zzrN) {
            bool = this.zzWh;
        }
        return bool;
    }

    public void zzkP() {
        zzlC();
        Map hashMap = new HashMap(1);
        hashMap.put("version", this.zztr.zzaZ);
        zza("onhide", hashMap);
    }

    public void zzkQ() {
        Map hashMap = new HashMap(3);
        hashMap.put("app_muted", String.valueOf(zzv.zzcJ().zzcq()));
        hashMap.put("app_volume", String.valueOf(zzv.zzcJ().zzco()));
        hashMap.put("device_volume", String.valueOf(zzv.zzcJ().zzH(getContext())));
        zza("volume", hashMap);
    }

    public Activity zzkR() {
        return this.zzYX.zzkR();
    }

    public Context zzkS() {
        return this.zzYX.zzkS();
    }

    public zze zzkT() {
        zze com_google_android_gms_ads_internal_overlay_zze;
        synchronized (this.zzrN) {
            com_google_android_gms_ads_internal_overlay_zze = this.zzZa;
        }
        return com_google_android_gms_ads_internal_overlay_zze;
    }

    public zze zzkU() {
        zze com_google_android_gms_ads_internal_overlay_zze;
        synchronized (this.zzrN) {
            com_google_android_gms_ads_internal_overlay_zze = this.zzZs;
        }
        return com_google_android_gms_ads_internal_overlay_zze;
    }

    public zzqq zzkV() {
        return this.zzYZ;
    }

    public boolean zzkW() {
        boolean z;
        synchronized (this.zzrN) {
            z = this.zzZb;
        }
        return z;
    }

    public zzav zzkX() {
        return this.zzGr;
    }

    public zzqa zzkY() {
        return this.zztr;
    }

    public boolean zzkZ() {
        boolean z;
        synchronized (this.zzrN) {
            z = this.zzZd;
        }
        return z;
    }

    public boolean zzlA() {
        if (!zzkV().zzdz() && !zzkV().zzlo()) {
            return false;
        }
        int i;
        int i2;
        DisplayMetrics zza = zzv.zzcJ().zza(this.zzwf);
        int zzb = zzeh.zzeO().zzb(zza, zza.widthPixels);
        int zzb2 = zzeh.zzeO().zzb(zza, zza.heightPixels);
        Activity zzkR = zzkR();
        if (zzkR == null || zzkR.getWindow() == null) {
            i = zzb2;
            i2 = zzb;
        } else {
            int[] zzh = zzv.zzcJ().zzh(zzkR);
            i2 = zzeh.zzeO().zzb(zza, zzh[0]);
            i = zzeh.zzeO().zzb(zza, zzh[1]);
        }
        if (this.zzLQ == zzb && this.zzLR == zzb2 && this.zzLT == i2 && this.zzLU == i) {
            return false;
        }
        boolean z = (this.zzLQ == zzb && this.zzLR == zzb2) ? false : true;
        this.zzLQ = zzb;
        this.zzLR = zzb2;
        this.zzLT = i2;
        this.zzLU = i;
        new zzko(this).zza(zzb, zzb2, i2, i, zza.density, this.zzwf.getDefaultDisplay().getRotation());
        return z;
    }

    zzhx zzlE() {
        return new zzhx(this) {
            final /* synthetic */ zzqt zzZu;

            {
                this.zzZu = r1;
            }

            public void zza(zzqp com_google_android_gms_internal_zzqp, Map<String, String> map) {
                if (map != null) {
                    String str = (String) map.get("height");
                    if (!TextUtils.isEmpty(str)) {
                        try {
                            int parseInt = Integer.parseInt(str);
                            synchronized (this.zzZu.zzrN) {
                                if (this.zzZu.zzZn != parseInt) {
                                    this.zzZu.zzZn = parseInt;
                                    this.zzZu.requestLayout();
                                }
                            }
                        } catch (Throwable e) {
                            zzpy.zzc("Exception occurred while getting webview content height", e);
                        }
                    }
                }
            }
        };
    }

    public void zzla() {
        synchronized (this.zzrN) {
            zzpe.v("Destroying WebView!");
            zzpi.zzWR.post(new Runnable(this) {
                final /* synthetic */ zzqt zzZu;

                {
                    this.zzZu = r1;
                }

                public void run() {
                    super.destroy();
                }
            });
        }
    }

    public boolean zzlb() {
        boolean z;
        synchronized (this.zzrN) {
            z = this.zzZg;
        }
        return z;
    }

    public boolean zzlc() {
        boolean z;
        synchronized (this.zzrN) {
            z = this.zzZh;
        }
        return z;
    }

    public zzqo zzld() {
        return null;
    }

    public zzgd zzle() {
        return this.zzOo;
    }

    public zzge zzlf() {
        return this.zzZq;
    }

    public zzqu zzlg() {
        zzqu com_google_android_gms_internal_zzqu;
        synchronized (this.zzrN) {
            com_google_android_gms_internal_zzqu = this.zzZi;
        }
        return com_google_android_gms_internal_zzqu;
    }

    public boolean zzlh() {
        boolean z;
        synchronized (this.zzrN) {
            z = this.zzZm > 0;
        }
        return z;
    }

    public void zzli() {
        this.zzvP.zzkE();
    }

    public void zzlj() {
        if (this.zzZp == null) {
            this.zzZp = zzgb.zzb(this.zzZq.zzfv());
            this.zzZq.zza("native:view_load", this.zzZp);
        }
    }

    public OnClickListener zzlk() {
        return (OnClickListener) this.zzZr.get();
    }

    public zzgs zzll() {
        zzgs com_google_android_gms_internal_zzgs;
        synchronized (this.zzrN) {
            com_google_android_gms_internal_zzgs = this.zzZl;
        }
        return com_google_android_gms_internal_zzgs;
    }

    public void zzlm() {
        setBackgroundColor(0);
    }
}
