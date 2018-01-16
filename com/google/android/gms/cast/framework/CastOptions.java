package com.google.android.gms.cast.framework;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import android.text.TextUtils;
import com.google.android.gms.cast.LaunchOptions;
import com.google.android.gms.cast.framework.media.CastMediaOptions;
import com.google.android.gms.common.internal.safeparcel.zza;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public class CastOptions extends zza {
    public static final Creator<CastOptions> CREATOR = new zzb();
    private final int mVersionCode;
    private final LaunchOptions zzana;
    private final String zzaoY;
    private final List<String> zzaoZ;
    private final boolean zzapa;
    private final boolean zzapb;
    private final CastMediaOptions zzapc;
    private final boolean zzapd;
    private final double zzape;

    CastOptions(int i, String str, List<String> list, boolean z, LaunchOptions launchOptions, boolean z2, CastMediaOptions castMediaOptions, boolean z3, double d) {
        this.mVersionCode = i;
        if (TextUtils.isEmpty(str)) {
            str = "";
        }
        this.zzaoY = str;
        int size = list == null ? 0 : list.size();
        this.zzaoZ = new ArrayList(size);
        if (size > 0) {
            this.zzaoZ.addAll(list);
        }
        this.zzapa = z;
        if (launchOptions == null) {
            launchOptions = new LaunchOptions();
        }
        this.zzana = launchOptions;
        this.zzapb = z2;
        this.zzapc = castMediaOptions;
        this.zzapd = z3;
        this.zzape = d;
    }

    public CastMediaOptions getCastMediaOptions() {
        return this.zzapc;
    }

    public boolean getEnableReconnectionService() {
        return this.zzapd;
    }

    public LaunchOptions getLaunchOptions() {
        return this.zzana;
    }

    public String getReceiverApplicationId() {
        return this.zzaoY;
    }

    public boolean getResumeSavedSession() {
        return this.zzapb;
    }

    public boolean getStopReceiverApplicationWhenEndingSession() {
        return this.zzapa;
    }

    public List<String> getSupportedNamespaces() {
        return Collections.unmodifiableList(this.zzaoZ);
    }

    int getVersionCode() {
        return this.mVersionCode;
    }

    public double getVolumeDeltaBeforeIceCreamSandwich() {
        return this.zzape;
    }

    public void writeToParcel(Parcel parcel, int i) {
        zzb.zza(this, parcel, i);
    }
}
