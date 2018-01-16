package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zza;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.List;

public class zzbjt extends zza {
    public static final Creator<zzbjt> CREATOR = new zzbju();
    public final int mVersionCode;
    private List<zzbjr> zzbWA;

    public zzbjt() {
        this.mVersionCode = 1;
        this.zzbWA = new ArrayList();
    }

    zzbjt(int i, List<zzbjr> list) {
        this.mVersionCode = i;
        if (list == null || list.isEmpty()) {
            this.zzbWA = Collections.emptyList();
        } else {
            this.zzbWA = Collections.unmodifiableList(list);
        }
    }

    public static zzbjt zzUx() {
        return new zzbjt();
    }

    public static zzbjt zza(zzbjt com_google_android_gms_internal_zzbjt) {
        Collection zzUp = com_google_android_gms_internal_zzbjt.zzUp();
        zzbjt com_google_android_gms_internal_zzbjt2 = new zzbjt();
        if (zzUp != null) {
            com_google_android_gms_internal_zzbjt2.zzUp().addAll(zzUp);
        }
        return com_google_android_gms_internal_zzbjt2;
    }

    public void writeToParcel(Parcel parcel, int i) {
        zzbju.zza(this, parcel, i);
    }

    public List<zzbjr> zzUp() {
        return this.zzbWA;
    }
}
