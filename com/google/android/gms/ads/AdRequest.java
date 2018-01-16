package com.google.android.gms.ads;

import android.location.Location;
import android.os.Bundle;
import com.google.ads.mediation.admob.AdMobAdapter;
import com.google.android.gms.ads.mediation.MediationAdapter;
import com.google.android.gms.internal.zzey;
import com.google.android.gms.internal.zzey.zza;
import java.util.Date;

public final class AdRequest {
    public static final String DEVICE_ID_EMULATOR = zzey.DEVICE_ID_EMULATOR;
    private final zzey zzrE;

    public static final class Builder {
        private final zza zzrF = new zza();

        public Builder() {
            this.zzrF.zzM(AdRequest.DEVICE_ID_EMULATOR);
        }

        public Builder addKeyword(String str) {
            this.zzrF.zzL(str);
            return this;
        }

        public Builder addNetworkExtrasBundle(Class<? extends MediationAdapter> cls, Bundle bundle) {
            this.zzrF.zza(cls, bundle);
            if (cls.equals(AdMobAdapter.class) && bundle.getBoolean("_emulatorLiveAds")) {
                this.zzrF.zzN(AdRequest.DEVICE_ID_EMULATOR);
            }
            return this;
        }

        public Builder addTestDevice(String str) {
            this.zzrF.zzM(str);
            return this;
        }

        public AdRequest build() {
            return new AdRequest();
        }

        public Builder setBirthday(Date date) {
            this.zzrF.zza(date);
            return this;
        }

        public Builder setGender(int i) {
            this.zzrF.zzx(i);
            return this;
        }

        public Builder setIsDesignedForFamilies(boolean z) {
            this.zzrF.zzp(z);
            return this;
        }

        public Builder setLocation(Location location) {
            this.zzrF.zzb(location);
            return this;
        }

        public Builder tagForChildDirectedTreatment(boolean z) {
            this.zzrF.zzo(z);
            return this;
        }
    }

    private AdRequest(Builder builder) {
        this.zzrE = new zzey(builder.zzrF);
    }

    public zzey zzbq() {
        return this.zzrE;
    }
}
