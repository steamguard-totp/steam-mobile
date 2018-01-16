package com.google.android.gms.internal;

import android.app.Activity;
import android.content.Context;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.WindowManager;
import com.google.android.gms.ads.internal.zzv;
import com.google.android.gms.internal.zzkm.zza;
import java.util.Map;

@zzmb
public class zzkn extends zzko implements zzhx {
    private final Context mContext;
    private final zzqp zzGt;
    private final zzfp zzLO;
    private float zzLP;
    int zzLQ = -1;
    int zzLR = -1;
    private int zzLS;
    int zzLT = -1;
    int zzLU = -1;
    int zzLV = -1;
    int zzLW = -1;
    DisplayMetrics zzwO;
    private final WindowManager zzwf;

    public zzkn(zzqp com_google_android_gms_internal_zzqp, Context context, zzfp com_google_android_gms_internal_zzfp) {
        super(com_google_android_gms_internal_zzqp);
        this.zzGt = com_google_android_gms_internal_zzqp;
        this.mContext = context;
        this.zzLO = com_google_android_gms_internal_zzfp;
        this.zzwf = (WindowManager) context.getSystemService("window");
    }

    private void zzgU() {
        this.zzwO = new DisplayMetrics();
        Display defaultDisplay = this.zzwf.getDefaultDisplay();
        defaultDisplay.getMetrics(this.zzwO);
        this.zzLP = this.zzwO.density;
        this.zzLS = defaultDisplay.getRotation();
    }

    private void zzgZ() {
        int[] iArr = new int[2];
        this.zzGt.getLocationOnScreen(iArr);
        zze(zzeh.zzeO().zzc(this.mContext, iArr[0]), zzeh.zzeO().zzc(this.mContext, iArr[1]));
    }

    private zzkm zzhc() {
        return new zza().zzu(this.zzLO.zzfg()).zzt(this.zzLO.zzfh()).zzv(this.zzLO.zzfk()).zzw(this.zzLO.zzfi()).zzx(true).zzgT();
    }

    public void zza(zzqp com_google_android_gms_internal_zzqp, Map<String, String> map) {
        zzgX();
    }

    public void zze(int i, int i2) {
        int i3 = this.mContext instanceof Activity ? zzv.zzcJ().zzk((Activity) this.mContext)[0] : 0;
        if (this.zzGt.zzbD() == null || !this.zzGt.zzbD().zzzl) {
            this.zzLV = zzeh.zzeO().zzc(this.mContext, this.zzGt.getMeasuredWidth());
            this.zzLW = zzeh.zzeO().zzc(this.mContext, this.zzGt.getMeasuredHeight());
        }
        zzc(i, i2 - i3, this.zzLV, this.zzLW);
        this.zzGt.zzkV().zzd(i, i2);
    }

    void zzgV() {
        this.zzLQ = zzeh.zzeO().zzb(this.zzwO, this.zzwO.widthPixels);
        this.zzLR = zzeh.zzeO().zzb(this.zzwO, this.zzwO.heightPixels);
        Activity zzkR = this.zzGt.zzkR();
        if (zzkR == null || zzkR.getWindow() == null) {
            this.zzLT = this.zzLQ;
            this.zzLU = this.zzLR;
            return;
        }
        int[] zzh = zzv.zzcJ().zzh(zzkR);
        this.zzLT = zzeh.zzeO().zzb(this.zzwO, zzh[0]);
        this.zzLU = zzeh.zzeO().zzb(this.zzwO, zzh[1]);
    }

    void zzgW() {
        if (this.zzGt.zzbD().zzzl) {
            this.zzLV = this.zzLQ;
            this.zzLW = this.zzLR;
            return;
        }
        this.zzGt.measure(0, 0);
    }

    public void zzgX() {
        zzgU();
        zzgV();
        zzgW();
        zzha();
        zzhb();
        zzgZ();
        zzgY();
    }

    void zzgY() {
        if (zzpy.zzai(2)) {
            zzpy.zzbd("Dispatching Ready Event.");
        }
        zzaz(this.zzGt.zzkY().zzaZ);
    }

    void zzha() {
        zza(this.zzLQ, this.zzLR, this.zzLT, this.zzLU, this.zzLP, this.zzLS);
    }

    void zzhb() {
        this.zzGt.zzb("onDeviceFeaturesReceived", zzhc().toJson());
    }
}
