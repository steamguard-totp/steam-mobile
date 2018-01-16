package com.google.android.gms.internal;

import android.location.Location;
import android.os.Bundle;
import java.util.ArrayList;
import java.util.List;

@zzmb
public final class zzdz {
    private Bundle mExtras;
    private Location zzcU;
    private boolean zzsS;
    private long zzyV;
    private int zzyW;
    private List<String> zzyX;
    private boolean zzyY;
    private int zzyZ;
    private String zzza;
    private zzfj zzzb;
    private String zzzc;
    private Bundle zzzd;
    private Bundle zzze;
    private List<String> zzzf;
    private String zzzg;
    private String zzzh;
    private boolean zzzi;

    public zzdz() {
        this.zzyV = -1;
        this.mExtras = new Bundle();
        this.zzyW = -1;
        this.zzyX = new ArrayList();
        this.zzyY = false;
        this.zzyZ = -1;
        this.zzsS = false;
        this.zzza = null;
        this.zzzb = null;
        this.zzcU = null;
        this.zzzc = null;
        this.zzzd = new Bundle();
        this.zzze = new Bundle();
        this.zzzf = new ArrayList();
        this.zzzg = null;
        this.zzzh = null;
        this.zzzi = false;
    }

    public zzdz(zzdy com_google_android_gms_internal_zzdy) {
        this.zzyV = com_google_android_gms_internal_zzdy.zzyF;
        this.mExtras = com_google_android_gms_internal_zzdy.extras;
        this.zzyW = com_google_android_gms_internal_zzdy.zzyG;
        this.zzyX = com_google_android_gms_internal_zzdy.zzyH;
        this.zzyY = com_google_android_gms_internal_zzdy.zzyI;
        this.zzyZ = com_google_android_gms_internal_zzdy.zzyJ;
        this.zzsS = com_google_android_gms_internal_zzdy.zzyK;
        this.zzza = com_google_android_gms_internal_zzdy.zzyL;
        this.zzzb = com_google_android_gms_internal_zzdy.zzyM;
        this.zzcU = com_google_android_gms_internal_zzdy.zzyN;
        this.zzzc = com_google_android_gms_internal_zzdy.zzyO;
        this.zzzd = com_google_android_gms_internal_zzdy.zzyP;
        this.zzze = com_google_android_gms_internal_zzdy.zzyQ;
        this.zzzf = com_google_android_gms_internal_zzdy.zzyR;
        this.zzzg = com_google_android_gms_internal_zzdy.zzyS;
        this.zzzh = com_google_android_gms_internal_zzdy.zzyT;
    }

    public zzdz zza(Location location) {
        this.zzcU = location;
        return this;
    }

    public zzdy zzex() {
        return new zzdy(7, this.zzyV, this.mExtras, this.zzyW, this.zzyX, this.zzyY, this.zzyZ, this.zzsS, this.zzza, this.zzzb, this.zzcU, this.zzzc, this.zzzd, this.zzze, this.zzzf, this.zzzg, this.zzzh, false);
    }
}
