package com.google.android.gms.auth.api.credentials;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import android.text.TextUtils;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.zzaa;
import com.google.android.gms.common.internal.zzac;
import com.google.android.gms.internal.zzut;
import java.util.Collections;
import java.util.List;

public class Credential extends zza implements ReflectedParcelable {
    public static final Creator<Credential> CREATOR = new zza();
    private final String mName;
    final int mVersionCode;
    private final String zzGu;
    private final Uri zzaie;
    private final List<IdToken> zzaif;
    private final String zzaig;
    private final String zzaih;
    private final String zzaii;
    private final String zzaij;
    private final String zzaik;
    private final String zzail;

    Credential(int i, String str, String str2, Uri uri, List<IdToken> list, String str3, String str4, String str5, String str6, String str7, String str8) {
        this.mVersionCode = i;
        String trim = ((String) zzac.zzb((Object) str, (Object) "credential identifier cannot be null")).trim();
        zzac.zzh(trim, "credential identifier cannot be empty");
        this.zzGu = trim;
        if (str2 != null && TextUtils.isEmpty(str2.trim())) {
            str2 = null;
        }
        this.mName = str2;
        this.zzaie = uri;
        this.zzaif = list == null ? Collections.emptyList() : Collections.unmodifiableList(list);
        this.zzaig = str3;
        if (str3 == null || !str3.isEmpty()) {
            if (!TextUtils.isEmpty(str4)) {
                zzut.zzcs(str4);
            }
            this.zzaih = str4;
            this.zzaii = str5;
            this.zzaij = str6;
            this.zzaik = str7;
            this.zzail = str8;
            if (!TextUtils.isEmpty(this.zzaig) && !TextUtils.isEmpty(this.zzaih)) {
                throw new IllegalStateException("password and accountType cannot both be set");
            }
            return;
        }
        throw new IllegalArgumentException("password cannot be empty");
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Credential)) {
            return false;
        }
        Credential credential = (Credential) obj;
        return TextUtils.equals(this.zzGu, credential.zzGu) && TextUtils.equals(this.mName, credential.mName) && zzaa.equal(this.zzaie, credential.zzaie) && TextUtils.equals(this.zzaig, credential.zzaig) && TextUtils.equals(this.zzaih, credential.zzaih) && TextUtils.equals(this.zzaii, credential.zzaii);
    }

    public String getAccountType() {
        return this.zzaih;
    }

    public String getFamilyName() {
        return this.zzail;
    }

    public String getGeneratedPassword() {
        return this.zzaii;
    }

    public String getGivenName() {
        return this.zzaik;
    }

    public String getId() {
        return this.zzGu;
    }

    public List<IdToken> getIdTokens() {
        return this.zzaif;
    }

    public String getName() {
        return this.mName;
    }

    public String getPassword() {
        return this.zzaig;
    }

    public Uri getProfilePictureUri() {
        return this.zzaie;
    }

    public int hashCode() {
        return zzaa.hashCode(this.zzGu, this.mName, this.zzaie, this.zzaig, this.zzaih, this.zzaii);
    }

    public void writeToParcel(Parcel parcel, int i) {
        zza.zza(this, parcel, i);
    }

    public String zzqv() {
        return this.zzaij;
    }
}
