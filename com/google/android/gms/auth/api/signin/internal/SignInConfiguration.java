package com.google.android.gms.auth.api.signin.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.auth.api.signin.GoogleSignInOptions;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.zzac;

public final class SignInConfiguration extends zza implements ReflectedParcelable {
    public static final Creator<SignInConfiguration> CREATOR = new zzk();
    final int versionCode;
    private final String zzajA;
    private GoogleSignInOptions zzajB;

    SignInConfiguration(int i, String str, GoogleSignInOptions googleSignInOptions) {
        this.versionCode = i;
        this.zzajA = zzac.zzdv(str);
        this.zzajB = googleSignInOptions;
    }

    public SignInConfiguration(String str, GoogleSignInOptions googleSignInOptions) {
        this(3, str, googleSignInOptions);
    }

    public boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        try {
            SignInConfiguration signInConfiguration = (SignInConfiguration) obj;
            if (!this.zzajA.equals(signInConfiguration.zzqZ())) {
                return false;
            }
            if (this.zzajB == null) {
                if (signInConfiguration.zzra() != null) {
                    return false;
                }
            } else if (!this.zzajB.equals(signInConfiguration.zzra())) {
                return false;
            }
            return true;
        } catch (ClassCastException e) {
            return false;
        }
    }

    public int hashCode() {
        return new zzf().zzq(this.zzajA).zzq(this.zzajB).zzqV();
    }

    public void writeToParcel(Parcel parcel, int i) {
        zzk.zza(this, parcel, i);
    }

    public String zzqZ() {
        return this.zzajA;
    }

    public GoogleSignInOptions zzra() {
        return this.zzajB;
    }
}
