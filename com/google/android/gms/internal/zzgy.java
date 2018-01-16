package com.google.android.gms.internal;

import android.graphics.Point;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.View.OnTouchListener;
import android.view.ViewTreeObserver.OnGlobalLayoutListener;
import android.view.ViewTreeObserver.OnScrollChangedListener;
import android.widget.FrameLayout;
import android.widget.FrameLayout.LayoutParams;
import com.google.android.gms.ads.internal.zzv;
import com.google.android.gms.dynamic.zzd;
import com.google.android.gms.dynamic.zze;
import com.google.android.gms.internal.zzhb.zza;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Map;

@zzmb
public class zzgy extends zza implements OnClickListener, OnTouchListener, OnGlobalLayoutListener, OnScrollChangedListener {
    private final FrameLayout zzGI;
    private Map<String, WeakReference<View>> zzGJ = new HashMap();
    private zzgn zzGK;
    boolean zzGL = false;
    int zzGM;
    int zzGN;
    private zzgu zzGd;
    private final Object zzrN = new Object();
    private FrameLayout zzsc;

    public zzgy(FrameLayout frameLayout, FrameLayout frameLayout2) {
        this.zzGI = frameLayout;
        this.zzsc = frameLayout2;
        zzv.zzdh().zza(this.zzGI, (OnGlobalLayoutListener) this);
        zzv.zzdh().zza(this.zzGI, (OnScrollChangedListener) this);
        this.zzGI.setOnTouchListener(this);
        this.zzGI.setOnClickListener(this);
    }

    private void zzd(zzgv com_google_android_gms_internal_zzgv) {
        synchronized (this.zzrN) {
            if (this.zzGJ == null || !this.zzGJ.containsKey("2011")) {
                com_google_android_gms_internal_zzgv.zzfW();
                return;
            }
            final View view = (View) ((WeakReference) this.zzGJ.get("2011")).get();
            if (view instanceof FrameLayout) {
                com_google_android_gms_internal_zzgv.zza(view, new zzgs(this) {
                    final /* synthetic */ zzgy zzGP;

                    public void zzc(MotionEvent motionEvent) {
                        this.zzGP.onTouch(null, motionEvent);
                    }

                    public void zzfR() {
                        this.zzGP.onClick(view);
                    }
                });
                return;
            }
            com_google_android_gms_internal_zzgv.zzfW();
        }
    }

    public void destroy() {
        synchronized (this.zzrN) {
            if (this.zzsc != null) {
                this.zzsc.removeAllViews();
            }
            this.zzsc = null;
            this.zzGJ = null;
            this.zzGK = null;
            this.zzGd = null;
        }
    }

    int getMeasuredHeight() {
        return this.zzGI.getMeasuredHeight();
    }

    int getMeasuredWidth() {
        return this.zzGI.getMeasuredWidth();
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void onClick(android.view.View r8) {
        /*
        r7 = this;
        r6 = r7.zzrN;
        monitor-enter(r6);
        r0 = r7.zzGd;	 Catch:{ all -> 0x0058 }
        if (r0 != 0) goto L_0x0009;
    L_0x0007:
        monitor-exit(r6);	 Catch:{ all -> 0x0058 }
    L_0x0008:
        return;
    L_0x0009:
        r3 = new org.json.JSONObject;	 Catch:{ all -> 0x0058 }
        r3.<init>();	 Catch:{ all -> 0x0058 }
        r0 = "x";
        r1 = r7.zzGM;	 Catch:{ JSONException -> 0x005b }
        r1 = r7.zzB(r1);	 Catch:{ JSONException -> 0x005b }
        r3.put(r0, r1);	 Catch:{ JSONException -> 0x005b }
        r0 = "y";
        r1 = r7.zzGN;	 Catch:{ JSONException -> 0x005b }
        r1 = r7.zzB(r1);	 Catch:{ JSONException -> 0x005b }
        r3.put(r0, r1);	 Catch:{ JSONException -> 0x005b }
    L_0x0024:
        r0 = r7.zzGK;	 Catch:{ all -> 0x0058 }
        if (r0 == 0) goto L_0x006f;
    L_0x0028:
        r0 = r7.zzGK;	 Catch:{ all -> 0x0058 }
        r0 = r0.zzfJ();	 Catch:{ all -> 0x0058 }
        r0 = r0.equals(r8);	 Catch:{ all -> 0x0058 }
        if (r0 == 0) goto L_0x006f;
    L_0x0034:
        r0 = r7.zzGd;	 Catch:{ all -> 0x0058 }
        r0 = r0 instanceof com.google.android.gms.internal.zzgt;	 Catch:{ all -> 0x0058 }
        if (r0 == 0) goto L_0x0062;
    L_0x003a:
        r0 = r7.zzGd;	 Catch:{ all -> 0x0058 }
        r0 = (com.google.android.gms.internal.zzgt) r0;	 Catch:{ all -> 0x0058 }
        r0 = r0.zzfT();	 Catch:{ all -> 0x0058 }
        if (r0 == 0) goto L_0x0062;
    L_0x0044:
        r0 = r7.zzGd;	 Catch:{ all -> 0x0058 }
        r0 = (com.google.android.gms.internal.zzgt) r0;	 Catch:{ all -> 0x0058 }
        r0 = r0.zzfT();	 Catch:{ all -> 0x0058 }
        r2 = "1007";
        r4 = r7.zzGJ;	 Catch:{ all -> 0x0058 }
        r5 = r7.zzGI;	 Catch:{ all -> 0x0058 }
        r1 = r8;
        r0.zza(r1, r2, r3, r4, r5);	 Catch:{ all -> 0x0058 }
    L_0x0056:
        monitor-exit(r6);	 Catch:{ all -> 0x0058 }
        goto L_0x0008;
    L_0x0058:
        r0 = move-exception;
        monitor-exit(r6);	 Catch:{ all -> 0x0058 }
        throw r0;
    L_0x005b:
        r0 = move-exception;
        r0 = "Unable to get click location";
        com.google.android.gms.internal.zzpy.zzbe(r0);	 Catch:{ all -> 0x0058 }
        goto L_0x0024;
    L_0x0062:
        r0 = r7.zzGd;	 Catch:{ all -> 0x0058 }
        r2 = "1007";
        r4 = r7.zzGJ;	 Catch:{ all -> 0x0058 }
        r5 = r7.zzGI;	 Catch:{ all -> 0x0058 }
        r1 = r8;
        r0.zza(r1, r2, r3, r4, r5);	 Catch:{ all -> 0x0058 }
        goto L_0x0056;
    L_0x006f:
        r0 = r7.zzGd;	 Catch:{ all -> 0x0058 }
        r1 = r7.zzGJ;	 Catch:{ all -> 0x0058 }
        r2 = r7.zzGI;	 Catch:{ all -> 0x0058 }
        r0.zza(r8, r1, r3, r2);	 Catch:{ all -> 0x0058 }
        goto L_0x0056;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.zzgy.onClick(android.view.View):void");
    }

    public void onGlobalLayout() {
        synchronized (this.zzrN) {
            if (this.zzGL) {
                int measuredWidth = getMeasuredWidth();
                int measuredHeight = getMeasuredHeight();
                if (!(measuredWidth == 0 || measuredHeight == 0 || this.zzsc == null)) {
                    this.zzsc.setLayoutParams(new LayoutParams(measuredWidth, measuredHeight));
                    this.zzGL = false;
                }
            }
            if (this.zzGd != null) {
                this.zzGd.zzd(this.zzGI, this.zzGJ);
            }
        }
    }

    public void onScrollChanged() {
        synchronized (this.zzrN) {
            if (this.zzGd != null) {
                this.zzGd.zzd(this.zzGI, this.zzGJ);
            }
        }
    }

    public boolean onTouch(View view, MotionEvent motionEvent) {
        synchronized (this.zzrN) {
            if (this.zzGd == null) {
            } else {
                Point zze = zze(motionEvent);
                this.zzGM = zze.x;
                this.zzGN = zze.y;
                MotionEvent obtain = MotionEvent.obtain(motionEvent);
                obtain.setLocation((float) zze.x, (float) zze.y);
                this.zzGd.zzd(obtain);
                obtain.recycle();
            }
        }
        return false;
    }

    int zzB(int i) {
        return zzeh.zzeO().zzc(this.zzGd.getContext(), i);
    }

    public zzd zzU(String str) {
        Object obj = null;
        synchronized (this.zzrN) {
            if (this.zzGJ == null) {
                return null;
            }
            WeakReference weakReference = (WeakReference) this.zzGJ.get(str);
            if (weakReference != null) {
                View view = (View) weakReference.get();
            }
            zzd zzA = zze.zzA(obj);
            return zzA;
        }
    }

    zzgn zzc(zzgv com_google_android_gms_internal_zzgv) {
        return com_google_android_gms_internal_zzgv.zza((OnClickListener) this);
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void zzc(java.lang.String r5, com.google.android.gms.dynamic.zzd r6) {
        /*
        r4 = this;
        r0 = com.google.android.gms.dynamic.zze.zzE(r6);
        r0 = (android.view.View) r0;
        r1 = r4.zzrN;
        monitor-enter(r1);
        r2 = r4.zzGJ;	 Catch:{ all -> 0x0018 }
        if (r2 != 0) goto L_0x000f;
    L_0x000d:
        monitor-exit(r1);	 Catch:{ all -> 0x0018 }
    L_0x000e:
        return;
    L_0x000f:
        if (r0 != 0) goto L_0x001b;
    L_0x0011:
        r0 = r4.zzGJ;	 Catch:{ all -> 0x0018 }
        r0.remove(r5);	 Catch:{ all -> 0x0018 }
    L_0x0016:
        monitor-exit(r1);	 Catch:{ all -> 0x0018 }
        goto L_0x000e;
    L_0x0018:
        r0 = move-exception;
        monitor-exit(r1);	 Catch:{ all -> 0x0018 }
        throw r0;
    L_0x001b:
        r2 = r4.zzGJ;	 Catch:{ all -> 0x0018 }
        r3 = new java.lang.ref.WeakReference;	 Catch:{ all -> 0x0018 }
        r3.<init>(r0);	 Catch:{ all -> 0x0018 }
        r2.put(r5, r3);	 Catch:{ all -> 0x0018 }
        r0.setOnTouchListener(r4);	 Catch:{ all -> 0x0018 }
        r2 = 1;
        r0.setClickable(r2);	 Catch:{ all -> 0x0018 }
        r0.setOnClickListener(r4);	 Catch:{ all -> 0x0018 }
        goto L_0x0016;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.zzgy.zzc(java.lang.String, com.google.android.gms.dynamic.zzd):void");
    }

    Point zze(MotionEvent motionEvent) {
        int[] iArr = new int[2];
        this.zzGI.getLocationOnScreen(iArr);
        return new Point((int) (motionEvent.getRawX() - ((float) iArr[0])), (int) (motionEvent.getRawY() - ((float) iArr[1])));
    }

    public void zze(zzd com_google_android_gms_dynamic_zzd) {
        synchronized (this.zzrN) {
            zzj(null);
            Object zzE = zze.zzE(com_google_android_gms_dynamic_zzd);
            if (zzE instanceof zzgv) {
                if (this.zzsc != null) {
                    this.zzsc.setLayoutParams(new LayoutParams(0, 0));
                    this.zzGI.requestLayout();
                }
                this.zzGL = true;
                final zzgv com_google_android_gms_internal_zzgv = (zzgv) zzE;
                if (this.zzGd != null && ((Boolean) zzfx.zzDV.get()).booleanValue()) {
                    this.zzGd.zzc(this.zzGI, this.zzGJ);
                }
                if ((this.zzGd instanceof zzgt) && ((zzgt) this.zzGd).zzfS()) {
                    ((zzgt) this.zzGd).zzc(com_google_android_gms_internal_zzgv);
                } else {
                    this.zzGd = com_google_android_gms_internal_zzgv;
                    if (com_google_android_gms_internal_zzgv instanceof zzgt) {
                        ((zzgt) com_google_android_gms_internal_zzgv).zzc(null);
                    }
                }
                if (((Boolean) zzfx.zzDV.get()).booleanValue()) {
                    this.zzsc.setClickable(false);
                }
                this.zzsc.removeAllViews();
                this.zzGK = zzc(com_google_android_gms_internal_zzgv);
                if (this.zzGK != null) {
                    if (this.zzGJ != null) {
                        this.zzGJ.put("1007", new WeakReference(this.zzGK.zzfJ()));
                    }
                    this.zzsc.addView(this.zzGK);
                }
                com_google_android_gms_internal_zzgv.zza(this.zzGI, this.zzGJ, (OnTouchListener) this, (OnClickListener) this);
                zzpi.zzWR.post(new Runnable(this) {
                    final /* synthetic */ zzgy zzGP;

                    public void run() {
                        zzqp zzfU = com_google_android_gms_internal_zzgv.zzfU();
                        if (!(zzfU == null || this.zzGP.zzsc == null)) {
                            this.zzGP.zzsc.addView(zzfU.getView());
                        }
                        if (!(com_google_android_gms_internal_zzgv instanceof zzgt)) {
                            this.zzGP.zzd(com_google_android_gms_internal_zzgv);
                        }
                    }
                });
                zzj(this.zzGI);
                return;
            }
            zzpy.zzbe("Not an instance of native engine. This is most likely a transient error");
        }
    }

    void zzj(View view) {
        if (this.zzGd != null) {
            zzgu zzfT = this.zzGd instanceof zzgt ? ((zzgt) this.zzGd).zzfT() : this.zzGd;
            if (zzfT != null) {
                zzfT.zzj(view);
            }
        }
    }
}
