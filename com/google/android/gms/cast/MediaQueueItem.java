package com.google.android.gms.cast;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.zzaa;
import com.google.android.gms.common.util.zzp;
import com.google.android.gms.internal.zzym;
import java.util.Arrays;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class MediaQueueItem extends zza {
    public static final Creator<MediaQueueItem> CREATOR = new zzk();
    private final int mVersionCode;
    String zzalH;
    private JSONObject zzalI;
    private MediaInfo zzans;
    private int zzant;
    private boolean zzanu;
    private double zzanv;
    private double zzanw;
    private double zzanx;
    private long[] zzany;

    public static class Builder {
        private final MediaQueueItem zzanz;

        public Builder(MediaInfo mediaInfo) throws IllegalArgumentException {
            this.zzanz = new MediaQueueItem(mediaInfo);
        }

        public MediaQueueItem build() {
            this.zzanz.zzrZ();
            return this.zzanz;
        }
    }

    MediaQueueItem(int i, MediaInfo mediaInfo, int i2, boolean z, double d, double d2, double d3, long[] jArr, String str) {
        this.mVersionCode = i;
        this.zzans = mediaInfo;
        this.zzant = i2;
        this.zzanu = z;
        this.zzanv = d;
        this.zzanw = d2;
        this.zzanx = d3;
        this.zzany = jArr;
        this.zzalH = str;
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

    private MediaQueueItem(MediaInfo mediaInfo) throws IllegalArgumentException {
        this(1, mediaInfo, 0, true, 0.0d, Double.POSITIVE_INFINITY, 0.0d, null, null);
        if (mediaInfo == null) {
            throw new IllegalArgumentException("media cannot be null.");
        }
    }

    MediaQueueItem(JSONObject jSONObject) throws JSONException {
        this(1, null, 0, true, 0.0d, Double.POSITIVE_INFINITY, 0.0d, null, null);
        zzo(jSONObject);
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof MediaQueueItem)) {
            return false;
        }
        MediaQueueItem mediaQueueItem = (MediaQueueItem) obj;
        if ((this.zzalI == null) != (mediaQueueItem.zzalI == null)) {
            return false;
        }
        if (this.zzalI != null && mediaQueueItem.zzalI != null && !zzp.zzf(this.zzalI, mediaQueueItem.zzalI)) {
            return false;
        }
        if (!(zzym.zza(this.zzans, mediaQueueItem.zzans) && this.zzant == mediaQueueItem.zzant && this.zzanu == mediaQueueItem.zzanu && this.zzanv == mediaQueueItem.zzanv && this.zzanw == mediaQueueItem.zzanw && this.zzanx == mediaQueueItem.zzanx && Arrays.equals(this.zzany, mediaQueueItem.zzany))) {
            z = false;
        }
        return z;
    }

    public long[] getActiveTrackIds() {
        return this.zzany;
    }

    public boolean getAutoplay() {
        return this.zzanu;
    }

    public int getItemId() {
        return this.zzant;
    }

    public MediaInfo getMedia() {
        return this.zzans;
    }

    public double getPlaybackDuration() {
        return this.zzanw;
    }

    public double getPreloadTime() {
        return this.zzanx;
    }

    public double getStartTime() {
        return this.zzanv;
    }

    int getVersionCode() {
        return this.mVersionCode;
    }

    public int hashCode() {
        return zzaa.hashCode(this.zzans, Integer.valueOf(this.zzant), Boolean.valueOf(this.zzanu), Double.valueOf(this.zzanv), Double.valueOf(this.zzanw), Double.valueOf(this.zzanx), Integer.valueOf(Arrays.hashCode(this.zzany)), String.valueOf(this.zzalI));
    }

    public JSONObject toJson() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("media", this.zzans.toJson());
            if (this.zzant != 0) {
                jSONObject.put("itemId", this.zzant);
            }
            jSONObject.put("autoplay", this.zzanu);
            jSONObject.put("startTime", this.zzanv);
            if (this.zzanw != Double.POSITIVE_INFINITY) {
                jSONObject.put("playbackDuration", this.zzanw);
            }
            jSONObject.put("preloadTime", this.zzanx);
            if (this.zzany != null) {
                JSONArray jSONArray = new JSONArray();
                for (long put : this.zzany) {
                    jSONArray.put(put);
                }
                jSONObject.put("activeTrackIds", jSONArray);
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
        zzk.zza(this, parcel, i);
    }

    public boolean zzo(JSONObject jSONObject) throws JSONException {
        boolean z;
        boolean z2;
        double d;
        long[] jArr;
        if (jSONObject.has("media")) {
            this.zzans = new MediaInfo(jSONObject.getJSONObject("media"));
            z = true;
        } else {
            z = false;
        }
        if (jSONObject.has("itemId")) {
            int i = jSONObject.getInt("itemId");
            if (this.zzant != i) {
                this.zzant = i;
                z = true;
            }
        }
        if (jSONObject.has("autoplay")) {
            z2 = jSONObject.getBoolean("autoplay");
            if (this.zzanu != z2) {
                this.zzanu = z2;
                z = true;
            }
        }
        if (jSONObject.has("startTime")) {
            d = jSONObject.getDouble("startTime");
            if (Math.abs(d - this.zzanv) > 1.0E-7d) {
                this.zzanv = d;
                z = true;
            }
        }
        if (jSONObject.has("playbackDuration")) {
            d = jSONObject.getDouble("playbackDuration");
            if (Math.abs(d - this.zzanw) > 1.0E-7d) {
                this.zzanw = d;
                z = true;
            }
        }
        if (jSONObject.has("preloadTime")) {
            d = jSONObject.getDouble("preloadTime");
            if (Math.abs(d - this.zzanx) > 1.0E-7d) {
                this.zzanx = d;
                z = true;
            }
        }
        if (jSONObject.has("activeTrackIds")) {
            int i2;
            JSONArray jSONArray = jSONObject.getJSONArray("activeTrackIds");
            int length = jSONArray.length();
            long[] jArr2 = new long[length];
            for (i2 = 0; i2 < length; i2++) {
                jArr2[i2] = jSONArray.getLong(i2);
            }
            if (this.zzany == null) {
                jArr = jArr2;
                z2 = true;
            } else if (this.zzany.length != length) {
                jArr = jArr2;
                z2 = true;
            } else {
                for (i2 = 0; i2 < length; i2++) {
                    if (this.zzany[i2] != jArr2[i2]) {
                        jArr = jArr2;
                        z2 = true;
                        break;
                    }
                }
                long[] jArr3 = jArr2;
                z2 = false;
                jArr = jArr3;
            }
        } else {
            z2 = false;
            jArr = null;
        }
        if (z2) {
            this.zzany = jArr;
            z = true;
        }
        if (!jSONObject.has("customData")) {
            return z;
        }
        this.zzalI = jSONObject.getJSONObject("customData");
        return true;
    }

    void zzrZ() throws IllegalArgumentException {
        if (this.zzans == null) {
            throw new IllegalArgumentException("media cannot be null.");
        } else if (Double.isNaN(this.zzanv) || this.zzanv < 0.0d) {
            throw new IllegalArgumentException("startTime cannot be negative or NaN.");
        } else if (Double.isNaN(this.zzanw)) {
            throw new IllegalArgumentException("playbackDuration cannot be NaN.");
        } else if (Double.isNaN(this.zzanx) || this.zzanx < 0.0d) {
            throw new IllegalArgumentException("preloadTime cannot be negative or Nan.");
        }
    }
}
