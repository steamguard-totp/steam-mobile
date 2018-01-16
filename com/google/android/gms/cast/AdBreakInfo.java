package com.google.android.gms.cast;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.internal.zzym;
import java.util.Arrays;
import java.util.Locale;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class AdBreakInfo extends zza {
    public static final Creator<AdBreakInfo> CREATOR = new zzb();
    private final int mVersionCode;
    private final String zzGu;
    private final long zzalE;
    private final long zzalJ;
    private final boolean zzalK;
    private String[] zzalL;

    AdBreakInfo(int i, long j, String str, long j2, boolean z, String[] strArr) {
        this.mVersionCode = i;
        this.zzalJ = j;
        this.zzGu = str;
        this.zzalE = j2;
        this.zzalK = z;
        this.zzalL = strArr;
    }

    public AdBreakInfo(long j, String str, long j2, boolean z, String[] strArr) {
        this(2, j, str, j2, z, strArr);
    }

    static AdBreakInfo zzl(JSONObject jSONObject) {
        if (jSONObject == null) {
            return null;
        }
        if (!jSONObject.has("id") || !jSONObject.has("position")) {
            return null;
        }
        try {
            String[] strArr;
            String string = jSONObject.getString("id");
            long zzf = zzym.zzf((double) jSONObject.getLong("position"));
            boolean optBoolean = jSONObject.optBoolean("isWatched");
            long zzf2 = zzym.zzf((double) jSONObject.optLong("duration"));
            JSONArray optJSONArray = jSONObject.optJSONArray("breakClipIds");
            if (optJSONArray != null) {
                strArr = new String[optJSONArray.length()];
                for (int i = 0; i < optJSONArray.length(); i++) {
                    strArr[i] = optJSONArray.getString(i);
                }
            } else {
                strArr = null;
            }
            return new AdBreakInfo(zzf, string, zzf2, optBoolean, strArr);
        } catch (JSONException e) {
            String.format(Locale.ROOT, "Error while creating an AdBreakInfo from JSON: %s", new Object[]{e.getMessage()});
            return null;
        }
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof AdBreakInfo)) {
            return false;
        }
        AdBreakInfo adBreakInfo = (AdBreakInfo) obj;
        return zzym.zza(this.zzGu, adBreakInfo.zzGu) && this.zzalJ == adBreakInfo.zzalJ && this.zzalE == adBreakInfo.zzalE && this.zzalK == adBreakInfo.zzalK && Arrays.equals(this.zzalL, adBreakInfo.zzalL);
    }

    public String[] getBreakClipIds() {
        return this.zzalL;
    }

    public long getDurationInMs() {
        return this.zzalE;
    }

    public String getId() {
        return this.zzGu;
    }

    public long getPlaybackPositionInMs() {
        return this.zzalJ;
    }

    int getVersionCode() {
        return this.mVersionCode;
    }

    public int hashCode() {
        return this.zzGu.hashCode();
    }

    public boolean isWatched() {
        return this.zzalK;
    }

    public void writeToParcel(Parcel parcel, int i) {
        zzb.zza(this, parcel, i);
    }
}
