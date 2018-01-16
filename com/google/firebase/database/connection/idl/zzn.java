package com.google.firebase.database.connection.idl;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.internal.zzblt;
import java.util.List;

class zzn extends zza {
    public static final Creator<zzn> CREATOR = new zzo();
    final int versionCode;
    final List<String> zzcay;
    final List<String> zzcaz;

    public zzn(int i, List<String> list, List<String> list2) {
        this.versionCode = i;
        this.zzcay = list;
        this.zzcaz = list2;
    }

    public static zzblt zza(zzn com_google_firebase_database_connection_idl_zzn, Object obj) {
        return new zzblt(com_google_firebase_database_connection_idl_zzn.zzcay, com_google_firebase_database_connection_idl_zzn.zzcaz, obj);
    }

    public static zzn zza(zzblt com_google_android_gms_internal_zzblt) {
        return new zzn(1, com_google_android_gms_internal_zzblt.zzWm(), com_google_android_gms_internal_zzblt.zzWn());
    }

    public void writeToParcel(Parcel parcel, int i) {
        zzo.zza(this, parcel, i);
    }
}
