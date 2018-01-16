package com.google.firebase.database.connection.idl;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.internal.zzblk;
import com.google.android.gms.internal.zzblo;
import java.util.ArrayList;
import java.util.List;

class zza extends com.google.android.gms.common.internal.safeparcel.zza {
    public static final Creator<zza> CREATOR = new zzb();
    final int versionCode;
    final List<String> zzbZh;
    final List<String> zzbZi;

    public zza(int i, List<String> list, List<String> list2) {
        this.versionCode = i;
        this.zzbZh = list;
        this.zzbZi = list2;
    }

    public static zzblk zza(zza com_google_firebase_database_connection_idl_zza) {
        List arrayList = new ArrayList(com_google_firebase_database_connection_idl_zza.zzbZh.size());
        for (String zziN : com_google_firebase_database_connection_idl_zza.zzbZh) {
            arrayList.add(zzblo.zziN(zziN));
        }
        return new zzblk(arrayList, com_google_firebase_database_connection_idl_zza.zzbZi);
    }

    public void writeToParcel(Parcel parcel, int i) {
        zzb.zza(this, parcel, i);
    }
}
