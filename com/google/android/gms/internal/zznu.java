package com.google.android.gms.internal;

import com.google.android.gms.ads.reward.RewardItem;

@zzmb
public class zznu implements RewardItem {
    private final zznq zzUJ;

    public zznu(zznq com_google_android_gms_internal_zznq) {
        this.zzUJ = com_google_android_gms_internal_zznq;
    }

    public int getAmount() {
        int i = 0;
        if (this.zzUJ != null) {
            try {
                i = this.zzUJ.getAmount();
            } catch (Throwable e) {
                zzpy.zzc("Could not forward getAmount to RewardItem", e);
            }
        }
        return i;
    }

    public String getType() {
        String str = null;
        if (this.zzUJ != null) {
            try {
                str = this.zzUJ.getType();
            } catch (Throwable e) {
                zzpy.zzc("Could not forward getType to RewardItem", e);
            }
        }
        return str;
    }
}
