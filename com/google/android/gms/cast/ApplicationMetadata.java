package com.google.android.gms.cast;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.images.WebImage;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.zzaa;
import com.google.android.gms.internal.zzym;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public class ApplicationMetadata extends zza {
    public static final Creator<ApplicationMetadata> CREATOR = new zzd();
    String mName;
    private final int mVersionCode;
    List<WebImage> zzFT;
    String zzalR;
    List<String> zzalS;
    String zzalT;
    Uri zzalU;

    private ApplicationMetadata() {
        this.mVersionCode = 1;
        this.zzFT = new ArrayList();
        this.zzalS = new ArrayList();
    }

    ApplicationMetadata(int i, String str, String str2, List<WebImage> list, List<String> list2, String str3, Uri uri) {
        this.mVersionCode = i;
        this.zzalR = str;
        this.mName = str2;
        this.zzFT = list;
        this.zzalS = list2;
        this.zzalT = str3;
        this.zzalU = uri;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof ApplicationMetadata)) {
            return false;
        }
        ApplicationMetadata applicationMetadata = (ApplicationMetadata) obj;
        return zzym.zza(this.zzalR, applicationMetadata.zzalR) && zzym.zza(this.zzFT, applicationMetadata.zzFT) && zzym.zza(this.mName, applicationMetadata.mName) && zzym.zza(this.zzalS, applicationMetadata.zzalS) && zzym.zza(this.zzalT, applicationMetadata.zzalT) && zzym.zza(this.zzalU, applicationMetadata.zzalU);
    }

    public String getApplicationId() {
        return this.zzalR;
    }

    public List<WebImage> getImages() {
        return this.zzFT;
    }

    public String getName() {
        return this.mName;
    }

    public String getSenderAppIdentifier() {
        return this.zzalT;
    }

    public List<String> getSupportedNamespaces() {
        return Collections.unmodifiableList(this.zzalS);
    }

    int getVersionCode() {
        return this.mVersionCode;
    }

    public int hashCode() {
        return zzaa.hashCode(Integer.valueOf(this.mVersionCode), this.zzalR, this.mName, this.zzFT, this.zzalS, this.zzalT, this.zzalU);
    }

    public String toString() {
        int i = 0;
        StringBuilder append = new StringBuilder().append("applicationId: ").append(this.zzalR).append(", name: ").append(this.mName).append(", images.count: ").append(this.zzFT == null ? 0 : this.zzFT.size()).append(", namespaces.count: ");
        if (this.zzalS != null) {
            i = this.zzalS.size();
        }
        return append.append(i).append(", senderAppIdentifier: ").append(this.zzalT).append(", senderAppLaunchUrl: ").append(this.zzalU).toString();
    }

    public void writeToParcel(Parcel parcel, int i) {
        zzd.zza(this, parcel, i);
    }

    public Uri zzrI() {
        return this.zzalU;
    }
}
