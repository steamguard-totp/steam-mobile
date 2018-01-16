package com.google.android.gms.cast;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import android.text.TextUtils;
import android.util.Log;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.zzaa;
import com.google.android.gms.internal.zzym;
import java.util.Locale;
import org.json.JSONException;
import org.json.JSONObject;

public class AdBreakClipInfo extends zza {
    public static final Creator<AdBreakClipInfo> CREATOR = new zza();
    private final int mVersionCode;
    private final String zzGu;
    private final String zzalD;
    private final long zzalE;
    private final String zzalF;
    private final String zzalG;
    private String zzalH;
    private JSONObject zzalI;
    private final String zzzc;

    AdBreakClipInfo(int i, String str, String str2, long j, String str3, String str4, String str5, String str6) {
        this.mVersionCode = i;
        this.zzGu = str;
        this.zzalD = str2;
        this.zzalE = j;
        this.zzzc = str3;
        this.zzalF = str4;
        this.zzalG = str5;
        this.zzalH = str6;
        if (TextUtils.isEmpty(this.zzalH)) {
            this.zzalI = new JSONObject();
            return;
        }
        try {
            this.zzalI = new JSONObject(str6);
        } catch (JSONException e) {
            Log.w("AdBreakClipInfo", String.format(Locale.ROOT, "Error creating AdBreakClipInfo: %s", new Object[]{e.getMessage()}));
            this.zzalH = null;
            this.zzalI = new JSONObject();
        }
    }

    AdBreakClipInfo(String str, String str2, long j, String str3, String str4, String str5, String str6) {
        this(1, str, str2, j, str3, str4, str5, str6);
    }

    static AdBreakClipInfo zzk(JSONObject jSONObject) {
        if (jSONObject == null) {
            return null;
        }
        if (!jSONObject.has("id")) {
            return null;
        }
        try {
            String string = jSONObject.getString("id");
            long zzf = zzym.zzf((double) jSONObject.optLong("duration"));
            String optString = jSONObject.optString("clickThroughUrl", null);
            String optString2 = jSONObject.optString("contentUrl", null);
            String optString3 = jSONObject.optString("mimeType", null);
            String optString4 = jSONObject.optString("title", null);
            JSONObject optJSONObject = jSONObject.optJSONObject("customData");
            return new AdBreakClipInfo(string, optString4, zzf, optString2, optString3, optString, optJSONObject == null ? null : optJSONObject.toString());
        } catch (JSONException e) {
            String.format(Locale.ROOT, "Error while creating an AdBreakClipInfo from JSON: %s", new Object[]{e.getMessage()});
            return null;
        }
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof AdBreakClipInfo)) {
            return false;
        }
        AdBreakClipInfo adBreakClipInfo = (AdBreakClipInfo) obj;
        return zzym.zza(this.zzGu, adBreakClipInfo.zzGu) && zzym.zza(this.zzalD, adBreakClipInfo.zzalD) && this.zzalE == adBreakClipInfo.zzalE && zzym.zza(this.zzzc, adBreakClipInfo.zzzc) && zzym.zza(this.zzalF, adBreakClipInfo.zzalF) && zzym.zza(this.zzalG, adBreakClipInfo.zzalG) && zzym.zza(this.zzalH, adBreakClipInfo.zzalH);
    }

    public String getClickThroughUrl() {
        return this.zzalG;
    }

    public String getContentUrl() {
        return this.zzzc;
    }

    public long getDurationInMs() {
        return this.zzalE;
    }

    public String getId() {
        return this.zzGu;
    }

    public String getMimeType() {
        return this.zzalF;
    }

    public String getTitle() {
        return this.zzalD;
    }

    int getVersionCode() {
        return this.mVersionCode;
    }

    public int hashCode() {
        return zzaa.hashCode(this.zzGu, this.zzalD, Long.valueOf(this.zzalE), this.zzzc, this.zzalF, this.zzalG, this.zzalH);
    }

    public void writeToParcel(Parcel parcel, int i) {
        zza.zza(this, parcel, i);
    }

    String zzrH() {
        return this.zzalH;
    }
}
