package com.google.android.gms.common.api;

import android.app.PendingIntent;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.zzaa;

public final class Status extends zza implements Result, ReflectedParcelable {
    public static final Creator<Status> CREATOR = new zzh();
    public static final Status zzayh = new Status(0);
    public static final Status zzayi = new Status(14);
    public static final Status zzayj = new Status(8);
    public static final Status zzayk = new Status(15);
    public static final Status zzayl = new Status(16);
    public static final Status zzaym = new Status(17);
    public static final Status zzayn = new Status(18);
    private final PendingIntent mPendingIntent;
    final int mVersionCode;
    private final int zzauz;
    private final String zzawY;

    public Status(int i) {
        this(i, null);
    }

    Status(int i, int i2, String str, PendingIntent pendingIntent) {
        this.mVersionCode = i;
        this.zzauz = i2;
        this.zzawY = str;
        this.mPendingIntent = pendingIntent;
    }

    public Status(int i, String str) {
        this(1, i, str, null);
    }

    public Status(int i, String str, PendingIntent pendingIntent) {
        this(1, i, str, pendingIntent);
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof Status)) {
            return false;
        }
        Status status = (Status) obj;
        return this.mVersionCode == status.mVersionCode && this.zzauz == status.zzauz && zzaa.equal(this.zzawY, status.zzawY) && zzaa.equal(this.mPendingIntent, status.mPendingIntent);
    }

    public Status getStatus() {
        return this;
    }

    public int getStatusCode() {
        return this.zzauz;
    }

    public String getStatusMessage() {
        return this.zzawY;
    }

    public int hashCode() {
        return zzaa.hashCode(Integer.valueOf(this.mVersionCode), Integer.valueOf(this.zzauz), this.zzawY, this.mPendingIntent);
    }

    public boolean isSuccess() {
        return this.zzauz <= 0;
    }

    public String toString() {
        return zzaa.zzv(this).zzg("statusCode", zzuU()).zzg("resolution", this.mPendingIntent).toString();
    }

    public void writeToParcel(Parcel parcel, int i) {
        zzh.zza(this, parcel, i);
    }

    PendingIntent zzuT() {
        return this.mPendingIntent;
    }

    public String zzuU() {
        return this.zzawY != null ? this.zzawY : CommonStatusCodes.getStatusCodeString(this.zzauz);
    }
}
