package com.google.android.gms.ads.internal.purchase;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.dynamic.zzd;
import com.google.android.gms.dynamic.zze;
import com.google.android.gms.internal.zzky;
import com.google.android.gms.internal.zzmb;

@zzmb
public final class GInAppPurchaseManagerInfoParcel extends zza implements ReflectedParcelable {
    public static final Creator<GInAppPurchaseManagerInfoParcel> CREATOR = new zza();
    public final int versionCode;
    public final zzky zzOL;
    public final Context zzOM;
    public final zzj zzON;
    public final zzk zzvC;

    GInAppPurchaseManagerInfoParcel(int i, IBinder iBinder, IBinder iBinder2, IBinder iBinder3, IBinder iBinder4) {
        this.versionCode = i;
        this.zzvC = (zzk) zze.zzE(zzd.zza.zzcd(iBinder));
        this.zzOL = (zzky) zze.zzE(zzd.zza.zzcd(iBinder2));
        this.zzOM = (Context) zze.zzE(zzd.zza.zzcd(iBinder3));
        this.zzON = (zzj) zze.zzE(zzd.zza.zzcd(iBinder4));
    }

    public GInAppPurchaseManagerInfoParcel(Context context, zzk com_google_android_gms_ads_internal_purchase_zzk, zzky com_google_android_gms_internal_zzky, zzj com_google_android_gms_ads_internal_purchase_zzj) {
        this.versionCode = 2;
        this.zzOM = context;
        this.zzvC = com_google_android_gms_ads_internal_purchase_zzk;
        this.zzOL = com_google_android_gms_internal_zzky;
        this.zzON = com_google_android_gms_ads_internal_purchase_zzj;
    }

    public static void zza(Intent intent, GInAppPurchaseManagerInfoParcel gInAppPurchaseManagerInfoParcel) {
        Bundle bundle = new Bundle(1);
        bundle.putParcelable("com.google.android.gms.ads.internal.purchase.InAppPurchaseManagerInfo", gInAppPurchaseManagerInfoParcel);
        intent.putExtra("com.google.android.gms.ads.internal.purchase.InAppPurchaseManagerInfo", bundle);
    }

    public static GInAppPurchaseManagerInfoParcel zzc(Intent intent) {
        try {
            Bundle bundleExtra = intent.getBundleExtra("com.google.android.gms.ads.internal.purchase.InAppPurchaseManagerInfo");
            bundleExtra.setClassLoader(GInAppPurchaseManagerInfoParcel.class.getClassLoader());
            return (GInAppPurchaseManagerInfoParcel) bundleExtra.getParcelable("com.google.android.gms.ads.internal.purchase.InAppPurchaseManagerInfo");
        } catch (Exception e) {
            return null;
        }
    }

    public void writeToParcel(Parcel parcel, int i) {
        zza.zza(this, parcel, i);
    }

    IBinder zzik() {
        return zze.zzA(this.zzON).asBinder();
    }

    IBinder zzil() {
        return zze.zzA(this.zzvC).asBinder();
    }

    IBinder zzim() {
        return zze.zzA(this.zzOL).asBinder();
    }

    IBinder zzin() {
        return zze.zzA(this.zzOM).asBinder();
    }
}
