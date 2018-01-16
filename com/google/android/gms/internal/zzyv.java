package com.google.android.gms.internal;

import com.google.android.gms.cast.MediaInfo;
import com.google.android.gms.cast.MediaQueueItem;
import com.google.android.gms.cast.MediaStatus;
import com.google.android.gms.common.util.zzh;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class zzyv extends zzyj {
    public static final String NAMESPACE = zzym.zzcQ("com.google.cast.media");
    private final List<zzyy> zzatX = new ArrayList();
    private long zzavF;
    private MediaStatus zzavG;
    private zza zzavH;
    private final zzyy zzavI = new zzyy(this.zzuI, 86400000);
    private final zzyy zzavJ = new zzyy(this.zzuI, 86400000);
    private final zzyy zzavK = new zzyy(this.zzuI, 86400000);
    private final zzyy zzavL = new zzyy(this.zzuI, 86400000);
    private final zzyy zzavM = new zzyy(this.zzuI, 86400000);
    private final zzyy zzavN = new zzyy(this.zzuI, 86400000);
    private final zzyy zzavO = new zzyy(this.zzuI, 86400000);
    private final zzyy zzavP = new zzyy(this.zzuI, 86400000);
    private final zzyy zzavQ = new zzyy(this.zzuI, 86400000);
    private final zzyy zzavR = new zzyy(this.zzuI, 86400000);
    private final zzyy zzavS = new zzyy(this.zzuI, 86400000);
    private final zzyy zzavT = new zzyy(this.zzuI, 86400000);
    private final zzyy zzavU = new zzyy(this.zzuI, 86400000);
    private final zzyy zzavV = new zzyy(this.zzuI, 86400000);

    public interface zza {
        void onAdBreakStatusUpdated();

        void onMetadataUpdated();

        void onPreloadStatusUpdated();

        void onQueueStatusUpdated();

        void onStatusUpdated();
    }

    public static class zzb extends Exception {
    }

    public zzyv(String str) {
        super(NAMESPACE, zzh.zzyv(), "MediaControlChannel", str, 1000);
        this.zzatX.add(this.zzavI);
        this.zzatX.add(this.zzavJ);
        this.zzatX.add(this.zzavK);
        this.zzatX.add(this.zzavL);
        this.zzatX.add(this.zzavM);
        this.zzatX.add(this.zzavN);
        this.zzatX.add(this.zzavO);
        this.zzatX.add(this.zzavP);
        this.zzatX.add(this.zzavQ);
        this.zzatX.add(this.zzavR);
        this.zzatX.add(this.zzavS);
        this.zzatX.add(this.zzavT);
        this.zzatX.add(this.zzavU);
        this.zzatX.add(this.zzavV);
        zzuo();
    }

    private void onAdBreakStatusUpdated() {
        if (this.zzavH != null) {
            this.zzavH.onAdBreakStatusUpdated();
        }
    }

    private void onMetadataUpdated() {
        if (this.zzavH != null) {
            this.zzavH.onMetadataUpdated();
        }
    }

    private void onPreloadStatusUpdated() {
        if (this.zzavH != null) {
            this.zzavH.onPreloadStatusUpdated();
        }
    }

    private void onQueueStatusUpdated() {
        if (this.zzavH != null) {
            this.zzavH.onQueueStatusUpdated();
        }
    }

    private void onStatusUpdated() {
        if (this.zzavH != null) {
            this.zzavH.onStatusUpdated();
        }
    }

    private long zza(double d, long j, long j2) {
        long elapsedRealtime = this.zzuI.elapsedRealtime() - this.zzavF;
        if (elapsedRealtime < 0) {
            elapsedRealtime = 0;
        }
        if (elapsedRealtime == 0) {
            return j;
        }
        elapsedRealtime = ((long) (((double) elapsedRealtime) * d)) + j;
        if (j2 <= 0 || elapsedRealtime <= j2) {
            j2 = elapsedRealtime < 0 ? 0 : elapsedRealtime;
        }
        return j2;
    }

    private void zza(long j, JSONObject jSONObject) throws JSONException {
        int i = 1;
        boolean test = this.zzavI.test(j);
        int i2 = (!this.zzavM.zzuq() || this.zzavM.test(j)) ? 0 : 1;
        if ((!this.zzavN.zzuq() || this.zzavN.test(j)) && (!this.zzavO.zzuq() || this.zzavO.test(j))) {
            i = 0;
        }
        i2 = i2 != 0 ? 2 : 0;
        if (i != 0) {
            i2 |= 1;
        }
        if (test || this.zzavG == null) {
            this.zzavG = new MediaStatus(jSONObject);
            this.zzavF = this.zzuI.elapsedRealtime();
            i2 = 127;
        } else {
            i2 = this.zzavG.zza(jSONObject, i2);
        }
        if ((i2 & 1) != 0) {
            this.zzavF = this.zzuI.elapsedRealtime();
            onStatusUpdated();
        }
        if ((i2 & 2) != 0) {
            this.zzavF = this.zzuI.elapsedRealtime();
            onStatusUpdated();
        }
        if ((i2 & 4) != 0) {
            onMetadataUpdated();
        }
        if ((i2 & 8) != 0) {
            onQueueStatusUpdated();
        }
        if ((i2 & 16) != 0) {
            onPreloadStatusUpdated();
        }
        if ((i2 & 32) != 0) {
            this.zzavF = this.zzuI.elapsedRealtime();
            onAdBreakStatusUpdated();
        }
        if ((i2 & 64) != 0) {
            this.zzavF = this.zzuI.elapsedRealtime();
            onStatusUpdated();
        }
        for (zzyy zzc : this.zzatX) {
            zzc.zzc(j, 0);
        }
    }

    private void zzuo() {
        this.zzavF = 0;
        this.zzavG = null;
        for (zzyy clear : this.zzatX) {
            clear.clear();
        }
    }

    public long getApproximateStreamPosition() {
        MediaInfo mediaInfo = getMediaInfo();
        if (mediaInfo == null || this.zzavF == 0) {
            return 0;
        }
        double playbackRate = this.zzavG.getPlaybackRate();
        long streamPosition = this.zzavG.getStreamPosition();
        return (playbackRate == 0.0d || this.zzavG.getPlayerState() != 2) ? streamPosition : zza(playbackRate, streamPosition, mediaInfo.getStreamDuration());
    }

    public MediaInfo getMediaInfo() {
        return this.zzavG == null ? null : this.zzavG.getMediaInfo();
    }

    public MediaStatus getMediaStatus() {
        return this.zzavG;
    }

    public long getStreamDuration() {
        MediaInfo mediaInfo = getMediaInfo();
        return mediaInfo != null ? mediaInfo.getStreamDuration() : 0;
    }

    protected boolean zzE(long j) {
        boolean z;
        for (zzyy zzd : this.zzatX) {
            zzd.zzd(j, 2102);
        }
        synchronized (zzyy.zzqW) {
            for (zzyy zzd2 : this.zzatX) {
                if (zzd2.zzuq()) {
                    z = true;
                    break;
                }
            }
            z = false;
        }
        return z;
    }

    public long zza(zzyx com_google_android_gms_internal_zzyx) throws IOException {
        JSONObject jSONObject = new JSONObject();
        long zzub = zzub();
        this.zzavP.zza(zzub, com_google_android_gms_internal_zzyx);
        zzao(true);
        try {
            jSONObject.put("requestId", zzub);
            jSONObject.put("type", "GET_STATUS");
            if (this.zzavG != null) {
                jSONObject.put("mediaSessionId", this.zzavG.zzsa());
            }
        } catch (JSONException e) {
        }
        zza(jSONObject.toString(), zzub, null);
        return zzub;
    }

    public long zza(zzyx com_google_android_gms_internal_zzyx, int i, long j, MediaQueueItem[] mediaQueueItemArr, int i2, Integer num, JSONObject jSONObject) throws IllegalArgumentException, IOException, zzb {
        if (j == -1 || j >= 0) {
            JSONObject jSONObject2 = new JSONObject();
            long zzub = zzub();
            this.zzavT.zza(zzub, com_google_android_gms_internal_zzyx);
            zzao(true);
            try {
                jSONObject2.put("requestId", zzub);
                jSONObject2.put("type", "QUEUE_UPDATE");
                jSONObject2.put("mediaSessionId", zzsa());
                if (i != 0) {
                    jSONObject2.put("currentItemId", i);
                }
                if (i2 != 0) {
                    jSONObject2.put("jump", i2);
                }
                if (mediaQueueItemArr != null && mediaQueueItemArr.length > 0) {
                    JSONArray jSONArray = new JSONArray();
                    for (int i3 = 0; i3 < mediaQueueItemArr.length; i3++) {
                        jSONArray.put(i3, mediaQueueItemArr[i3].toJson());
                    }
                    jSONObject2.put("items", jSONArray);
                }
                if (num != null) {
                    switch (num.intValue()) {
                        case 0:
                            jSONObject2.put("repeatMode", "REPEAT_OFF");
                            break;
                        case 1:
                            jSONObject2.put("repeatMode", "REPEAT_ALL");
                            break;
                        case 2:
                            jSONObject2.put("repeatMode", "REPEAT_SINGLE");
                            break;
                        case 3:
                            jSONObject2.put("repeatMode", "REPEAT_ALL_AND_SHUFFLE");
                            break;
                    }
                }
                if (j != -1) {
                    jSONObject2.put("currentTime", zzym.zzF(j));
                }
                if (jSONObject != null) {
                    jSONObject2.put("customData", jSONObject);
                }
            } catch (JSONException e) {
            }
            zza(jSONObject2.toString(), zzub, null);
            return zzub;
        }
        throw new IllegalArgumentException("playPosition cannot be negative: " + j);
    }

    public long zza(zzyx com_google_android_gms_internal_zzyx, long j, int i, JSONObject jSONObject) throws IOException, zzb {
        JSONObject jSONObject2 = new JSONObject();
        long zzub = zzub();
        this.zzavM.zza(zzub, com_google_android_gms_internal_zzyx);
        zzao(true);
        try {
            jSONObject2.put("requestId", zzub);
            jSONObject2.put("type", "SEEK");
            jSONObject2.put("mediaSessionId", zzsa());
            jSONObject2.put("currentTime", zzym.zzF(j));
            if (i == 1) {
                jSONObject2.put("resumeState", "PLAYBACK_START");
            } else if (i == 2) {
                jSONObject2.put("resumeState", "PLAYBACK_PAUSE");
            }
            if (jSONObject != null) {
                jSONObject2.put("customData", jSONObject);
            }
        } catch (JSONException e) {
        }
        zza(jSONObject2.toString(), zzub, null);
        return zzub;
    }

    public long zza(zzyx com_google_android_gms_internal_zzyx, JSONObject jSONObject) throws IOException, zzb {
        JSONObject jSONObject2 = new JSONObject();
        long zzub = zzub();
        this.zzavJ.zza(zzub, com_google_android_gms_internal_zzyx);
        zzao(true);
        try {
            jSONObject2.put("requestId", zzub);
            jSONObject2.put("type", "PAUSE");
            jSONObject2.put("mediaSessionId", zzsa());
            if (jSONObject != null) {
                jSONObject2.put("customData", jSONObject);
            }
        } catch (JSONException e) {
        }
        zza(jSONObject2.toString(), zzub, null);
        return zzub;
    }

    public long zza(zzyx com_google_android_gms_internal_zzyx, long[] jArr) throws IOException, zzb {
        JSONObject jSONObject = new JSONObject();
        long zzub = zzub();
        this.zzavQ.zza(zzub, com_google_android_gms_internal_zzyx);
        zzao(true);
        try {
            jSONObject.put("requestId", zzub);
            jSONObject.put("type", "EDIT_TRACKS_INFO");
            jSONObject.put("mediaSessionId", zzsa());
            JSONArray jSONArray = new JSONArray();
            for (int i = 0; i < jArr.length; i++) {
                jSONArray.put(i, jArr[i]);
            }
            jSONObject.put("activeTrackIds", jSONArray);
        } catch (JSONException e) {
        }
        zza(jSONObject.toString(), zzub, null);
        return zzub;
    }

    public void zza(zza com_google_android_gms_internal_zzyv_zza) {
        this.zzavH = com_google_android_gms_internal_zzyv_zza;
    }

    public void zzb(long j, int i) {
        for (zzyy zzc : this.zzatX) {
            zzc.zzc(j, i);
        }
    }

    public long zzc(zzyx com_google_android_gms_internal_zzyx, JSONObject jSONObject) throws IOException, zzb {
        JSONObject jSONObject2 = new JSONObject();
        long zzub = zzub();
        this.zzavK.zza(zzub, com_google_android_gms_internal_zzyx);
        zzao(true);
        try {
            jSONObject2.put("requestId", zzub);
            jSONObject2.put("type", "PLAY");
            jSONObject2.put("mediaSessionId", zzsa());
            if (jSONObject != null) {
                jSONObject2.put("customData", jSONObject);
            }
        } catch (JSONException e) {
        }
        zza(jSONObject2.toString(), zzub, null);
        return zzub;
    }

    public final void zzcO(String str) {
        this.zzaoQ.zzb("message received: %s", str);
        try {
            JSONObject jSONObject = new JSONObject(str);
            String string = jSONObject.getString("type");
            long optLong = jSONObject.optLong("requestId", -1);
            int i = -1;
            switch (string.hashCode()) {
                case -1830647528:
                    if (string.equals("LOAD_CANCELLED")) {
                        i = 3;
                        break;
                    }
                    break;
                case -1125000185:
                    if (string.equals("INVALID_REQUEST")) {
                        i = 4;
                        break;
                    }
                    break;
                case -262628938:
                    if (string.equals("LOAD_FAILED")) {
                        i = 2;
                        break;
                    }
                    break;
                case 431600379:
                    if (string.equals("INVALID_PLAYER_STATE")) {
                        i = 1;
                        break;
                    }
                    break;
                case 823510221:
                    if (string.equals("MEDIA_STATUS")) {
                        i = 0;
                        break;
                    }
                    break;
            }
            switch (i) {
                case 0:
                    JSONArray jSONArray = jSONObject.getJSONArray("status");
                    if (jSONArray.length() > 0) {
                        zza(optLong, jSONArray.getJSONObject(0));
                        return;
                    }
                    this.zzavG = null;
                    onStatusUpdated();
                    onMetadataUpdated();
                    onQueueStatusUpdated();
                    onPreloadStatusUpdated();
                    this.zzavP.zzc(optLong, 0);
                    return;
                case 1:
                    this.zzaoQ.zzf("received unexpected error: Invalid Player State.", new Object[0]);
                    jSONObject = jSONObject.optJSONObject("customData");
                    for (zzyy zzc : this.zzatX) {
                        zzc.zzc(optLong, 2100, jSONObject);
                    }
                    return;
                case 2:
                    this.zzavI.zzc(optLong, 2100, jSONObject.optJSONObject("customData"));
                    return;
                case 3:
                    this.zzavI.zzc(optLong, 2101, jSONObject.optJSONObject("customData"));
                    return;
                case 4:
                    this.zzaoQ.zzf("received unexpected error: Invalid Request.", new Object[0]);
                    jSONObject = jSONObject.optJSONObject("customData");
                    for (zzyy zzc2 : this.zzatX) {
                        zzc2.zzc(optLong, 2100, jSONObject);
                    }
                    return;
                default:
                    return;
            }
        } catch (JSONException e) {
            this.zzaoQ.zzf("Message is malformed (%s); ignoring: %s", e.getMessage(), str);
        }
        this.zzaoQ.zzf("Message is malformed (%s); ignoring: %s", e.getMessage(), str);
    }

    public long zzsa() throws zzb {
        if (this.zzavG != null) {
            return this.zzavG.zzsa();
        }
        throw new zzb();
    }

    public void zzua() {
        super.zzua();
        zzuo();
    }
}
