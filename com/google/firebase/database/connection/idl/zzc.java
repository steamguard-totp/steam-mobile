package com.google.firebase.database.connection.idl;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.internal.zzboq;
import java.util.List;

public class zzc extends zza {
    public static final Creator<zzc> CREATOR = new zzd();
    final int versionCode;
    final boolean zzbZx;
    final String zzbZz;
    final zzf zzcaQ;
    final int zzcaR;
    final List<String> zzcaS;
    final String zzcaT;

    public zzc(int i, zzf com_google_firebase_database_connection_idl_zzf, int i2, List<String> list, boolean z, String str, String str2) {
        this.versionCode = i;
        this.zzcaQ = com_google_firebase_database_connection_idl_zzf;
        this.zzcaR = i2;
        this.zzcaS = list;
        this.zzbZx = z;
        this.zzcaT = str;
        this.zzbZz = str2;
    }

    public void writeToParcel(Parcel parcel, int i) {
        zzd.zza(this, parcel, i);
    }

    public zzboq.zza zzWu() {
        switch (this.zzcaR) {
            case 0:
                return zzboq.zza.NONE;
            case 1:
                return zzboq.zza.DEBUG;
            case 2:
                return zzboq.zza.INFO;
            case 3:
                return zzboq.zza.WARN;
            case 4:
                return zzboq.zza.ERROR;
            default:
                return zzboq.zza.NONE;
        }
    }

    public List<String> zzWv() {
        return this.zzcaS;
    }
}
