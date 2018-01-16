package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zza;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public class zzbjn extends zza {
    public static final Creator<zzbjn> CREATOR = new zzbjo();
    @zzbjd
    public final int mVersionCode;
    private List<zzbjl> zzbWu;

    public zzbjn() {
        this.mVersionCode = 1;
        this.zzbWu = new ArrayList();
    }

    zzbjn(int i, List<zzbjl> list) {
        this.mVersionCode = i;
        this.zzbWu = list == null ? Collections.emptyList() : Collections.unmodifiableList(list);
    }

    public void writeToParcel(Parcel parcel, int i) {
        zzbjo.zza(this, parcel, i);
    }

    public List<zzbjl> zzUr() {
        return this.zzbWu;
    }
}
