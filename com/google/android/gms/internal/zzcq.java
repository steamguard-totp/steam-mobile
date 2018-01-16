package com.google.android.gms.internal;

import android.app.KeyguardManager;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.graphics.Rect;
import android.os.PowerManager;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.view.View;
import android.view.ViewTreeObserver;
import android.view.ViewTreeObserver.OnGlobalLayoutListener;
import android.view.ViewTreeObserver.OnScrollChangedListener;
import android.view.WindowManager;
import com.google.android.gms.ads.internal.zzv;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.UUID;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

@zzmb
public class zzcq implements OnGlobalLayoutListener, OnScrollChangedListener {
    protected final Object zzrN = new Object();
    private boolean zzui = false;
    private zzpt zzvK;
    private final Context zzvZ;
    private final WeakReference<zzov> zzwb;
    private WeakReference<ViewTreeObserver> zzwc;
    private final zzcx zzwd;
    protected final zzco zzwe;
    private final WindowManager zzwf;
    private final PowerManager zzwg;
    private final KeyguardManager zzwh;
    private zzcr zzwi;
    private boolean zzwj;
    private boolean zzwk = false;
    private boolean zzwl;
    private boolean zzwm;
    private boolean zzwn;
    BroadcastReceiver zzwo;
    private final HashSet<Object> zzwp = new HashSet();
    private final HashSet<zzcu> zzwq = new HashSet();

    public static class zza implements zzcx {
        private WeakReference<zzgu> zzws;

        public zza(zzgu com_google_android_gms_internal_zzgu) {
            this.zzws = new WeakReference(com_google_android_gms_internal_zzgu);
        }

        public View zzdO() {
            zzgu com_google_android_gms_internal_zzgu = (zzgu) this.zzws.get();
            return com_google_android_gms_internal_zzgu != null ? com_google_android_gms_internal_zzgu.zzfV() : null;
        }

        public boolean zzdP() {
            return this.zzws.get() == null;
        }

        public zzcx zzdQ() {
            return new zzb((zzgu) this.zzws.get());
        }
    }

    public static class zzb implements zzcx {
        private zzgu zzwt;

        public zzb(zzgu com_google_android_gms_internal_zzgu) {
            this.zzwt = com_google_android_gms_internal_zzgu;
        }

        public View zzdO() {
            return this.zzwt != null ? this.zzwt.zzfV() : null;
        }

        public boolean zzdP() {
            return this.zzwt == null;
        }

        public zzcx zzdQ() {
            return this;
        }
    }

    public static class zzc implements zzcx {
        private final View mView;
        private final zzov zzwu;

        public zzc(View view, zzov com_google_android_gms_internal_zzov) {
            this.mView = view;
            this.zzwu = com_google_android_gms_internal_zzov;
        }

        public View zzdO() {
            return this.mView;
        }

        public boolean zzdP() {
            return this.zzwu == null || this.mView == null;
        }

        public zzcx zzdQ() {
            return this;
        }
    }

    public static class zzd implements zzcx {
        private final WeakReference<View> zzwv;
        private final WeakReference<zzov> zzww;

        public zzd(View view, zzov com_google_android_gms_internal_zzov) {
            this.zzwv = new WeakReference(view);
            this.zzww = new WeakReference(com_google_android_gms_internal_zzov);
        }

        public View zzdO() {
            return (View) this.zzwv.get();
        }

        public boolean zzdP() {
            return this.zzwv.get() == null || this.zzww.get() == null;
        }

        public zzcx zzdQ() {
            return new zzc((View) this.zzwv.get(), (zzov) this.zzww.get());
        }
    }

    public zzcq(Context context, zzec com_google_android_gms_internal_zzec, zzov com_google_android_gms_internal_zzov, zzqa com_google_android_gms_internal_zzqa, zzcx com_google_android_gms_internal_zzcx) {
        this.zzwb = new WeakReference(com_google_android_gms_internal_zzov);
        this.zzwd = com_google_android_gms_internal_zzcx;
        this.zzwc = new WeakReference(null);
        this.zzwl = true;
        this.zzwn = false;
        this.zzvK = new zzpt(200);
        this.zzwe = new zzco(UUID.randomUUID().toString(), com_google_android_gms_internal_zzqa, com_google_android_gms_internal_zzec.zzzk, com_google_android_gms_internal_zzov.zzVp, com_google_android_gms_internal_zzov.zzdz(), com_google_android_gms_internal_zzec.zzzn);
        this.zzwf = (WindowManager) context.getSystemService("window");
        this.zzwg = (PowerManager) context.getApplicationContext().getSystemService("power");
        this.zzwh = (KeyguardManager) context.getSystemService("keyguard");
        this.zzvZ = context;
    }

    protected void destroy() {
        synchronized (this.zzrN) {
            zzdH();
            zzdC();
            this.zzwl = false;
            zzdE();
            zzdJ();
        }
    }

    boolean isScreenOn() {
        return this.zzwg.isScreenOn();
    }

    public void onGlobalLayout() {
        zzk(2);
    }

    public void onScrollChanged() {
        zzk(1);
    }

    public void pause() {
        synchronized (this.zzrN) {
            this.zzui = true;
            zzk(3);
        }
    }

    public void resume() {
        synchronized (this.zzrN) {
            this.zzui = false;
            zzk(3);
        }
    }

    public void stop() {
        synchronized (this.zzrN) {
            this.zzwk = true;
            zzk(3);
        }
    }

    protected int zza(int i, DisplayMetrics displayMetrics) {
        return (int) (((float) i) / displayMetrics.density);
    }

    JSONObject zza(JSONObject jSONObject) throws JSONException {
        JSONArray jSONArray = new JSONArray();
        JSONObject jSONObject2 = new JSONObject();
        jSONArray.put(jSONObject);
        jSONObject2.put("units", jSONArray);
        return jSONObject2;
    }

    protected void zza(View view, Map<String, String> map) {
        zzk(3);
    }

    public void zza(zzcr com_google_android_gms_internal_zzcr) {
        synchronized (this.zzrN) {
            this.zzwi = com_google_android_gms_internal_zzcr;
        }
    }

    public void zza(zzcu com_google_android_gms_internal_zzcu) {
        if (this.zzwq.isEmpty()) {
            zzdB();
            zzk(3);
        }
        this.zzwq.add(com_google_android_gms_internal_zzcu);
        try {
            com_google_android_gms_internal_zzcu.zzc(zza(zzd(this.zzwd.zzdO())), false);
        } catch (Throwable e) {
            zzpy.zzb("Skipping measurement update for new client.", e);
        }
    }

    void zza(zzcu com_google_android_gms_internal_zzcu, Map<String, String> map) {
        String str = "Received request to untrack: ";
        String valueOf = String.valueOf(this.zzwe.zzdy());
        zzpy.zzbc(valueOf.length() != 0 ? str.concat(valueOf) : new String(str));
        zzb(com_google_android_gms_internal_zzcu);
    }

    protected void zza(JSONObject jSONObject, boolean z) {
        try {
            zzb(zza(jSONObject), z);
        } catch (Throwable th) {
            zzpy.zzb("Skipping active view message.", th);
        }
    }

    public void zzb(zzcu com_google_android_gms_internal_zzcu) {
        this.zzwq.remove(com_google_android_gms_internal_zzcu);
        com_google_android_gms_internal_zzcu.zzdS();
        if (this.zzwq.isEmpty()) {
            destroy();
        }
    }

    void zzb(zzqp com_google_android_gms_internal_zzqp, Map<String, String> map) {
        zza(com_google_android_gms_internal_zzqp.getView(), (Map) map);
    }

    protected void zzb(JSONObject jSONObject, boolean z) {
        Iterator it = new ArrayList(this.zzwq).iterator();
        while (it.hasNext()) {
            ((zzcu) it.next()).zzc(jSONObject, z);
        }
    }

    boolean zzb(Map<String, String> map) {
        if (map == null) {
            return false;
        }
        String str = (String) map.get("hashCode");
        boolean z = !TextUtils.isEmpty(str) && str.equals(this.zzwe.zzdy());
        return z;
    }

    void zzc(Map<String, String> map) {
        if (map.containsKey("isVisible")) {
            boolean z = "1".equals(map.get("isVisible")) || "true".equals(map.get("isVisible"));
            zzj(z);
        }
    }

    protected JSONObject zzd(View view) throws JSONException {
        if (view == null) {
            return zzdL();
        }
        boolean isAttachedToWindow = zzv.zzcL().isAttachedToWindow(view);
        int[] iArr = new int[2];
        int[] iArr2 = new int[2];
        try {
            view.getLocationOnScreen(iArr);
            view.getLocationInWindow(iArr2);
        } catch (Throwable e) {
            zzpy.zzb("Failure getting view location.", e);
        }
        DisplayMetrics displayMetrics = view.getContext().getResources().getDisplayMetrics();
        Rect rect = new Rect();
        rect.left = iArr[0];
        rect.top = iArr[1];
        rect.right = rect.left + view.getWidth();
        rect.bottom = rect.top + view.getHeight();
        Rect rect2 = new Rect();
        rect2.right = this.zzwf.getDefaultDisplay().getWidth();
        rect2.bottom = this.zzwf.getDefaultDisplay().getHeight();
        Rect rect3 = new Rect();
        boolean globalVisibleRect = view.getGlobalVisibleRect(rect3, null);
        Rect rect4 = new Rect();
        boolean localVisibleRect = view.getLocalVisibleRect(rect4);
        Rect rect5 = new Rect();
        view.getHitRect(rect5);
        JSONObject zzdI = zzdI();
        zzdI.put("windowVisibility", view.getWindowVisibility()).put("isAttachedToWindow", isAttachedToWindow).put("viewBox", new JSONObject().put("top", zza(rect2.top, displayMetrics)).put("bottom", zza(rect2.bottom, displayMetrics)).put("left", zza(rect2.left, displayMetrics)).put("right", zza(rect2.right, displayMetrics))).put("adBox", new JSONObject().put("top", zza(rect.top, displayMetrics)).put("bottom", zza(rect.bottom, displayMetrics)).put("left", zza(rect.left, displayMetrics)).put("right", zza(rect.right, displayMetrics))).put("globalVisibleBox", new JSONObject().put("top", zza(rect3.top, displayMetrics)).put("bottom", zza(rect3.bottom, displayMetrics)).put("left", zza(rect3.left, displayMetrics)).put("right", zza(rect3.right, displayMetrics))).put("globalVisibleBoxVisible", globalVisibleRect).put("localVisibleBox", new JSONObject().put("top", zza(rect4.top, displayMetrics)).put("bottom", zza(rect4.bottom, displayMetrics)).put("left", zza(rect4.left, displayMetrics)).put("right", zza(rect4.right, displayMetrics))).put("localVisibleBoxVisible", localVisibleRect).put("hitBox", new JSONObject().put("top", zza(rect5.top, displayMetrics)).put("bottom", zza(rect5.bottom, displayMetrics)).put("left", zza(rect5.left, displayMetrics)).put("right", zza(rect5.right, displayMetrics))).put("screenDensity", (double) displayMetrics.density).put("isVisible", zzv.zzcJ().zza(view, this.zzwg, this.zzwh));
        return zzdI;
    }

    protected void zzdB() {
        synchronized (this.zzrN) {
            if (this.zzwo != null) {
                return;
            }
            IntentFilter intentFilter = new IntentFilter();
            intentFilter.addAction("android.intent.action.SCREEN_ON");
            intentFilter.addAction("android.intent.action.SCREEN_OFF");
            this.zzwo = new BroadcastReceiver(this) {
                final /* synthetic */ zzcq zzwr;

                {
                    this.zzwr = r1;
                }

                public void onReceive(Context context, Intent intent) {
                    this.zzwr.zzk(3);
                }
            };
            this.zzvZ.registerReceiver(this.zzwo, intentFilter);
        }
    }

    protected void zzdC() {
        synchronized (this.zzrN) {
            if (this.zzwo != null) {
                try {
                    this.zzvZ.unregisterReceiver(this.zzwo);
                } catch (Throwable e) {
                    zzpy.zzb("Failed trying to unregister the receiver", e);
                } catch (Throwable e2) {
                    zzv.zzcN().zza(e2, "ActiveViewUnit.stopScreenStatusMonitoring");
                }
                this.zzwo = null;
            }
        }
    }

    public void zzdD() {
        synchronized (this.zzrN) {
            if (this.zzwl) {
                this.zzwm = true;
                try {
                    zza(zzdM(), true);
                } catch (Throwable e) {
                    zzpy.zzb("JSON failure while processing active view data.", e);
                } catch (Throwable e2) {
                    zzpy.zzb("Failure while processing active view data.", e2);
                }
                String str = "Untracking ad unit: ";
                String valueOf = String.valueOf(this.zzwe.zzdy());
                zzpy.zzbc(valueOf.length() != 0 ? str.concat(valueOf) : new String(str));
            }
        }
    }

    protected void zzdE() {
        if (this.zzwi != null) {
            this.zzwi.zza(this);
        }
    }

    public boolean zzdF() {
        boolean z;
        synchronized (this.zzrN) {
            z = this.zzwl;
        }
        return z;
    }

    protected void zzdG() {
        View zzdO = this.zzwd.zzdQ().zzdO();
        if (zzdO != null) {
            ViewTreeObserver viewTreeObserver = (ViewTreeObserver) this.zzwc.get();
            ViewTreeObserver viewTreeObserver2 = zzdO.getViewTreeObserver();
            if (viewTreeObserver2 != viewTreeObserver) {
                zzdH();
                if (!this.zzwj || (viewTreeObserver != null && viewTreeObserver.isAlive())) {
                    this.zzwj = true;
                    viewTreeObserver2.addOnScrollChangedListener(this);
                    viewTreeObserver2.addOnGlobalLayoutListener(this);
                }
                this.zzwc = new WeakReference(viewTreeObserver2);
            }
        }
    }

    protected void zzdH() {
        ViewTreeObserver viewTreeObserver = (ViewTreeObserver) this.zzwc.get();
        if (viewTreeObserver != null && viewTreeObserver.isAlive()) {
            viewTreeObserver.removeOnScrollChangedListener(this);
            viewTreeObserver.removeGlobalOnLayoutListener(this);
        }
    }

    protected JSONObject zzdI() throws JSONException {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("afmaVersion", this.zzwe.zzdw()).put("activeViewJSON", this.zzwe.zzdx()).put("timestamp", zzv.zzcP().elapsedRealtime()).put("adFormat", this.zzwe.zzdv()).put("hashCode", this.zzwe.zzdy()).put("isMraid", this.zzwe.zzdz()).put("isStopped", this.zzwk).put("isPaused", this.zzui).put("isScreenOn", isScreenOn()).put("isNative", this.zzwe.zzdA()).put("appMuted", zzv.zzcJ().zzcq()).put("appVolume", (double) zzv.zzcJ().zzco()).put("deviceVolume", (double) zzv.zzcJ().zzH(this.zzvZ));
        return jSONObject;
    }

    protected void zzdJ() {
        Iterator it = new ArrayList(this.zzwq).iterator();
        while (it.hasNext()) {
            zzb((zzcu) it.next());
        }
    }

    protected boolean zzdK() {
        Iterator it = this.zzwq.iterator();
        while (it.hasNext()) {
            if (((zzcu) it.next()).zzdR()) {
                return true;
            }
        }
        return false;
    }

    protected JSONObject zzdL() throws JSONException {
        return zzdI().put("isAttachedToWindow", false).put("isScreenOn", isScreenOn()).put("isVisible", false);
    }

    protected JSONObject zzdM() throws JSONException {
        JSONObject zzdI = zzdI();
        zzdI.put("doneReasonCode", "u");
        return zzdI;
    }

    public zzco zzdN() {
        return this.zzwe;
    }

    protected void zzj(boolean z) {
        Iterator it = this.zzwp.iterator();
        while (it.hasNext()) {
            it.next();
        }
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    protected void zzk(int r8) {
        /*
        r7 = this;
        r0 = 0;
        r1 = 1;
        r3 = r7.zzrN;
        monitor-enter(r3);
        r2 = r7.zzdK();	 Catch:{ all -> 0x0041 }
        if (r2 == 0) goto L_0x000f;
    L_0x000b:
        r2 = r7.zzwl;	 Catch:{ all -> 0x0041 }
        if (r2 != 0) goto L_0x0011;
    L_0x000f:
        monitor-exit(r3);	 Catch:{ all -> 0x0041 }
    L_0x0010:
        return;
    L_0x0011:
        r2 = r7.zzwd;	 Catch:{ all -> 0x0041 }
        r4 = r2.zzdO();	 Catch:{ all -> 0x0041 }
        if (r4 == 0) goto L_0x0044;
    L_0x0019:
        r2 = com.google.android.gms.ads.internal.zzv.zzcJ();	 Catch:{ all -> 0x0041 }
        r5 = r7.zzwg;	 Catch:{ all -> 0x0041 }
        r6 = r7.zzwh;	 Catch:{ all -> 0x0041 }
        r2 = r2.zza(r4, r5, r6);	 Catch:{ all -> 0x0041 }
        if (r2 == 0) goto L_0x0044;
    L_0x0027:
        r2 = new android.graphics.Rect;	 Catch:{ all -> 0x0041 }
        r2.<init>();	 Catch:{ all -> 0x0041 }
        r5 = 0;
        r2 = r4.getGlobalVisibleRect(r2, r5);	 Catch:{ all -> 0x0041 }
        if (r2 == 0) goto L_0x0044;
    L_0x0033:
        r2 = r1;
    L_0x0034:
        r5 = r7.zzwd;	 Catch:{ all -> 0x0041 }
        r5 = r5.zzdP();	 Catch:{ all -> 0x0041 }
        if (r5 == 0) goto L_0x0046;
    L_0x003c:
        r7.zzdD();	 Catch:{ all -> 0x0041 }
        monitor-exit(r3);	 Catch:{ all -> 0x0041 }
        goto L_0x0010;
    L_0x0041:
        r0 = move-exception;
        monitor-exit(r3);	 Catch:{ all -> 0x0041 }
        throw r0;
    L_0x0044:
        r2 = r0;
        goto L_0x0034;
    L_0x0046:
        if (r8 != r1) goto L_0x0049;
    L_0x0048:
        r0 = r1;
    L_0x0049:
        if (r0 == 0) goto L_0x0059;
    L_0x004b:
        r0 = r7.zzvK;	 Catch:{ all -> 0x0041 }
        r0 = r0.tryAcquire();	 Catch:{ all -> 0x0041 }
        if (r0 != 0) goto L_0x0059;
    L_0x0053:
        r0 = r7.zzwn;	 Catch:{ all -> 0x0041 }
        if (r2 != r0) goto L_0x0059;
    L_0x0057:
        monitor-exit(r3);	 Catch:{ all -> 0x0041 }
        goto L_0x0010;
    L_0x0059:
        if (r2 != 0) goto L_0x0063;
    L_0x005b:
        r0 = r7.zzwn;	 Catch:{ all -> 0x0041 }
        if (r0 != 0) goto L_0x0063;
    L_0x005f:
        if (r8 != r1) goto L_0x0063;
    L_0x0061:
        monitor-exit(r3);	 Catch:{ all -> 0x0041 }
        goto L_0x0010;
    L_0x0063:
        r0 = r7.zzd(r4);	 Catch:{ JSONException -> 0x007c, RuntimeException -> 0x0075 }
        r1 = 0;
        r7.zza(r0, r1);	 Catch:{ JSONException -> 0x007c, RuntimeException -> 0x0075 }
        r7.zzwn = r2;	 Catch:{ JSONException -> 0x007c, RuntimeException -> 0x0075 }
    L_0x006d:
        r7.zzdG();	 Catch:{ all -> 0x0041 }
        r7.zzdE();	 Catch:{ all -> 0x0041 }
        monitor-exit(r3);	 Catch:{ all -> 0x0041 }
        goto L_0x0010;
    L_0x0075:
        r0 = move-exception;
    L_0x0076:
        r1 = "Active view update failed.";
        com.google.android.gms.internal.zzpy.zza(r1, r0);	 Catch:{ all -> 0x0041 }
        goto L_0x006d;
    L_0x007c:
        r0 = move-exception;
        goto L_0x0076;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.zzcq.zzk(int):void");
    }
}
