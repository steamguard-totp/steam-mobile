package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zza;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public class zzbjx extends zza {
    public static final Creator<zzbjx> CREATOR = new zzbjy();
    @zzbjd
    public final int mVersionCode;
    @zzbsg("values")
    private List<String> zzbWD;

    public zzbjx() {
        this(null);
    }

    zzbjx(int i, List<String> list) {
        this.mVersionCode = i;
        if (list == null || list.isEmpty()) {
            this.zzbWD = Collections.emptyList();
        } else {
            this.zzbWD = Collections.unmodifiableList(list);
        }
    }

    public zzbjx(List<String> list) {
        this.mVersionCode = 1;
        this.zzbWD = new ArrayList();
        if (list != null && !list.isEmpty()) {
            this.zzbWD.addAll(list);
        }
    }

    public static zzbjx zzUB() {
        return new zzbjx(null);
    }

    public static zzbjx zza(zzbjx com_google_android_gms_internal_zzbjx) {
        return new zzbjx(com_google_android_gms_internal_zzbjx != null ? com_google_android_gms_internal_zzbjx.zzUA() : null);
    }

    public void writeToParcel(Parcel parcel, int i) {
        zzbjy.zza(this, parcel, i);
    }

    public List<String> zzUA() {
        return this.zzbWD;
    }
}
