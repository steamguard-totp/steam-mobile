package com.google.firebase.auth;

import com.google.android.gms.internal.zzbjp;
import java.util.List;

public abstract class FirebaseUser implements UserInfo {
    public abstract List<? extends UserInfo> getProviderData();

    public abstract String getUid();

    public abstract boolean isAnonymous();

    public abstract FirebaseUser zzR(List<? extends UserInfo> list);

    public abstract zzbjp zzTW();

    public abstract String zzTY();

    public abstract void zza(zzbjp com_google_android_gms_internal_zzbjp);

    public abstract FirebaseUser zzaT(boolean z);
}
