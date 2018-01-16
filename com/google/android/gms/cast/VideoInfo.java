package com.google.android.gms.cast;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.zzaa;
import java.util.Locale;
import org.json.JSONException;
import org.json.JSONObject;

public final class VideoInfo extends zza {
    public static final Creator<VideoInfo> CREATOR = new zzo();
    private final int mVersionCode;
    private int zzaoO;
    private int zzrG;
    private int zzrH;

    VideoInfo(int i, int i2, int i3, int i4) {
        this.mVersionCode = i;
        this.zzrG = i2;
        this.zzrH = i3;
        this.zzaoO = i4;
    }

    static VideoInfo zzq(JSONObject jSONObject) {
        int i = 2;
        if (jSONObject == null) {
            return null;
        }
        try {
            String string = jSONObject.getString("hdrType");
            int i2 = -1;
            switch (string.hashCode()) {
                case 3218:
                    if (string.equals("dv")) {
                        i2 = 0;
                        break;
                    }
                    break;
                case 103158:
                    if (string.equals("hdr")) {
                        i2 = 2;
                        break;
                    }
                    break;
                case 113729:
                    if (string.equals("sdr")) {
                        i2 = 3;
                        break;
                    }
                    break;
                case 99136405:
                    if (string.equals("hdr10")) {
                        i2 = 1;
                        break;
                    }
                    break;
            }
            switch (i2) {
                case 0:
                    i = 3;
                    break;
                case 1:
                    break;
                case 2:
                    i = 4;
                    break;
                case 3:
                    i = 1;
                    break;
                default:
                    String.format(Locale.ROOT, "Unknown HDR type: %s", new Object[]{string});
                    i = 0;
                    break;
            }
            return new VideoInfo(1, jSONObject.getInt("width"), jSONObject.getInt("height"), i);
        } catch (JSONException e) {
            String.format(Locale.ROOT, "Error while creating a VideoInfo instance from JSON: %s", new Object[]{e.getMessage()});
            return null;
        }
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof VideoInfo)) {
            return false;
        }
        VideoInfo videoInfo = (VideoInfo) obj;
        return this.zzrH == videoInfo.getHeight() && this.zzrG == videoInfo.getWidth() && this.zzaoO == videoInfo.getHdrType();
    }

    public int getHdrType() {
        return this.zzaoO;
    }

    public int getHeight() {
        return this.zzrH;
    }

    int getVersionCode() {
        return this.mVersionCode;
    }

    public int getWidth() {
        return this.zzrG;
    }

    public int hashCode() {
        return zzaa.hashCode(Integer.valueOf(this.zzrH), Integer.valueOf(this.zzrG), Integer.valueOf(this.zzaoO));
    }

    public void writeToParcel(Parcel parcel, int i) {
        zzo.zza(this, parcel, i);
    }
}
