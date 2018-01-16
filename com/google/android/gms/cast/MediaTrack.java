package com.google.android.gms.cast;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import android.text.TextUtils;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.zzaa;
import com.google.android.gms.common.util.zzp;
import com.google.android.gms.internal.zzym;
import org.json.JSONException;
import org.json.JSONObject;

public final class MediaTrack extends zza implements ReflectedParcelable {
    public static final Creator<MediaTrack> CREATOR = new zzm();
    private String mName;
    private final int mVersionCode;
    private String zzabW;
    private long zzahs;
    String zzalH;
    private JSONObject zzalI;
    private int zzanR;
    private int zzanS;
    private String zzanb;
    private String zzand;

    public static class Builder {
        private final MediaTrack zzanT;

        public Builder(long j, int i) throws IllegalArgumentException {
            this.zzanT = new MediaTrack(j, i);
        }

        public MediaTrack build() {
            return this.zzanT;
        }

        public Builder setContentId(String str) {
            this.zzanT.setContentId(str);
            return this;
        }

        public Builder setName(String str) {
            this.zzanT.setName(str);
            return this;
        }

        public Builder setSubtype(int i) throws IllegalArgumentException {
            this.zzanT.zzbP(i);
            return this;
        }
    }

    MediaTrack(int i, long j, int i2, String str, String str2, String str3, String str4, int i3, String str5) {
        this.mVersionCode = i;
        this.zzahs = j;
        this.zzanR = i2;
        this.zzanb = str;
        this.zzand = str2;
        this.mName = str3;
        this.zzabW = str4;
        this.zzanS = i3;
        this.zzalH = str5;
        if (this.zzalH != null) {
            try {
                this.zzalI = new JSONObject(this.zzalH);
                return;
            } catch (JSONException e) {
                this.zzalI = null;
                this.zzalH = null;
                return;
            }
        }
        this.zzalI = null;
    }

    MediaTrack(long j, int i) throws IllegalArgumentException {
        this(1, 0, 0, null, null, null, null, -1, null);
        this.zzahs = j;
        if (i <= 0 || i > 3) {
            throw new IllegalArgumentException("invalid type " + i);
        }
        this.zzanR = i;
    }

    MediaTrack(JSONObject jSONObject) throws JSONException {
        this(1, 0, 0, null, null, null, null, -1, null);
        zzn(jSONObject);
    }

    private void zzn(JSONObject jSONObject) throws JSONException {
        this.zzahs = jSONObject.getLong("trackId");
        String string = jSONObject.getString("type");
        if ("TEXT".equals(string)) {
            this.zzanR = 1;
        } else if ("AUDIO".equals(string)) {
            this.zzanR = 2;
        } else if ("VIDEO".equals(string)) {
            this.zzanR = 3;
        } else {
            String str = "invalid type: ";
            string = String.valueOf(string);
            throw new JSONException(string.length() != 0 ? str.concat(string) : new String(str));
        }
        this.zzanb = jSONObject.optString("trackContentId", null);
        this.zzand = jSONObject.optString("trackContentType", null);
        this.mName = jSONObject.optString("name", null);
        this.zzabW = jSONObject.optString("language", null);
        if (jSONObject.has("subtype")) {
            string = jSONObject.getString("subtype");
            if ("SUBTITLES".equals(string)) {
                this.zzanS = 1;
            } else if ("CAPTIONS".equals(string)) {
                this.zzanS = 2;
            } else if ("DESCRIPTIONS".equals(string)) {
                this.zzanS = 3;
            } else if ("CHAPTERS".equals(string)) {
                this.zzanS = 4;
            } else if ("METADATA".equals(string)) {
                this.zzanS = 5;
            } else {
                str = "invalid subtype: ";
                string = String.valueOf(string);
                throw new JSONException(string.length() != 0 ? str.concat(string) : new String(str));
            }
        }
        this.zzanS = 0;
        this.zzalI = jSONObject.optJSONObject("customData");
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof MediaTrack)) {
            return false;
        }
        MediaTrack mediaTrack = (MediaTrack) obj;
        if ((this.zzalI == null) != (mediaTrack.zzalI == null)) {
            return false;
        }
        if (this.zzalI != null && mediaTrack.zzalI != null && !zzp.zzf(this.zzalI, mediaTrack.zzalI)) {
            return false;
        }
        if (!(this.zzahs == mediaTrack.zzahs && this.zzanR == mediaTrack.zzanR && zzym.zza(this.zzanb, mediaTrack.zzanb) && zzym.zza(this.zzand, mediaTrack.zzand) && zzym.zza(this.mName, mediaTrack.mName) && zzym.zza(this.zzabW, mediaTrack.zzabW) && this.zzanS == mediaTrack.zzanS)) {
            z = false;
        }
        return z;
    }

    public String getContentId() {
        return this.zzanb;
    }

    public String getContentType() {
        return this.zzand;
    }

    public long getId() {
        return this.zzahs;
    }

    public String getLanguage() {
        return this.zzabW;
    }

    public String getName() {
        return this.mName;
    }

    public int getSubtype() {
        return this.zzanS;
    }

    public int getType() {
        return this.zzanR;
    }

    int getVersionCode() {
        return this.mVersionCode;
    }

    public int hashCode() {
        return zzaa.hashCode(Long.valueOf(this.zzahs), Integer.valueOf(this.zzanR), this.zzanb, this.zzand, this.mName, this.zzabW, Integer.valueOf(this.zzanS), String.valueOf(this.zzalI));
    }

    public void setContentId(String str) {
        this.zzanb = str;
    }

    void setName(String str) {
        this.mName = str;
    }

    public JSONObject toJson() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("trackId", this.zzahs);
            switch (this.zzanR) {
                case 1:
                    jSONObject.put("type", "TEXT");
                    break;
                case 2:
                    jSONObject.put("type", "AUDIO");
                    break;
                case 3:
                    jSONObject.put("type", "VIDEO");
                    break;
            }
            if (this.zzanb != null) {
                jSONObject.put("trackContentId", this.zzanb);
            }
            if (this.zzand != null) {
                jSONObject.put("trackContentType", this.zzand);
            }
            if (this.mName != null) {
                jSONObject.put("name", this.mName);
            }
            if (!TextUtils.isEmpty(this.zzabW)) {
                jSONObject.put("language", this.zzabW);
            }
            switch (this.zzanS) {
                case 1:
                    jSONObject.put("subtype", "SUBTITLES");
                    break;
                case 2:
                    jSONObject.put("subtype", "CAPTIONS");
                    break;
                case 3:
                    jSONObject.put("subtype", "DESCRIPTIONS");
                    break;
                case 4:
                    jSONObject.put("subtype", "CHAPTERS");
                    break;
                case 5:
                    jSONObject.put("subtype", "METADATA");
                    break;
            }
            if (this.zzalI != null) {
                jSONObject.put("customData", this.zzalI);
            }
        } catch (JSONException e) {
        }
        return jSONObject;
    }

    public void writeToParcel(Parcel parcel, int i) {
        this.zzalH = this.zzalI == null ? null : this.zzalI.toString();
        zzm.zza(this, parcel, i);
    }

    void zzbP(int i) throws IllegalArgumentException {
        if (i <= -1 || i > 5) {
            throw new IllegalArgumentException("invalid subtype " + i);
        } else if (i == 0 || this.zzanR == 1) {
            this.zzanS = i;
        } else {
            throw new IllegalArgumentException("subtypes are only valid for text tracks");
        }
    }
}
