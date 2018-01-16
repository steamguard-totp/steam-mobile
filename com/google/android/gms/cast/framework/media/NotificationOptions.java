package com.google.android.gms.cast.framework.media;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zza;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

public class NotificationOptions extends zza {
    public static final Creator<NotificationOptions> CREATOR = new zze();
    private static final List<String> zzaqR = Arrays.asList(new String[]{"com.google.android.gms.cast.framework.action.TOGGLE_PLAYBACK", "com.google.android.gms.cast.framework.action.STOP_CASTING"});
    private static final int[] zzaqS = new int[]{0, 1};
    private final int mVersionCode;
    private final List<String> zzaqT;
    private final int[] zzaqU;
    private final long zzaqV;
    private final String zzaqW;
    private final int zzaqX;
    private final int zzaqY;
    private final int zzaqZ;
    private final int zzara;
    private final int zzarb;
    private final int zzarc;
    private final int zzard;
    private final int zzare;
    private final int zzarf;
    private final int zzarg;
    private final int zzarh;
    private final int zzari;
    private final int zzarj;
    private final int zzark;
    private final int zzarl;
    private final int zzarm;
    private final int zzarn;
    private final int zzaro;
    private final int zzarp;
    private final int zzarq;
    private final int zzarr;
    private final int zzars;
    private final int zzart;
    private final int zzaru;
    private final int zzarv;
    private final int zzarw;
    private final int zzarx;

    public NotificationOptions(int i, List<String> list, int[] iArr, long j, String str, int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9, int i10, int i11, int i12, int i13, int i14, int i15, int i16, int i17, int i18, int i19, int i20, int i21, int i22, int i23, int i24, int i25, int i26, int i27, int i28) {
        this.mVersionCode = i;
        if (list != null) {
            this.zzaqT = new ArrayList(list);
        } else {
            this.zzaqT = null;
        }
        if (iArr != null) {
            this.zzaqU = Arrays.copyOf(iArr, iArr.length);
        } else {
            this.zzaqU = null;
        }
        this.zzaqV = j;
        this.zzaqW = str;
        this.zzaqX = i2;
        this.zzaqY = i3;
        this.zzaqZ = i4;
        this.zzara = i5;
        this.zzarb = i6;
        this.zzarc = i7;
        this.zzard = i8;
        this.zzare = i9;
        this.zzarf = i10;
        this.zzarg = i11;
        this.zzarh = i12;
        this.zzari = i13;
        this.zzarj = i14;
        this.zzark = i15;
        this.zzarl = i16;
        this.zzarm = i17;
        this.zzarn = i18;
        this.zzaro = i19;
        this.zzarp = i20;
        this.zzarq = i21;
        this.zzarr = i22;
        this.zzars = i23;
        this.zzart = i24;
        this.zzaru = i25;
        this.zzarv = i26;
        this.zzarw = i27;
        this.zzarx = i28;
    }

    public List<String> getActions() {
        return this.zzaqT;
    }

    public int getCastingToDeviceStringResId() {
        return this.zzarl;
    }

    public int[] getCompatActionIndices() {
        return Arrays.copyOf(this.zzaqU, this.zzaqU.length);
    }

    public int getDisconnectDrawableResId() {
        return this.zzarj;
    }

    public int getForward10DrawableResId() {
        return this.zzare;
    }

    public int getForward30DrawableResId() {
        return this.zzarf;
    }

    public int getForwardDrawableResId() {
        return this.zzard;
    }

    public int getPauseDrawableResId() {
        return this.zzaqZ;
    }

    public int getPlayDrawableResId() {
        return this.zzara;
    }

    public int getRewind10DrawableResId() {
        return this.zzarh;
    }

    public int getRewind30DrawableResId() {
        return this.zzari;
    }

    public int getRewindDrawableResId() {
        return this.zzarg;
    }

    public int getSkipNextDrawableResId() {
        return this.zzarb;
    }

    public int getSkipPrevDrawableResId() {
        return this.zzarc;
    }

    public long getSkipStepMs() {
        return this.zzaqV;
    }

    public int getSmallIconDrawableResId() {
        return this.zzaqX;
    }

    public int getStopLiveStreamDrawableResId() {
        return this.zzaqY;
    }

    public int getStopLiveStreamTitleResId() {
        return this.zzarm;
    }

    public String getTargetActivityClassName() {
        return this.zzaqW;
    }

    int getVersionCode() {
        return this.mVersionCode;
    }

    public void writeToParcel(Parcel parcel, int i) {
        zze.zza(this, parcel, i);
    }

    public int zzsT() {
        return this.zzark;
    }

    public int zzsU() {
        return this.zzarn;
    }

    public int zzsV() {
        return this.zzaro;
    }

    public int zzsW() {
        return this.zzarp;
    }

    public int zzsX() {
        return this.zzarq;
    }

    public int zzsY() {
        return this.zzarr;
    }

    public int zzsZ() {
        return this.zzars;
    }

    public int zzta() {
        return this.zzart;
    }

    public int zztb() {
        return this.zzaru;
    }

    public int zztc() {
        return this.zzarv;
    }

    public int zztd() {
        return this.zzarw;
    }

    public int zzte() {
        return this.zzarx;
    }
}
