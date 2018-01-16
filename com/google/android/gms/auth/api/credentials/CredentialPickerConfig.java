package com.google.android.gms.auth.api.credentials;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.safeparcel.zza;

public final class CredentialPickerConfig extends zza implements ReflectedParcelable {
    public static final Creator<CredentialPickerConfig> CREATOR = new zzb();
    private final boolean mShowCancelButton;
    final int mVersionCode;
    private final boolean zzaim;
    @Deprecated
    private final boolean zzain;
    private final int zzaio;

    public static class Builder {
        private boolean mShowCancelButton = true;
        private boolean zzaim = false;
        private int zzaip = 1;

        public CredentialPickerConfig build() {
            return new CredentialPickerConfig();
        }
    }

    CredentialPickerConfig(int i, boolean z, boolean z2, boolean z3, int i2) {
        int i3 = 3;
        boolean z4 = true;
        this.mVersionCode = i;
        this.zzaim = z;
        this.mShowCancelButton = z2;
        if (i < 2) {
            this.zzain = z3;
            if (!z3) {
                i3 = 1;
            }
            this.zzaio = i3;
            return;
        }
        if (i2 != 3) {
            z4 = false;
        }
        this.zzain = z4;
        this.zzaio = i2;
    }

    private CredentialPickerConfig(Builder builder) {
        this(2, builder.zzaim, builder.mShowCancelButton, false, builder.zzaip);
    }

    @Deprecated
    public boolean isForNewAccount() {
        return this.zzaio == 3;
    }

    public boolean shouldShowAddAccountButton() {
        return this.zzaim;
    }

    public boolean shouldShowCancelButton() {
        return this.mShowCancelButton;
    }

    public void writeToParcel(Parcel parcel, int i) {
        zzb.zza(this, parcel, i);
    }

    int zzqw() {
        return this.zzaio;
    }
}
