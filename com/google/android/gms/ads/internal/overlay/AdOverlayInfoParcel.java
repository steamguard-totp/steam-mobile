package com.google.android.gms.ads.internal.overlay;

import android.content.Intent;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.ads.internal.zzm;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.dynamic.zzd;
import com.google.android.gms.dynamic.zze;
import com.google.android.gms.internal.zzdt;
import com.google.android.gms.internal.zzht;
import com.google.android.gms.internal.zzhz;
import com.google.android.gms.internal.zzmb;
import com.google.android.gms.internal.zzqa;
import com.google.android.gms.internal.zzqp;

@zzmb
public final class AdOverlayInfoParcel extends zza implements ReflectedParcelable {
    public static final Creator<AdOverlayInfoParcel> CREATOR = new zzg();
    public final int orientation;
    public final String url;
    public final int versionCode;
    public final zzc zzMW;
    public final zzdt zzMX;
    public final zzh zzMY;
    public final zzqp zzMZ;
    public final zzht zzNa;
    public final String zzNb;
    public final boolean zzNc;
    public final String zzNd;
    public final zzq zzNe;
    public final int zzNf;
    public final zzhz zzNg;
    public final String zzNh;
    public final zzm zzNi;
    public final zzqa zzvf;

    AdOverlayInfoParcel(int i, zzc com_google_android_gms_ads_internal_overlay_zzc, IBinder iBinder, IBinder iBinder2, IBinder iBinder3, IBinder iBinder4, String str, boolean z, String str2, IBinder iBinder5, int i2, int i3, String str3, zzqa com_google_android_gms_internal_zzqa, IBinder iBinder6, String str4, zzm com_google_android_gms_ads_internal_zzm) {
        this.versionCode = i;
        this.zzMW = com_google_android_gms_ads_internal_overlay_zzc;
        this.zzMX = (zzdt) zze.zzE(zzd.zza.zzcd(iBinder));
        this.zzMY = (zzh) zze.zzE(zzd.zza.zzcd(iBinder2));
        this.zzMZ = (zzqp) zze.zzE(zzd.zza.zzcd(iBinder3));
        this.zzNa = (zzht) zze.zzE(zzd.zza.zzcd(iBinder4));
        this.zzNb = str;
        this.zzNc = z;
        this.zzNd = str2;
        this.zzNe = (zzq) zze.zzE(zzd.zza.zzcd(iBinder5));
        this.orientation = i2;
        this.zzNf = i3;
        this.url = str3;
        this.zzvf = com_google_android_gms_internal_zzqa;
        this.zzNg = (zzhz) zze.zzE(zzd.zza.zzcd(iBinder6));
        this.zzNh = str4;
        this.zzNi = com_google_android_gms_ads_internal_zzm;
    }

    public AdOverlayInfoParcel(zzc com_google_android_gms_ads_internal_overlay_zzc, zzdt com_google_android_gms_internal_zzdt, zzh com_google_android_gms_ads_internal_overlay_zzh, zzq com_google_android_gms_ads_internal_overlay_zzq, zzqa com_google_android_gms_internal_zzqa) {
        this.versionCode = 4;
        this.zzMW = com_google_android_gms_ads_internal_overlay_zzc;
        this.zzMX = com_google_android_gms_internal_zzdt;
        this.zzMY = com_google_android_gms_ads_internal_overlay_zzh;
        this.zzMZ = null;
        this.zzNa = null;
        this.zzNb = null;
        this.zzNc = false;
        this.zzNd = null;
        this.zzNe = com_google_android_gms_ads_internal_overlay_zzq;
        this.orientation = -1;
        this.zzNf = 4;
        this.url = null;
        this.zzvf = com_google_android_gms_internal_zzqa;
        this.zzNg = null;
        this.zzNh = null;
        this.zzNi = null;
    }

    public AdOverlayInfoParcel(zzdt com_google_android_gms_internal_zzdt, zzh com_google_android_gms_ads_internal_overlay_zzh, zzq com_google_android_gms_ads_internal_overlay_zzq, zzqp com_google_android_gms_internal_zzqp, int i, zzqa com_google_android_gms_internal_zzqa, String str, zzm com_google_android_gms_ads_internal_zzm) {
        this.versionCode = 4;
        this.zzMW = null;
        this.zzMX = com_google_android_gms_internal_zzdt;
        this.zzMY = com_google_android_gms_ads_internal_overlay_zzh;
        this.zzMZ = com_google_android_gms_internal_zzqp;
        this.zzNa = null;
        this.zzNb = null;
        this.zzNc = false;
        this.zzNd = null;
        this.zzNe = com_google_android_gms_ads_internal_overlay_zzq;
        this.orientation = i;
        this.zzNf = 1;
        this.url = null;
        this.zzvf = com_google_android_gms_internal_zzqa;
        this.zzNg = null;
        this.zzNh = str;
        this.zzNi = com_google_android_gms_ads_internal_zzm;
    }

    public AdOverlayInfoParcel(zzdt com_google_android_gms_internal_zzdt, zzh com_google_android_gms_ads_internal_overlay_zzh, zzq com_google_android_gms_ads_internal_overlay_zzq, zzqp com_google_android_gms_internal_zzqp, boolean z, int i, zzqa com_google_android_gms_internal_zzqa) {
        this.versionCode = 4;
        this.zzMW = null;
        this.zzMX = com_google_android_gms_internal_zzdt;
        this.zzMY = com_google_android_gms_ads_internal_overlay_zzh;
        this.zzMZ = com_google_android_gms_internal_zzqp;
        this.zzNa = null;
        this.zzNb = null;
        this.zzNc = z;
        this.zzNd = null;
        this.zzNe = com_google_android_gms_ads_internal_overlay_zzq;
        this.orientation = i;
        this.zzNf = 2;
        this.url = null;
        this.zzvf = com_google_android_gms_internal_zzqa;
        this.zzNg = null;
        this.zzNh = null;
        this.zzNi = null;
    }

    public AdOverlayInfoParcel(zzdt com_google_android_gms_internal_zzdt, zzh com_google_android_gms_ads_internal_overlay_zzh, zzht com_google_android_gms_internal_zzht, zzq com_google_android_gms_ads_internal_overlay_zzq, zzqp com_google_android_gms_internal_zzqp, boolean z, int i, String str, zzqa com_google_android_gms_internal_zzqa, zzhz com_google_android_gms_internal_zzhz) {
        this.versionCode = 4;
        this.zzMW = null;
        this.zzMX = com_google_android_gms_internal_zzdt;
        this.zzMY = com_google_android_gms_ads_internal_overlay_zzh;
        this.zzMZ = com_google_android_gms_internal_zzqp;
        this.zzNa = com_google_android_gms_internal_zzht;
        this.zzNb = null;
        this.zzNc = z;
        this.zzNd = null;
        this.zzNe = com_google_android_gms_ads_internal_overlay_zzq;
        this.orientation = i;
        this.zzNf = 3;
        this.url = str;
        this.zzvf = com_google_android_gms_internal_zzqa;
        this.zzNg = com_google_android_gms_internal_zzhz;
        this.zzNh = null;
        this.zzNi = null;
    }

    public AdOverlayInfoParcel(zzdt com_google_android_gms_internal_zzdt, zzh com_google_android_gms_ads_internal_overlay_zzh, zzht com_google_android_gms_internal_zzht, zzq com_google_android_gms_ads_internal_overlay_zzq, zzqp com_google_android_gms_internal_zzqp, boolean z, int i, String str, String str2, zzqa com_google_android_gms_internal_zzqa, zzhz com_google_android_gms_internal_zzhz) {
        this.versionCode = 4;
        this.zzMW = null;
        this.zzMX = com_google_android_gms_internal_zzdt;
        this.zzMY = com_google_android_gms_ads_internal_overlay_zzh;
        this.zzMZ = com_google_android_gms_internal_zzqp;
        this.zzNa = com_google_android_gms_internal_zzht;
        this.zzNb = str2;
        this.zzNc = z;
        this.zzNd = str;
        this.zzNe = com_google_android_gms_ads_internal_overlay_zzq;
        this.orientation = i;
        this.zzNf = 3;
        this.url = null;
        this.zzvf = com_google_android_gms_internal_zzqa;
        this.zzNg = com_google_android_gms_internal_zzhz;
        this.zzNh = null;
        this.zzNi = null;
    }

    public static void zza(Intent intent, AdOverlayInfoParcel adOverlayInfoParcel) {
        Bundle bundle = new Bundle(1);
        bundle.putParcelable("com.google.android.gms.ads.inernal.overlay.AdOverlayInfo", adOverlayInfoParcel);
        intent.putExtra("com.google.android.gms.ads.inernal.overlay.AdOverlayInfo", bundle);
    }

    public static AdOverlayInfoParcel zzb(Intent intent) {
        try {
            Bundle bundleExtra = intent.getBundleExtra("com.google.android.gms.ads.inernal.overlay.AdOverlayInfo");
            bundleExtra.setClassLoader(AdOverlayInfoParcel.class.getClassLoader());
            return (AdOverlayInfoParcel) bundleExtra.getParcelable("com.google.android.gms.ads.inernal.overlay.AdOverlayInfo");
        } catch (Exception e) {
            return null;
        }
    }

    public void writeToParcel(Parcel parcel, int i) {
        zzg.zza(this, parcel, i);
    }

    IBinder zzhs() {
        return zze.zzA(this.zzMX).asBinder();
    }

    IBinder zzht() {
        return zze.zzA(this.zzMY).asBinder();
    }

    IBinder zzhu() {
        return zze.zzA(this.zzMZ).asBinder();
    }

    IBinder zzhv() {
        return zze.zzA(this.zzNa).asBinder();
    }

    IBinder zzhw() {
        return zze.zzA(this.zzNg).asBinder();
    }

    IBinder zzhx() {
        return zze.zzA(this.zzNe).asBinder();
    }
}
