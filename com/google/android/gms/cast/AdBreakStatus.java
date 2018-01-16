package com.google.android.gms.cast;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.zzaa;
import com.google.android.gms.internal.zzym;
import java.util.Locale;
import org.json.JSONException;
import org.json.JSONObject;

public class AdBreakStatus extends zza {
    public static final Creator<AdBreakStatus> CREATOR = new zzc();
    private final int mVersionCode;
    private final long zzalM;
    private final long zzalN;
    private final String zzalO;
    private final String zzalP;
    private final long zzalQ;

    AdBreakStatus(int i, long j, long j2, String str, String str2, long j3) {
        this.zzalM = j;
        this.zzalN = j2;
        this.mVersionCode = i;
        this.zzalO = str;
        this.zzalP = str2;
        this.zzalQ = j3;
    }

    AdBreakStatus(long j, long j2, String str, String str2, long j3) {
        this(1, j, j2, str, str2, j3);
    }

    static AdBreakStatus zzm(JSONObject jSONObject) {
        if (jSONObject == null) {
            return null;
        }
        if (!jSONObject.has("currentBreakTime") || !jSONObject.has("currentBreakClipTime")) {
            return null;
        }
        try {
            long zzf = zzym.zzf((double) jSONObject.getLong("currentBreakTime"));
            long zzf2 = zzym.zzf((double) jSONObject.getLong("currentBreakClipTime"));
            String optString = jSONObject.optString("breakId", null);
            String optString2 = jSONObject.optString("breakClipId", null);
            long optLong = jSONObject.optLong("whenSkippable", -1);
            if (optLong != -1) {
                optLong = zzym.zzf((double) optLong);
            }
            return new AdBreakStatus(zzf, zzf2, optString, optString2, optLong);
        } catch (JSONException e) {
            String.format(Locale.ROOT, "Error while creating an AdBreakClipInfo from JSON: %s", new Object[]{e.getMessage()});
            return null;
        }
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof AdBreakStatus)) {
            return false;
        }
        AdBreakStatus adBreakStatus = (AdBreakStatus) obj;
        return this.zzalM == adBreakStatus.zzalM && this.zzalN == adBreakStatus.zzalN && zzym.zza(this.zzalO, adBreakStatus.zzalO) && zzym.zza(this.zzalP, adBreakStatus.zzalP) && this.zzalQ == adBreakStatus.zzalQ;
    }

    public String getBreakClipId() {
        return this.zzalP;
    }

    public String getBreakId() {
        return this.zzalO;
    }

    public long getCurrentBreakClipTimeInMs() {
        return this.zzalN;
    }

    public long getCurrentBreakTimeInMs() {
        return this.zzalM;
    }

    int getVersionCode() {
        return this.mVersionCode;
    }

    public long getWhenSkippableInMs() {
        return this.zzalQ;
    }

    public int hashCode() {
        return zzaa.hashCode(Long.valueOf(this.zzalM), Long.valueOf(this.zzalN), this.zzalO, this.zzalP, Long.valueOf(this.zzalQ));
    }

    public void writeToParcel(Parcel parcel, int i) {
        zzc.zza(this, parcel, i);
    }
}
