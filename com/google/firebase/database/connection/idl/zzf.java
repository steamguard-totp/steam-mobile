package com.google.firebase.database.connection.idl;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.internal.zzblp;

class zzf extends zza {
    public static final Creator<zzf> CREATOR = new zzg();
    final int versionCode;
    final String zzaFs;
    final String zzbZA;
    final boolean zzbZB;

    public zzf(int i, String str, String str2, boolean z) {
        this.versionCode = i;
        this.zzbZA = str;
        this.zzaFs = str2;
        this.zzbZB = z;
    }

    public static zzblp zza(zzf com_google_firebase_database_connection_idl_zzf) {
        return new zzblp(com_google_firebase_database_connection_idl_zzf.zzbZA, com_google_firebase_database_connection_idl_zzf.zzaFs, com_google_firebase_database_connection_idl_zzf.zzbZB);
    }

    public void writeToParcel(Parcel parcel, int i) {
        zzg.zza(this, parcel, i);
    }
}
