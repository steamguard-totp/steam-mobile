package com.google.android.gms.cast;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import android.text.TextUtils;
import android.util.SparseArray;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.zzaa;
import com.google.android.gms.common.util.zzp;
import com.google.android.gms.internal.zzym;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public final class MediaStatus extends zza {
    public static final Creator<MediaStatus> CREATOR = new zzl();
    private final int mVersionCode;
    String zzalH;
    private JSONObject zzalI;
    private long zzanA;
    private int zzanB;
    private double zzanC;
    private int zzanD;
    private int zzanE;
    private long zzanF;
    long zzanG;
    private double zzanH;
    private boolean zzanI;
    private int zzanJ;
    private int zzanK;
    int zzanL;
    final ArrayList<MediaQueueItem> zzanM;
    private boolean zzanN;
    private AdBreakStatus zzanO;
    private VideoInfo zzanP;
    private final SparseArray<Integer> zzanQ;
    private MediaInfo zzank;
    private long[] zzany;

    MediaStatus(int i, MediaInfo mediaInfo, long j, int i2, double d, int i3, int i4, long j2, long j3, double d2, boolean z, long[] jArr, int i5, int i6, String str, int i7, List<MediaQueueItem> list, boolean z2, AdBreakStatus adBreakStatus, VideoInfo videoInfo) {
        this.zzanM = new ArrayList();
        this.zzanQ = new SparseArray();
        this.mVersionCode = i;
        this.zzank = mediaInfo;
        this.zzanA = j;
        this.zzanB = i2;
        this.zzanC = d;
        this.zzanD = i3;
        this.zzanE = i4;
        this.zzanF = j2;
        this.zzanG = j3;
        this.zzanH = d2;
        this.zzanI = z;
        this.zzany = jArr;
        this.zzanJ = i5;
        this.zzanK = i6;
        this.zzalH = str;
        if (this.zzalH != null) {
            try {
                this.zzalI = new JSONObject(this.zzalH);
            } catch (JSONException e) {
                this.zzalI = null;
                this.zzalH = null;
            }
        } else {
            this.zzalI = null;
        }
        this.zzanL = i7;
        if (!(list == null || list.isEmpty())) {
            zza((MediaQueueItem[]) list.toArray(new MediaQueueItem[list.size()]));
        }
        this.zzanN = z2;
        this.zzanO = adBreakStatus;
        this.zzanP = videoInfo;
    }

    public MediaStatus(JSONObject jSONObject) throws JSONException {
        this(2, null, 0, 0, 0.0d, 0, 0, 0, 0, 0.0d, false, null, 0, 0, null, 0, null, false, null, null);
        zza(jSONObject, 0);
    }

    private void zza(MediaQueueItem[] mediaQueueItemArr) {
        this.zzanM.clear();
        this.zzanQ.clear();
        for (int i = 0; i < mediaQueueItemArr.length; i++) {
            MediaQueueItem mediaQueueItem = mediaQueueItemArr[i];
            this.zzanM.add(mediaQueueItem);
            this.zzanQ.put(mediaQueueItem.getItemId(), Integer.valueOf(i));
        }
    }

    private boolean zza(MediaStatus mediaStatus) {
        return this.zzalI == null || mediaStatus.zzalI == null || zzp.zzf(this.zzalI, mediaStatus.zzalI);
    }

    private boolean zzf(int i, int i2, int i3, int i4) {
        if (i != 1) {
            return false;
        }
        switch (i2) {
            case 1:
            case 3:
                return i3 == 0;
            case 2:
                return i4 != 2;
            default:
                return true;
        }
    }

    private void zzsb() {
        this.zzanL = 0;
        this.zzanM.clear();
        this.zzanQ.clear();
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof MediaStatus)) {
            return false;
        }
        MediaStatus mediaStatus = (MediaStatus) obj;
        return (this.zzalI == null) != (mediaStatus.zzalI == null) ? false : this.zzanA == mediaStatus.zzanA && this.zzanB == mediaStatus.zzanB && this.zzanC == mediaStatus.zzanC && this.zzanD == mediaStatus.zzanD && this.zzanE == mediaStatus.zzanE && this.zzanF == mediaStatus.zzanF && this.zzanH == mediaStatus.zzanH && this.zzanI == mediaStatus.zzanI && this.zzanJ == mediaStatus.zzanJ && this.zzanK == mediaStatus.zzanK && this.zzanL == mediaStatus.zzanL && Arrays.equals(this.zzany, mediaStatus.zzany) && zzym.zza(Long.valueOf(this.zzanG), Long.valueOf(mediaStatus.zzanG)) && zzym.zza(this.zzanM, mediaStatus.zzanM) && zzym.zza(this.zzank, mediaStatus.zzank) && zza(mediaStatus) && this.zzanN == mediaStatus.isPlayingAd();
    }

    public long[] getActiveTrackIds() {
        return this.zzany;
    }

    public AdBreakStatus getAdBreakStatus() {
        return this.zzanO;
    }

    public AdBreakClipInfo getCurrentAdBreakClip() {
        if (this.zzanO == null || this.zzank == null) {
            return null;
        }
        Object breakClipId = this.zzanO.getBreakClipId();
        if (TextUtils.isEmpty(breakClipId)) {
            return null;
        }
        List<AdBreakClipInfo> adBreakClips = this.zzank.getAdBreakClips();
        if (adBreakClips == null || adBreakClips.isEmpty()) {
            return null;
        }
        for (AdBreakClipInfo adBreakClipInfo : adBreakClips) {
            if (breakClipId.equals(adBreakClipInfo.getId())) {
                return adBreakClipInfo;
            }
        }
        return null;
    }

    public int getCurrentItemId() {
        return this.zzanB;
    }

    public int getIdleReason() {
        return this.zzanE;
    }

    public Integer getIndexById(int i) {
        return (Integer) this.zzanQ.get(i);
    }

    public MediaQueueItem getItemById(int i) {
        Integer num = (Integer) this.zzanQ.get(i);
        return num == null ? null : (MediaQueueItem) this.zzanM.get(num.intValue());
    }

    public int getLoadingItemId() {
        return this.zzanJ;
    }

    public MediaInfo getMediaInfo() {
        return this.zzank;
    }

    public double getPlaybackRate() {
        return this.zzanC;
    }

    public int getPlayerState() {
        return this.zzanD;
    }

    public int getPreloadedItemId() {
        return this.zzanK;
    }

    public MediaQueueItem getQueueItemById(int i) {
        return getItemById(i);
    }

    public int getQueueItemCount() {
        return this.zzanM.size();
    }

    public int getQueueRepeatMode() {
        return this.zzanL;
    }

    public long getStreamPosition() {
        return this.zzanF;
    }

    public double getStreamVolume() {
        return this.zzanH;
    }

    int getVersionCode() {
        return this.mVersionCode;
    }

    public VideoInfo getVideoInfo() {
        return this.zzanP;
    }

    public int hashCode() {
        return zzaa.hashCode(this.zzank, Long.valueOf(this.zzanA), Integer.valueOf(this.zzanB), Double.valueOf(this.zzanC), Integer.valueOf(this.zzanD), Integer.valueOf(this.zzanE), Long.valueOf(this.zzanF), Long.valueOf(this.zzanG), Double.valueOf(this.zzanH), Boolean.valueOf(this.zzanI), Integer.valueOf(Arrays.hashCode(this.zzany)), Integer.valueOf(this.zzanJ), Integer.valueOf(this.zzanK), String.valueOf(this.zzalI), Integer.valueOf(this.zzanL), this.zzanM, Boolean.valueOf(this.zzanN));
    }

    public boolean isMute() {
        return this.zzanI;
    }

    public boolean isPlayingAd() {
        return this.zzanN;
    }

    public void writeToParcel(Parcel parcel, int i) {
        this.zzalH = this.zzalI == null ? null : this.zzalI.toString();
        zzl.zza(this, parcel, i);
    }

    public int zza(JSONObject jSONObject, int i) throws JSONException {
        int i2;
        int i3;
        double d;
        long zzf;
        boolean z;
        int i4 = 2;
        boolean z2 = true;
        long j = jSONObject.getLong("mediaSessionId");
        if (j != this.zzanA) {
            this.zzanA = j;
            i2 = 1;
        } else {
            i2 = 0;
        }
        if (jSONObject.has("playerState")) {
            String string = jSONObject.getString("playerState");
            i3 = string.equals("IDLE") ? 1 : string.equals("PLAYING") ? 2 : string.equals("PAUSED") ? 3 : string.equals("BUFFERING") ? 4 : 0;
            if (i3 != this.zzanD) {
                this.zzanD = i3;
                i2 |= 2;
            }
            if (i3 == 1 && jSONObject.has("idleReason")) {
                string = jSONObject.getString("idleReason");
                if (!string.equals("CANCELLED")) {
                    i4 = string.equals("INTERRUPTED") ? 3 : string.equals("FINISHED") ? 1 : string.equals("ERROR") ? 4 : 0;
                }
                if (i4 != this.zzanE) {
                    this.zzanE = i4;
                    i2 |= 2;
                }
            }
        }
        if (jSONObject.has("playbackRate")) {
            d = jSONObject.getDouble("playbackRate");
            if (this.zzanC != d) {
                this.zzanC = d;
                i2 |= 2;
            }
        }
        if (jSONObject.has("currentTime") && (i & 2) == 0) {
            zzf = zzym.zzf(jSONObject.getDouble("currentTime"));
            if (zzf != this.zzanF) {
                this.zzanF = zzf;
                i2 |= 2;
            }
        }
        if (jSONObject.has("supportedMediaCommands")) {
            zzf = jSONObject.getLong("supportedMediaCommands");
            if (zzf != this.zzanG) {
                this.zzanG = zzf;
                i2 |= 2;
            }
        }
        if (jSONObject.has("volume") && (i & 1) == 0) {
            JSONObject jSONObject2 = jSONObject.getJSONObject("volume");
            d = jSONObject2.getDouble("level");
            if (d != this.zzanH) {
                this.zzanH = d;
                i2 |= 2;
            }
            boolean z3 = jSONObject2.getBoolean("muted");
            if (z3 != this.zzanI) {
                this.zzanI = z3;
                i2 |= 2;
            }
        }
        long[] jArr = null;
        if (jSONObject.has("activeTrackIds")) {
            JSONArray jSONArray = jSONObject.getJSONArray("activeTrackIds");
            int length = jSONArray.length();
            jArr = new long[length];
            for (i4 = 0; i4 < length; i4++) {
                jArr[i4] = jSONArray.getLong(i4);
            }
            if (this.zzany == null) {
                z = true;
            } else if (this.zzany.length != length) {
                z = true;
            } else {
                for (i4 = 0; i4 < length; i4++) {
                    if (this.zzany[i4] != jArr[i4]) {
                        z = true;
                        break;
                    }
                }
                z = false;
            }
            if (z) {
                this.zzany = jArr;
            }
        } else {
            z = this.zzany != null;
        }
        if (z) {
            this.zzany = jArr;
            i2 |= 2;
        }
        if (jSONObject.has("customData")) {
            this.zzalI = jSONObject.getJSONObject("customData");
            this.zzalH = null;
            i2 |= 2;
        }
        if (jSONObject.has("media")) {
            jSONObject2 = jSONObject.getJSONObject("media");
            MediaInfo mediaInfo = new MediaInfo(jSONObject2);
            if (this.zzank == null || !(this.zzank == null || this.zzank.equals(mediaInfo))) {
                this.zzank = mediaInfo;
                i2 |= 2;
            }
            if (jSONObject2.has("metadata")) {
                i2 |= 4;
            }
        }
        if (jSONObject.has("currentItemId")) {
            i3 = jSONObject.getInt("currentItemId");
            if (this.zzanB != i3) {
                this.zzanB = i3;
                i2 |= 2;
            }
        }
        i3 = jSONObject.optInt("preloadedItemId", 0);
        if (this.zzanK != i3) {
            this.zzanK = i3;
            i2 |= 16;
        }
        i3 = jSONObject.optInt("loadingItemId", 0);
        if (this.zzanJ != i3) {
            this.zzanJ = i3;
            i2 |= 2;
        }
        if (zzf(this.zzanD, this.zzanE, this.zzanJ, this.zzank == null ? -1 : this.zzank.getStreamType())) {
            this.zzanB = 0;
            this.zzanJ = 0;
            this.zzanK = 0;
            if (!this.zzanM.isEmpty()) {
                zzsb();
                i2 |= 8;
            }
        } else if (zzp(jSONObject)) {
            i2 |= 8;
        }
        AdBreakStatus zzm = AdBreakStatus.zzm(jSONObject.optJSONObject("breakStatus"));
        if ((this.zzanO == null && zzm != null) || !(this.zzanO == null || this.zzanO.equals(zzm))) {
            if (zzm == null) {
                z2 = false;
            }
            zzak(z2);
            this.zzanO = zzm;
            i2 |= 32;
        }
        VideoInfo zzq = VideoInfo.zzq(jSONObject.optJSONObject("videoInfo"));
        if ((this.zzanP != null || zzq == null) && (this.zzanP == null || this.zzanP.equals(zzq))) {
            return i2;
        }
        this.zzanP = zzq;
        return i2 | 64;
    }

    public void zzak(boolean z) {
        this.zzanN = z;
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    boolean zzp(org.json.JSONObject r11) throws org.json.JSONException {
        /*
        r10 = this;
        r3 = 3;
        r0 = 2;
        r1 = 0;
        r2 = 1;
        r4 = "repeatMode";
        r4 = r11.has(r4);
        if (r4 == 0) goto L_0x00ef;
    L_0x000c:
        r4 = r10.zzanL;
        r5 = "repeatMode";
        r6 = r11.getString(r5);
        r5 = -1;
        r7 = r6.hashCode();
        switch(r7) {
            case -1118317585: goto L_0x0073;
            case -962896020: goto L_0x0069;
            case 1645938909: goto L_0x005f;
            case 1645952171: goto L_0x0055;
            default: goto L_0x001c;
        };
    L_0x001c:
        switch(r5) {
            case 0: goto L_0x007d;
            case 1: goto L_0x007f;
            case 2: goto L_0x0020;
            case 3: goto L_0x0081;
            default: goto L_0x001f;
        };
    L_0x001f:
        r0 = r4;
    L_0x0020:
        r3 = r10.zzanL;
        if (r3 == r0) goto L_0x00ef;
    L_0x0024:
        r10.zzanL = r0;
        r0 = r2;
    L_0x0027:
        r3 = "items";
        r3 = r11.has(r3);
        if (r3 == 0) goto L_0x00ed;
    L_0x002f:
        r3 = "items";
        r4 = r11.getJSONArray(r3);
        r5 = r4.length();
        r6 = new android.util.SparseArray;
        r6.<init>();
        r3 = r1;
    L_0x003f:
        if (r3 >= r5) goto L_0x0083;
    L_0x0041:
        r7 = r4.getJSONObject(r3);
        r8 = "itemId";
        r7 = r7.getInt(r8);
        r7 = java.lang.Integer.valueOf(r7);
        r6.put(r3, r7);
        r3 = r3 + 1;
        goto L_0x003f;
    L_0x0055:
        r7 = "REPEAT_OFF";
        r6 = r6.equals(r7);
        if (r6 == 0) goto L_0x001c;
    L_0x005d:
        r5 = r1;
        goto L_0x001c;
    L_0x005f:
        r7 = "REPEAT_ALL";
        r6 = r6.equals(r7);
        if (r6 == 0) goto L_0x001c;
    L_0x0067:
        r5 = r2;
        goto L_0x001c;
    L_0x0069:
        r7 = "REPEAT_SINGLE";
        r6 = r6.equals(r7);
        if (r6 == 0) goto L_0x001c;
    L_0x0071:
        r5 = r0;
        goto L_0x001c;
    L_0x0073:
        r7 = "REPEAT_ALL_AND_SHUFFLE";
        r6 = r6.equals(r7);
        if (r6 == 0) goto L_0x001c;
    L_0x007b:
        r5 = r3;
        goto L_0x001c;
    L_0x007d:
        r0 = r1;
        goto L_0x0020;
    L_0x007f:
        r0 = r2;
        goto L_0x0020;
    L_0x0081:
        r0 = r3;
        goto L_0x0020;
    L_0x0083:
        r7 = new com.google.android.gms.cast.MediaQueueItem[r5];
        r3 = r1;
        r1 = r0;
    L_0x0087:
        if (r3 >= r5) goto L_0x00dd;
    L_0x0089:
        r0 = r6.get(r3);
        r0 = (java.lang.Integer) r0;
        r8 = r4.getJSONObject(r3);
        r9 = r0.intValue();
        r9 = r10.getItemById(r9);
        if (r9 == 0) goto L_0x00b8;
    L_0x009d:
        r8 = r9.zzo(r8);
        r1 = r1 | r8;
        r7[r3] = r9;
        r0 = r0.intValue();
        r0 = r10.getIndexById(r0);
        r0 = r0.intValue();
        if (r3 == r0) goto L_0x00eb;
    L_0x00b2:
        r0 = r2;
    L_0x00b3:
        r1 = r3 + 1;
        r3 = r1;
        r1 = r0;
        goto L_0x0087;
    L_0x00b8:
        r0 = r0.intValue();
        r1 = r10.zzanB;
        if (r0 != r1) goto L_0x00d4;
    L_0x00c0:
        r0 = new com.google.android.gms.cast.MediaQueueItem$Builder;
        r1 = r10.zzank;
        r0.<init>(r1);
        r0 = r0.build();
        r7[r3] = r0;
        r0 = r7[r3];
        r0.zzo(r8);
        r0 = r2;
        goto L_0x00b3;
    L_0x00d4:
        r0 = new com.google.android.gms.cast.MediaQueueItem;
        r0.<init>(r8);
        r7[r3] = r0;
        r0 = r2;
        goto L_0x00b3;
    L_0x00dd:
        r0 = r10.zzanM;
        r0 = r0.size();
        if (r0 == r5) goto L_0x00e9;
    L_0x00e5:
        r10.zza(r7);
    L_0x00e8:
        return r2;
    L_0x00e9:
        r2 = r1;
        goto L_0x00e5;
    L_0x00eb:
        r0 = r1;
        goto L_0x00b3;
    L_0x00ed:
        r2 = r0;
        goto L_0x00e8;
    L_0x00ef:
        r0 = r1;
        goto L_0x0027;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.cast.MediaStatus.zzp(org.json.JSONObject):boolean");
    }

    public long zzsa() {
        return this.zzanA;
    }
}
