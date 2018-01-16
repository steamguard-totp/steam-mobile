package com.google.android.gms.cast;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import android.text.TextUtils;
import com.google.android.gms.common.images.WebImage;
import com.google.android.gms.internal.zzyz;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import org.json.JSONException;
import org.json.JSONObject;

public class MediaMetadata extends com.google.android.gms.common.internal.safeparcel.zza {
    public static final Creator<MediaMetadata> CREATOR = new zzj();
    private static final String[] zzanl = new String[]{null, "String", "int", "double", "ISO-8601 date String"};
    private static final zza zzanm = new zza().zzc("com.google.android.gms.cast.metadata.CREATION_DATE", "creationDateTime", 4).zzc("com.google.android.gms.cast.metadata.RELEASE_DATE", "releaseDate", 4).zzc("com.google.android.gms.cast.metadata.BROADCAST_DATE", "originalAirdate", 4).zzc("com.google.android.gms.cast.metadata.TITLE", "title", 1).zzc("com.google.android.gms.cast.metadata.SUBTITLE", "subtitle", 1).zzc("com.google.android.gms.cast.metadata.ARTIST", "artist", 1).zzc("com.google.android.gms.cast.metadata.ALBUM_ARTIST", "albumArtist", 1).zzc("com.google.android.gms.cast.metadata.ALBUM_TITLE", "albumName", 1).zzc("com.google.android.gms.cast.metadata.COMPOSER", "composer", 1).zzc("com.google.android.gms.cast.metadata.DISC_NUMBER", "discNumber", 2).zzc("com.google.android.gms.cast.metadata.TRACK_NUMBER", "trackNumber", 2).zzc("com.google.android.gms.cast.metadata.SEASON_NUMBER", "season", 2).zzc("com.google.android.gms.cast.metadata.EPISODE_NUMBER", "episode", 2).zzc("com.google.android.gms.cast.metadata.SERIES_TITLE", "seriesTitle", 1).zzc("com.google.android.gms.cast.metadata.STUDIO", "studio", 1).zzc("com.google.android.gms.cast.metadata.WIDTH", "width", 2).zzc("com.google.android.gms.cast.metadata.HEIGHT", "height", 2).zzc("com.google.android.gms.cast.metadata.LOCATION_NAME", "location", 1).zzc("com.google.android.gms.cast.metadata.LOCATION_LATITUDE", "latitude", 3).zzc("com.google.android.gms.cast.metadata.LOCATION_LONGITUDE", "longitude", 3);
    private final int mVersionCode;
    private final List<WebImage> zzFT;
    final Bundle zzann;
    private int zzano;

    private static class zza {
        private final Map<String, String> zzanp = new HashMap();
        private final Map<String, String> zzanq = new HashMap();
        private final Map<String, Integer> zzanr = new HashMap();

        public zza zzc(String str, String str2, int i) {
            this.zzanp.put(str, str2);
            this.zzanq.put(str2, str);
            this.zzanr.put(str, Integer.valueOf(i));
            return this;
        }

        public String zzcF(String str) {
            return (String) this.zzanp.get(str);
        }

        public String zzcG(String str) {
            return (String) this.zzanq.get(str);
        }

        public int zzcH(String str) {
            Integer num = (Integer) this.zzanr.get(str);
            return num != null ? num.intValue() : 0;
        }
    }

    public MediaMetadata() {
        this(0);
    }

    public MediaMetadata(int i) {
        this(1, new ArrayList(), new Bundle(), i);
    }

    MediaMetadata(int i, List<WebImage> list, Bundle bundle, int i2) {
        this.mVersionCode = i;
        this.zzFT = list;
        this.zzann = bundle;
        this.zzano = i2;
    }

    private void zza(JSONObject jSONObject, String... strArr) {
        try {
            for (String str : strArr) {
                if (this.zzann.containsKey(str)) {
                    switch (zzanm.zzcH(str)) {
                        case 1:
                        case 4:
                            jSONObject.put(zzanm.zzcF(str), this.zzann.getString(str));
                            break;
                        case 2:
                            jSONObject.put(zzanm.zzcF(str), this.zzann.getInt(str));
                            break;
                        case 3:
                            jSONObject.put(zzanm.zzcF(str), this.zzann.getDouble(str));
                            break;
                        default:
                            break;
                    }
                }
            }
            for (String str2 : this.zzann.keySet()) {
                if (!str2.startsWith("com.google.")) {
                    Object obj = this.zzann.get(str2);
                    if (obj instanceof String) {
                        jSONObject.put(str2, obj);
                    } else if (obj instanceof Integer) {
                        jSONObject.put(str2, obj);
                    } else if (obj instanceof Double) {
                        jSONObject.put(str2, obj);
                    }
                }
            }
        } catch (JSONException e) {
        }
    }

    private void zzb(JSONObject jSONObject, String... strArr) {
        Set hashSet = new HashSet(Arrays.asList(strArr));
        try {
            Iterator keys = jSONObject.keys();
            while (keys.hasNext()) {
                String str = (String) keys.next();
                if (!"metadataType".equals(str)) {
                    String zzcG = zzanm.zzcG(str);
                    if (zzcG == null) {
                        Object obj = jSONObject.get(str);
                        if (obj instanceof String) {
                            this.zzann.putString(str, (String) obj);
                        } else if (obj instanceof Integer) {
                            this.zzann.putInt(str, ((Integer) obj).intValue());
                        } else if (obj instanceof Double) {
                            this.zzann.putDouble(str, ((Double) obj).doubleValue());
                        }
                    } else if (hashSet.contains(zzcG)) {
                        try {
                            Object obj2 = jSONObject.get(str);
                            if (obj2 != null) {
                                switch (zzanm.zzcH(zzcG)) {
                                    case 1:
                                        if (!(obj2 instanceof String)) {
                                            break;
                                        }
                                        this.zzann.putString(zzcG, (String) obj2);
                                        break;
                                    case 2:
                                        if (!(obj2 instanceof Integer)) {
                                            break;
                                        }
                                        this.zzann.putInt(zzcG, ((Integer) obj2).intValue());
                                        break;
                                    case 3:
                                        if (!(obj2 instanceof Double)) {
                                            break;
                                        }
                                        this.zzann.putDouble(zzcG, ((Double) obj2).doubleValue());
                                        break;
                                    case 4:
                                        if ((obj2 instanceof String) && zzyz.zzcV((String) obj2) != null) {
                                            this.zzann.putString(zzcG, (String) obj2);
                                            break;
                                        }
                                    default:
                                        break;
                                }
                            }
                        } catch (JSONException e) {
                        }
                    }
                }
            }
        } catch (JSONException e2) {
        }
    }

    private boolean zzb(Bundle bundle, Bundle bundle2) {
        if (bundle.size() != bundle2.size()) {
            return false;
        }
        for (String str : bundle.keySet()) {
            Object obj = bundle.get(str);
            Object obj2 = bundle2.get(str);
            if ((obj instanceof Bundle) && (obj2 instanceof Bundle) && !zzb((Bundle) obj, (Bundle) obj2)) {
                return false;
            }
            if (obj == null) {
                if (obj2 != null || !bundle2.containsKey(str)) {
                    return false;
                }
            } else if (!obj.equals(obj2)) {
                return false;
            }
        }
        return true;
    }

    private void zzg(String str, int i) throws IllegalArgumentException {
        if (TextUtils.isEmpty(str)) {
            throw new IllegalArgumentException("null and empty keys are not allowed");
        }
        int zzcH = zzanm.zzcH(str);
        if (zzcH != i && zzcH != 0) {
            String valueOf = String.valueOf(zzanl[i]);
            throw new IllegalArgumentException(new StringBuilder((String.valueOf(str).length() + 21) + String.valueOf(valueOf).length()).append("Value for ").append(str).append(" must be a ").append(valueOf).toString());
        }
    }

    public void clear() {
        this.zzann.clear();
        this.zzFT.clear();
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof MediaMetadata)) {
            return false;
        }
        MediaMetadata mediaMetadata = (MediaMetadata) obj;
        return zzb(this.zzann, mediaMetadata.zzann) && this.zzFT.equals(mediaMetadata.zzFT);
    }

    public List<WebImage> getImages() {
        return this.zzFT;
    }

    public int getMediaType() {
        return this.zzano;
    }

    public String getString(String str) {
        zzg(str, 1);
        return this.zzann.getString(str);
    }

    int getVersionCode() {
        return this.mVersionCode;
    }

    public boolean hasImages() {
        return (this.zzFT == null || this.zzFT.isEmpty()) ? false : true;
    }

    public int hashCode() {
        int i = 17;
        for (String str : this.zzann.keySet()) {
            i *= 31;
            i = this.zzann.get(str).hashCode() + i;
        }
        return (i * 31) + this.zzFT.hashCode();
    }

    public JSONObject toJson() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("metadataType", this.zzano);
        } catch (JSONException e) {
        }
        zzyz.zza(jSONObject, this.zzFT);
        switch (this.zzano) {
            case 0:
                zza(jSONObject, "com.google.android.gms.cast.metadata.TITLE", "com.google.android.gms.cast.metadata.ARTIST", "com.google.android.gms.cast.metadata.SUBTITLE", "com.google.android.gms.cast.metadata.RELEASE_DATE");
                break;
            case 1:
                zza(jSONObject, "com.google.android.gms.cast.metadata.TITLE", "com.google.android.gms.cast.metadata.STUDIO", "com.google.android.gms.cast.metadata.SUBTITLE", "com.google.android.gms.cast.metadata.RELEASE_DATE");
                break;
            case 2:
                zza(jSONObject, "com.google.android.gms.cast.metadata.TITLE", "com.google.android.gms.cast.metadata.SERIES_TITLE", "com.google.android.gms.cast.metadata.SEASON_NUMBER", "com.google.android.gms.cast.metadata.EPISODE_NUMBER", "com.google.android.gms.cast.metadata.BROADCAST_DATE");
                break;
            case 3:
                zza(jSONObject, "com.google.android.gms.cast.metadata.TITLE", "com.google.android.gms.cast.metadata.ARTIST", "com.google.android.gms.cast.metadata.ALBUM_TITLE", "com.google.android.gms.cast.metadata.ALBUM_ARTIST", "com.google.android.gms.cast.metadata.COMPOSER", "com.google.android.gms.cast.metadata.TRACK_NUMBER", "com.google.android.gms.cast.metadata.DISC_NUMBER", "com.google.android.gms.cast.metadata.RELEASE_DATE");
                break;
            case 4:
                zza(jSONObject, "com.google.android.gms.cast.metadata.TITLE", "com.google.android.gms.cast.metadata.ARTIST", "com.google.android.gms.cast.metadata.LOCATION_NAME", "com.google.android.gms.cast.metadata.LOCATION_LATITUDE", "com.google.android.gms.cast.metadata.LOCATION_LONGITUDE", "com.google.android.gms.cast.metadata.WIDTH", "com.google.android.gms.cast.metadata.HEIGHT", "com.google.android.gms.cast.metadata.CREATION_DATE");
                break;
            default:
                zza(jSONObject, new String[0]);
                break;
        }
        return jSONObject;
    }

    public void writeToParcel(Parcel parcel, int i) {
        zzj.zza(this, parcel, i);
    }

    public void zzn(JSONObject jSONObject) {
        clear();
        this.zzano = 0;
        try {
            this.zzano = jSONObject.getInt("metadataType");
        } catch (JSONException e) {
        }
        zzyz.zza(this.zzFT, jSONObject);
        switch (this.zzano) {
            case 0:
                zzb(jSONObject, "com.google.android.gms.cast.metadata.TITLE", "com.google.android.gms.cast.metadata.ARTIST", "com.google.android.gms.cast.metadata.SUBTITLE", "com.google.android.gms.cast.metadata.RELEASE_DATE");
                return;
            case 1:
                zzb(jSONObject, "com.google.android.gms.cast.metadata.TITLE", "com.google.android.gms.cast.metadata.STUDIO", "com.google.android.gms.cast.metadata.SUBTITLE", "com.google.android.gms.cast.metadata.RELEASE_DATE");
                return;
            case 2:
                zzb(jSONObject, "com.google.android.gms.cast.metadata.TITLE", "com.google.android.gms.cast.metadata.SERIES_TITLE", "com.google.android.gms.cast.metadata.SEASON_NUMBER", "com.google.android.gms.cast.metadata.EPISODE_NUMBER", "com.google.android.gms.cast.metadata.BROADCAST_DATE");
                return;
            case 3:
                zzb(jSONObject, "com.google.android.gms.cast.metadata.TITLE", "com.google.android.gms.cast.metadata.ALBUM_TITLE", "com.google.android.gms.cast.metadata.ARTIST", "com.google.android.gms.cast.metadata.ALBUM_ARTIST", "com.google.android.gms.cast.metadata.COMPOSER", "com.google.android.gms.cast.metadata.TRACK_NUMBER", "com.google.android.gms.cast.metadata.DISC_NUMBER", "com.google.android.gms.cast.metadata.RELEASE_DATE");
                return;
            case 4:
                zzb(jSONObject, "com.google.android.gms.cast.metadata.TITLE", "com.google.android.gms.cast.metadata.ARTIST", "com.google.android.gms.cast.metadata.LOCATION_NAME", "com.google.android.gms.cast.metadata.LOCATION_LATITUDE", "com.google.android.gms.cast.metadata.LOCATION_LONGITUDE", "com.google.android.gms.cast.metadata.WIDTH", "com.google.android.gms.cast.metadata.HEIGHT", "com.google.android.gms.cast.metadata.CREATION_DATE");
                return;
            default:
                zzb(jSONObject, new String[0]);
                return;
        }
    }
}
