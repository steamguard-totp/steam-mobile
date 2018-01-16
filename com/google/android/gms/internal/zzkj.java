package com.google.android.gms.internal;

import android.app.Activity;
import android.text.TextUtils;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.PopupWindow;
import android.widget.RelativeLayout;
import com.google.android.gms.ads.internal.zzv;
import com.google.android.gms.common.util.zzf;
import java.util.Map;
import java.util.Set;

@zzmb
public class zzkj extends zzko {
    static final Set<String> zzLq = zzf.zzc("top-left", "top-right", "top-center", "center", "bottom-left", "bottom-right", "bottom-center");
    private final zzqp zzGt;
    private PopupWindow zzLA;
    private RelativeLayout zzLB;
    private ViewGroup zzLC;
    private final Activity zzLg;
    private String zzLr = "top-right";
    private boolean zzLs = true;
    private int zzLt = 0;
    private int zzLu = 0;
    private int zzLv = 0;
    private int zzLw = 0;
    private ImageView zzLx;
    private LinearLayout zzLy;
    private zzkp zzLz;
    private int zzrG = -1;
    private int zzrH = -1;
    private final Object zzrN = new Object();
    private zzec zzum;

    public zzkj(zzqp com_google_android_gms_internal_zzqp, zzkp com_google_android_gms_internal_zzkp) {
        super(com_google_android_gms_internal_zzqp, "resize");
        this.zzGt = com_google_android_gms_internal_zzqp;
        this.zzLg = com_google_android_gms_internal_zzqp.zzkR();
        this.zzLz = com_google_android_gms_internal_zzkp;
    }

    private int[] zzgQ() {
        if (!zzgS()) {
            return null;
        }
        if (this.zzLs) {
            return new int[]{this.zzLt + this.zzLv, this.zzLu + this.zzLw};
        }
        int[] zzi = zzv.zzcJ().zzi(this.zzLg);
        int[] zzk = zzv.zzcJ().zzk(this.zzLg);
        int i = zzi[0];
        int i2 = this.zzLt + this.zzLv;
        int i3 = this.zzLu + this.zzLw;
        if (i2 < 0) {
            i2 = 0;
        } else if (this.zzrG + i2 > i) {
            i2 = i - this.zzrG;
        }
        if (i3 < zzk[0]) {
            i3 = zzk[0];
        } else if (this.zzrH + i3 > zzk[1]) {
            i3 = zzk[1] - this.zzrH;
        }
        return new int[]{i2, i3};
    }

    private void zzj(Map<String, String> map) {
        if (!TextUtils.isEmpty((CharSequence) map.get("width"))) {
            this.zzrG = zzv.zzcJ().zzaW((String) map.get("width"));
        }
        if (!TextUtils.isEmpty((CharSequence) map.get("height"))) {
            this.zzrH = zzv.zzcJ().zzaW((String) map.get("height"));
        }
        if (!TextUtils.isEmpty((CharSequence) map.get("offsetX"))) {
            this.zzLv = zzv.zzcJ().zzaW((String) map.get("offsetX"));
        }
        if (!TextUtils.isEmpty((CharSequence) map.get("offsetY"))) {
            this.zzLw = zzv.zzcJ().zzaW((String) map.get("offsetY"));
        }
        if (!TextUtils.isEmpty((CharSequence) map.get("allowOffscreen"))) {
            this.zzLs = Boolean.parseBoolean((String) map.get("allowOffscreen"));
        }
        String str = (String) map.get("customClosePosition");
        if (!TextUtils.isEmpty(str)) {
            this.zzLr = str;
        }
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void execute(java.util.Map<java.lang.String, java.lang.String> r13) {
        /*
        r12 = this;
        r4 = -1;
        r5 = 1;
        r3 = 0;
        r6 = r12.zzrN;
        monitor-enter(r6);
        r1 = r12.zzLg;	 Catch:{ all -> 0x0020 }
        if (r1 != 0) goto L_0x0011;
    L_0x000a:
        r1 = "Not an activity context. Cannot resize.";
        r12.zzay(r1);	 Catch:{ all -> 0x0020 }
        monitor-exit(r6);	 Catch:{ all -> 0x0020 }
    L_0x0010:
        return;
    L_0x0011:
        r1 = r12.zzGt;	 Catch:{ all -> 0x0020 }
        r1 = r1.zzbD();	 Catch:{ all -> 0x0020 }
        if (r1 != 0) goto L_0x0023;
    L_0x0019:
        r1 = "Webview is not yet available, size is not set.";
        r12.zzay(r1);	 Catch:{ all -> 0x0020 }
        monitor-exit(r6);	 Catch:{ all -> 0x0020 }
        goto L_0x0010;
    L_0x0020:
        r1 = move-exception;
        monitor-exit(r6);	 Catch:{ all -> 0x0020 }
        throw r1;
    L_0x0023:
        r1 = r12.zzGt;	 Catch:{ all -> 0x0020 }
        r1 = r1.zzbD();	 Catch:{ all -> 0x0020 }
        r1 = r1.zzzl;	 Catch:{ all -> 0x0020 }
        if (r1 == 0) goto L_0x0034;
    L_0x002d:
        r1 = "Is interstitial. Cannot resize an interstitial.";
        r12.zzay(r1);	 Catch:{ all -> 0x0020 }
        monitor-exit(r6);	 Catch:{ all -> 0x0020 }
        goto L_0x0010;
    L_0x0034:
        r1 = r12.zzGt;	 Catch:{ all -> 0x0020 }
        r1 = r1.zzkZ();	 Catch:{ all -> 0x0020 }
        if (r1 == 0) goto L_0x0043;
    L_0x003c:
        r1 = "Cannot resize an expanded banner.";
        r12.zzay(r1);	 Catch:{ all -> 0x0020 }
        monitor-exit(r6);	 Catch:{ all -> 0x0020 }
        goto L_0x0010;
    L_0x0043:
        r12.zzj(r13);	 Catch:{ all -> 0x0020 }
        r1 = r12.zzgP();	 Catch:{ all -> 0x0020 }
        if (r1 != 0) goto L_0x0053;
    L_0x004c:
        r1 = "Invalid width and height options. Cannot resize.";
        r12.zzay(r1);	 Catch:{ all -> 0x0020 }
        monitor-exit(r6);	 Catch:{ all -> 0x0020 }
        goto L_0x0010;
    L_0x0053:
        r1 = r12.zzLg;	 Catch:{ all -> 0x0020 }
        r7 = r1.getWindow();	 Catch:{ all -> 0x0020 }
        if (r7 == 0) goto L_0x0061;
    L_0x005b:
        r1 = r7.getDecorView();	 Catch:{ all -> 0x0020 }
        if (r1 != 0) goto L_0x0068;
    L_0x0061:
        r1 = "Activity context is not ready, cannot get window or decor view.";
        r12.zzay(r1);	 Catch:{ all -> 0x0020 }
        monitor-exit(r6);	 Catch:{ all -> 0x0020 }
        goto L_0x0010;
    L_0x0068:
        r8 = r12.zzgQ();	 Catch:{ all -> 0x0020 }
        if (r8 != 0) goto L_0x0075;
    L_0x006e:
        r1 = "Resize location out of screen or close button is not visible.";
        r12.zzay(r1);	 Catch:{ all -> 0x0020 }
        monitor-exit(r6);	 Catch:{ all -> 0x0020 }
        goto L_0x0010;
    L_0x0075:
        r1 = com.google.android.gms.internal.zzeh.zzeO();	 Catch:{ all -> 0x0020 }
        r2 = r12.zzLg;	 Catch:{ all -> 0x0020 }
        r9 = r12.zzrG;	 Catch:{ all -> 0x0020 }
        r9 = r1.zzb(r2, r9);	 Catch:{ all -> 0x0020 }
        r1 = com.google.android.gms.internal.zzeh.zzeO();	 Catch:{ all -> 0x0020 }
        r2 = r12.zzLg;	 Catch:{ all -> 0x0020 }
        r10 = r12.zzrH;	 Catch:{ all -> 0x0020 }
        r10 = r1.zzb(r2, r10);	 Catch:{ all -> 0x0020 }
        r1 = r12.zzGt;	 Catch:{ all -> 0x0020 }
        r1 = r1.getView();	 Catch:{ all -> 0x0020 }
        r2 = r1.getParent();	 Catch:{ all -> 0x0020 }
        if (r2 == 0) goto L_0x01d5;
    L_0x0099:
        r1 = r2 instanceof android.view.ViewGroup;	 Catch:{ all -> 0x0020 }
        if (r1 == 0) goto L_0x01d5;
    L_0x009d:
        r0 = r2;
        r0 = (android.view.ViewGroup) r0;	 Catch:{ all -> 0x0020 }
        r1 = r0;
        r11 = r12.zzGt;	 Catch:{ all -> 0x0020 }
        r11 = r11.getView();	 Catch:{ all -> 0x0020 }
        r1.removeView(r11);	 Catch:{ all -> 0x0020 }
        r1 = r12.zzLA;	 Catch:{ all -> 0x0020 }
        if (r1 != 0) goto L_0x01ce;
    L_0x00ae:
        r2 = (android.view.ViewGroup) r2;	 Catch:{ all -> 0x0020 }
        r12.zzLC = r2;	 Catch:{ all -> 0x0020 }
        r1 = com.google.android.gms.ads.internal.zzv.zzcJ();	 Catch:{ all -> 0x0020 }
        r2 = r12.zzGt;	 Catch:{ all -> 0x0020 }
        r2 = r2.getView();	 Catch:{ all -> 0x0020 }
        r1 = r1.zzp(r2);	 Catch:{ all -> 0x0020 }
        r2 = new android.widget.ImageView;	 Catch:{ all -> 0x0020 }
        r11 = r12.zzLg;	 Catch:{ all -> 0x0020 }
        r2.<init>(r11);	 Catch:{ all -> 0x0020 }
        r12.zzLx = r2;	 Catch:{ all -> 0x0020 }
        r2 = r12.zzLx;	 Catch:{ all -> 0x0020 }
        r2.setImageBitmap(r1);	 Catch:{ all -> 0x0020 }
        r1 = r12.zzGt;	 Catch:{ all -> 0x0020 }
        r1 = r1.zzbD();	 Catch:{ all -> 0x0020 }
        r12.zzum = r1;	 Catch:{ all -> 0x0020 }
        r1 = r12.zzLC;	 Catch:{ all -> 0x0020 }
        r2 = r12.zzLx;	 Catch:{ all -> 0x0020 }
        r1.addView(r2);	 Catch:{ all -> 0x0020 }
    L_0x00dd:
        r1 = new android.widget.RelativeLayout;	 Catch:{ all -> 0x0020 }
        r2 = r12.zzLg;	 Catch:{ all -> 0x0020 }
        r1.<init>(r2);	 Catch:{ all -> 0x0020 }
        r12.zzLB = r1;	 Catch:{ all -> 0x0020 }
        r1 = r12.zzLB;	 Catch:{ all -> 0x0020 }
        r2 = 0;
        r1.setBackgroundColor(r2);	 Catch:{ all -> 0x0020 }
        r1 = r12.zzLB;	 Catch:{ all -> 0x0020 }
        r2 = new android.view.ViewGroup$LayoutParams;	 Catch:{ all -> 0x0020 }
        r2.<init>(r9, r10);	 Catch:{ all -> 0x0020 }
        r1.setLayoutParams(r2);	 Catch:{ all -> 0x0020 }
        r1 = com.google.android.gms.ads.internal.zzv.zzcJ();	 Catch:{ all -> 0x0020 }
        r2 = r12.zzLB;	 Catch:{ all -> 0x0020 }
        r11 = 0;
        r1 = r1.zza(r2, r9, r10, r11);	 Catch:{ all -> 0x0020 }
        r12.zzLA = r1;	 Catch:{ all -> 0x0020 }
        r1 = r12.zzLA;	 Catch:{ all -> 0x0020 }
        r2 = 1;
        r1.setOutsideTouchable(r2);	 Catch:{ all -> 0x0020 }
        r1 = r12.zzLA;	 Catch:{ all -> 0x0020 }
        r2 = 1;
        r1.setTouchable(r2);	 Catch:{ all -> 0x0020 }
        r2 = r12.zzLA;	 Catch:{ all -> 0x0020 }
        r1 = r12.zzLs;	 Catch:{ all -> 0x0020 }
        if (r1 != 0) goto L_0x01dd;
    L_0x0115:
        r1 = r5;
    L_0x0116:
        r2.setClippingEnabled(r1);	 Catch:{ all -> 0x0020 }
        r1 = r12.zzLB;	 Catch:{ all -> 0x0020 }
        r2 = r12.zzGt;	 Catch:{ all -> 0x0020 }
        r2 = r2.getView();	 Catch:{ all -> 0x0020 }
        r9 = -1;
        r10 = -1;
        r1.addView(r2, r9, r10);	 Catch:{ all -> 0x0020 }
        r1 = new android.widget.LinearLayout;	 Catch:{ all -> 0x0020 }
        r2 = r12.zzLg;	 Catch:{ all -> 0x0020 }
        r1.<init>(r2);	 Catch:{ all -> 0x0020 }
        r12.zzLy = r1;	 Catch:{ all -> 0x0020 }
        r2 = new android.widget.RelativeLayout$LayoutParams;	 Catch:{ all -> 0x0020 }
        r1 = com.google.android.gms.internal.zzeh.zzeO();	 Catch:{ all -> 0x0020 }
        r9 = r12.zzLg;	 Catch:{ all -> 0x0020 }
        r10 = 50;
        r1 = r1.zzb(r9, r10);	 Catch:{ all -> 0x0020 }
        r9 = com.google.android.gms.internal.zzeh.zzeO();	 Catch:{ all -> 0x0020 }
        r10 = r12.zzLg;	 Catch:{ all -> 0x0020 }
        r11 = 50;
        r9 = r9.zzb(r10, r11);	 Catch:{ all -> 0x0020 }
        r2.<init>(r1, r9);	 Catch:{ all -> 0x0020 }
        r1 = r12.zzLr;	 Catch:{ all -> 0x0020 }
        r9 = r1.hashCode();	 Catch:{ all -> 0x0020 }
        switch(r9) {
            case -1364013995: goto L_0x01f6;
            case -1012429441: goto L_0x01e0;
            case -655373719: goto L_0x0201;
            case 1163912186: goto L_0x0217;
            case 1288627767: goto L_0x020c;
            case 1755462605: goto L_0x01eb;
            default: goto L_0x0155;
        };	 Catch:{ all -> 0x0020 }
    L_0x0155:
        r1 = r4;
    L_0x0156:
        switch(r1) {
            case 0: goto L_0x0222;
            case 1: goto L_0x022e;
            case 2: goto L_0x023a;
            case 3: goto L_0x0241;
            case 4: goto L_0x024d;
            case 5: goto L_0x0259;
            default: goto L_0x0159;
        };	 Catch:{ all -> 0x0020 }
    L_0x0159:
        r1 = 10;
        r2.addRule(r1);	 Catch:{ all -> 0x0020 }
        r1 = 11;
        r2.addRule(r1);	 Catch:{ all -> 0x0020 }
    L_0x0163:
        r1 = r12.zzLy;	 Catch:{ all -> 0x0020 }
        r3 = new com.google.android.gms.internal.zzkj$1;	 Catch:{ all -> 0x0020 }
        r3.<init>(r12);	 Catch:{ all -> 0x0020 }
        r1.setOnClickListener(r3);	 Catch:{ all -> 0x0020 }
        r1 = r12.zzLy;	 Catch:{ all -> 0x0020 }
        r3 = "Close button";
        r1.setContentDescription(r3);	 Catch:{ all -> 0x0020 }
        r1 = r12.zzLB;	 Catch:{ all -> 0x0020 }
        r3 = r12.zzLy;	 Catch:{ all -> 0x0020 }
        r1.addView(r3, r2);	 Catch:{ all -> 0x0020 }
        r1 = r12.zzLA;	 Catch:{ RuntimeException -> 0x0265 }
        r2 = r7.getDecorView();	 Catch:{ RuntimeException -> 0x0265 }
        r3 = 0;
        r4 = com.google.android.gms.internal.zzeh.zzeO();	 Catch:{ RuntimeException -> 0x0265 }
        r5 = r12.zzLg;	 Catch:{ RuntimeException -> 0x0265 }
        r7 = 0;
        r7 = r8[r7];	 Catch:{ RuntimeException -> 0x0265 }
        r4 = r4.zzb(r5, r7);	 Catch:{ RuntimeException -> 0x0265 }
        r5 = com.google.android.gms.internal.zzeh.zzeO();	 Catch:{ RuntimeException -> 0x0265 }
        r7 = r12.zzLg;	 Catch:{ RuntimeException -> 0x0265 }
        r9 = 1;
        r9 = r8[r9];	 Catch:{ RuntimeException -> 0x0265 }
        r5 = r5.zzb(r7, r9);	 Catch:{ RuntimeException -> 0x0265 }
        r1.showAtLocation(r2, r3, r4, r5);	 Catch:{ RuntimeException -> 0x0265 }
        r1 = 0;
        r1 = r8[r1];	 Catch:{ all -> 0x0020 }
        r2 = 1;
        r2 = r8[r2];	 Catch:{ all -> 0x0020 }
        r12.zzb(r1, r2);	 Catch:{ all -> 0x0020 }
        r1 = r12.zzGt;	 Catch:{ all -> 0x0020 }
        r2 = new com.google.android.gms.internal.zzec;	 Catch:{ all -> 0x0020 }
        r3 = r12.zzLg;	 Catch:{ all -> 0x0020 }
        r4 = new com.google.android.gms.ads.AdSize;	 Catch:{ all -> 0x0020 }
        r5 = r12.zzrG;	 Catch:{ all -> 0x0020 }
        r7 = r12.zzrH;	 Catch:{ all -> 0x0020 }
        r4.<init>(r5, r7);	 Catch:{ all -> 0x0020 }
        r2.<init>(r3, r4);	 Catch:{ all -> 0x0020 }
        r1.zza(r2);	 Catch:{ all -> 0x0020 }
        r1 = 0;
        r1 = r8[r1];	 Catch:{ all -> 0x0020 }
        r2 = 1;
        r2 = r8[r2];	 Catch:{ all -> 0x0020 }
        r12.zzc(r1, r2);	 Catch:{ all -> 0x0020 }
        r1 = "resized";
        r12.zzaA(r1);	 Catch:{ all -> 0x0020 }
        monitor-exit(r6);	 Catch:{ all -> 0x0020 }
        goto L_0x0010;
    L_0x01ce:
        r1 = r12.zzLA;	 Catch:{ all -> 0x0020 }
        r1.dismiss();	 Catch:{ all -> 0x0020 }
        goto L_0x00dd;
    L_0x01d5:
        r1 = "Webview is detached, probably in the middle of a resize or expand.";
        r12.zzay(r1);	 Catch:{ all -> 0x0020 }
        monitor-exit(r6);	 Catch:{ all -> 0x0020 }
        goto L_0x0010;
    L_0x01dd:
        r1 = r3;
        goto L_0x0116;
    L_0x01e0:
        r5 = "top-left";
        r1 = r1.equals(r5);	 Catch:{ all -> 0x0020 }
        if (r1 == 0) goto L_0x0155;
    L_0x01e8:
        r1 = r3;
        goto L_0x0156;
    L_0x01eb:
        r3 = "top-center";
        r1 = r1.equals(r3);	 Catch:{ all -> 0x0020 }
        if (r1 == 0) goto L_0x0155;
    L_0x01f3:
        r1 = r5;
        goto L_0x0156;
    L_0x01f6:
        r3 = "center";
        r1 = r1.equals(r3);	 Catch:{ all -> 0x0020 }
        if (r1 == 0) goto L_0x0155;
    L_0x01fe:
        r1 = 2;
        goto L_0x0156;
    L_0x0201:
        r3 = "bottom-left";
        r1 = r1.equals(r3);	 Catch:{ all -> 0x0020 }
        if (r1 == 0) goto L_0x0155;
    L_0x0209:
        r1 = 3;
        goto L_0x0156;
    L_0x020c:
        r3 = "bottom-center";
        r1 = r1.equals(r3);	 Catch:{ all -> 0x0020 }
        if (r1 == 0) goto L_0x0155;
    L_0x0214:
        r1 = 4;
        goto L_0x0156;
    L_0x0217:
        r3 = "bottom-right";
        r1 = r1.equals(r3);	 Catch:{ all -> 0x0020 }
        if (r1 == 0) goto L_0x0155;
    L_0x021f:
        r1 = 5;
        goto L_0x0156;
    L_0x0222:
        r1 = 10;
        r2.addRule(r1);	 Catch:{ all -> 0x0020 }
        r1 = 9;
        r2.addRule(r1);	 Catch:{ all -> 0x0020 }
        goto L_0x0163;
    L_0x022e:
        r1 = 10;
        r2.addRule(r1);	 Catch:{ all -> 0x0020 }
        r1 = 14;
        r2.addRule(r1);	 Catch:{ all -> 0x0020 }
        goto L_0x0163;
    L_0x023a:
        r1 = 13;
        r2.addRule(r1);	 Catch:{ all -> 0x0020 }
        goto L_0x0163;
    L_0x0241:
        r1 = 12;
        r2.addRule(r1);	 Catch:{ all -> 0x0020 }
        r1 = 9;
        r2.addRule(r1);	 Catch:{ all -> 0x0020 }
        goto L_0x0163;
    L_0x024d:
        r1 = 12;
        r2.addRule(r1);	 Catch:{ all -> 0x0020 }
        r1 = 14;
        r2.addRule(r1);	 Catch:{ all -> 0x0020 }
        goto L_0x0163;
    L_0x0259:
        r1 = 12;
        r2.addRule(r1);	 Catch:{ all -> 0x0020 }
        r1 = 11;
        r2.addRule(r1);	 Catch:{ all -> 0x0020 }
        goto L_0x0163;
    L_0x0265:
        r1 = move-exception;
        r2 = "Cannot show popup window: ";
        r1 = r1.getMessage();	 Catch:{ all -> 0x0020 }
        r1 = java.lang.String.valueOf(r1);	 Catch:{ all -> 0x0020 }
        r3 = r1.length();	 Catch:{ all -> 0x0020 }
        if (r3 == 0) goto L_0x02a8;
    L_0x0276:
        r1 = r2.concat(r1);	 Catch:{ all -> 0x0020 }
    L_0x027a:
        r12.zzay(r1);	 Catch:{ all -> 0x0020 }
        r1 = r12.zzLB;	 Catch:{ all -> 0x0020 }
        r2 = r12.zzGt;	 Catch:{ all -> 0x0020 }
        r2 = r2.getView();	 Catch:{ all -> 0x0020 }
        r1.removeView(r2);	 Catch:{ all -> 0x0020 }
        r1 = r12.zzLC;	 Catch:{ all -> 0x0020 }
        if (r1 == 0) goto L_0x02a5;
    L_0x028c:
        r1 = r12.zzLC;	 Catch:{ all -> 0x0020 }
        r2 = r12.zzLx;	 Catch:{ all -> 0x0020 }
        r1.removeView(r2);	 Catch:{ all -> 0x0020 }
        r1 = r12.zzLC;	 Catch:{ all -> 0x0020 }
        r2 = r12.zzGt;	 Catch:{ all -> 0x0020 }
        r2 = r2.getView();	 Catch:{ all -> 0x0020 }
        r1.addView(r2);	 Catch:{ all -> 0x0020 }
        r1 = r12.zzGt;	 Catch:{ all -> 0x0020 }
        r2 = r12.zzum;	 Catch:{ all -> 0x0020 }
        r1.zza(r2);	 Catch:{ all -> 0x0020 }
    L_0x02a5:
        monitor-exit(r6);	 Catch:{ all -> 0x0020 }
        goto L_0x0010;
    L_0x02a8:
        r1 = new java.lang.String;	 Catch:{ all -> 0x0020 }
        r1.<init>(r2);	 Catch:{ all -> 0x0020 }
        goto L_0x027a;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.zzkj.execute(java.util.Map):void");
    }

    public void zza(int i, int i2, boolean z) {
        synchronized (this.zzrN) {
            this.zzLt = i;
            this.zzLu = i2;
            if (this.zzLA != null && z) {
                int[] zzgQ = zzgQ();
                if (zzgQ != null) {
                    this.zzLA.update(zzeh.zzeO().zzb(this.zzLg, zzgQ[0]), zzeh.zzeO().zzb(this.zzLg, zzgQ[1]), this.zzLA.getWidth(), this.zzLA.getHeight());
                    zzc(zzgQ[0], zzgQ[1]);
                } else {
                    zzs(true);
                }
            }
        }
    }

    void zzb(int i, int i2) {
        if (this.zzLz != null) {
            this.zzLz.zza(i, i2, this.zzrG, this.zzrH);
        }
    }

    void zzc(int i, int i2) {
        zzb(i, i2 - zzv.zzcJ().zzk(this.zzLg)[0], this.zzrG, this.zzrH);
    }

    public void zzd(int i, int i2) {
        this.zzLt = i;
        this.zzLu = i2;
    }

    boolean zzgP() {
        return this.zzrG > -1 && this.zzrH > -1;
    }

    public boolean zzgR() {
        boolean z;
        synchronized (this.zzrN) {
            z = this.zzLA != null;
        }
        return z;
    }

    boolean zzgS() {
        int[] zzi = zzv.zzcJ().zzi(this.zzLg);
        int[] zzk = zzv.zzcJ().zzk(this.zzLg);
        int i = zzi[0];
        int i2 = zzi[1];
        if (this.zzrG < 50 || this.zzrG > i) {
            zzpy.zzbe("Width is too small or too large.");
            return false;
        } else if (this.zzrH < 50 || this.zzrH > i2) {
            zzpy.zzbe("Height is too small or too large.");
            return false;
        } else if (this.zzrH == i2 && this.zzrG == i) {
            zzpy.zzbe("Cannot resize to a full-screen ad.");
            return false;
        } else {
            if (this.zzLs) {
                int i3;
                String str = this.zzLr;
                boolean z = true;
                switch (str.hashCode()) {
                    case -1364013995:
                        if (str.equals("center")) {
                            z = true;
                            break;
                        }
                        break;
                    case -1012429441:
                        if (str.equals("top-left")) {
                            z = false;
                            break;
                        }
                        break;
                    case -655373719:
                        if (str.equals("bottom-left")) {
                            z = true;
                            break;
                        }
                        break;
                    case 1163912186:
                        if (str.equals("bottom-right")) {
                            z = true;
                            break;
                        }
                        break;
                    case 1288627767:
                        if (str.equals("bottom-center")) {
                            z = true;
                            break;
                        }
                        break;
                    case 1755462605:
                        if (str.equals("top-center")) {
                            z = true;
                            break;
                        }
                        break;
                }
                switch (z) {
                    case false:
                        i3 = this.zzLv + this.zzLt;
                        i2 = this.zzLu + this.zzLw;
                        break;
                    case true:
                        i3 = ((this.zzLt + this.zzLv) + (this.zzrG / 2)) - 25;
                        i2 = this.zzLu + this.zzLw;
                        break;
                    case true:
                        i3 = ((this.zzLt + this.zzLv) + (this.zzrG / 2)) - 25;
                        i2 = ((this.zzLu + this.zzLw) + (this.zzrH / 2)) - 25;
                        break;
                    case true:
                        i3 = this.zzLv + this.zzLt;
                        i2 = ((this.zzLu + this.zzLw) + this.zzrH) - 50;
                        break;
                    case true:
                        i3 = ((this.zzLt + this.zzLv) + (this.zzrG / 2)) - 25;
                        i2 = ((this.zzLu + this.zzLw) + this.zzrH) - 50;
                        break;
                    case true:
                        i3 = ((this.zzLt + this.zzLv) + this.zzrG) - 50;
                        i2 = ((this.zzLu + this.zzLw) + this.zzrH) - 50;
                        break;
                    default:
                        i3 = ((this.zzLt + this.zzLv) + this.zzrG) - 50;
                        i2 = this.zzLu + this.zzLw;
                        break;
                }
                if (i3 < 0 || i3 + 50 > i || r2 < zzk[0] || r2 + 50 > zzk[1]) {
                    return false;
                }
            }
            return true;
        }
    }

    public void zzs(boolean z) {
        synchronized (this.zzrN) {
            if (this.zzLA != null) {
                this.zzLA.dismiss();
                this.zzLB.removeView(this.zzGt.getView());
                if (this.zzLC != null) {
                    this.zzLC.removeView(this.zzLx);
                    this.zzLC.addView(this.zzGt.getView());
                    this.zzGt.zza(this.zzum);
                }
                if (z) {
                    zzaA("default");
                    if (this.zzLz != null) {
                        this.zzLz.zzbZ();
                    }
                }
                this.zzLA = null;
                this.zzLB = null;
                this.zzLC = null;
                this.zzLy = null;
            }
        }
    }
}
