package com.google.android.gms.auth.api.credentials;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.auth.api.credentials.CredentialPickerConfig.Builder;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.zzac;

public final class CredentialRequest extends zza {
    public static final Creator<CredentialRequest> CREATOR = new zzc();
    final int mVersionCode;
    private final boolean zzaiq;
    private final String[] zzair;
    private final CredentialPickerConfig zzais;
    private final CredentialPickerConfig zzait;

    CredentialRequest(int i, boolean z, String[] strArr, CredentialPickerConfig credentialPickerConfig, CredentialPickerConfig credentialPickerConfig2) {
        this.mVersionCode = i;
        this.zzaiq = z;
        this.zzair = (String[]) zzac.zzw(strArr);
        if (credentialPickerConfig == null) {
            credentialPickerConfig = new Builder().build();
        }
        this.zzais = credentialPickerConfig;
        if (credentialPickerConfig2 == null) {
            credentialPickerConfig2 = new Builder().build();
        }
        this.zzait = credentialPickerConfig2;
    }

    public String[] getAccountTypes() {
        return this.zzair;
    }

    public CredentialPickerConfig getCredentialHintPickerConfig() {
        return this.zzait;
    }

    public CredentialPickerConfig getCredentialPickerConfig() {
        return this.zzais;
    }

    public boolean isPasswordLoginSupported() {
        return this.zzaiq;
    }

    public void writeToParcel(Parcel parcel, int i) {
        zzc.zza(this, parcel, i);
    }
}
