package com.google.android.gms.internal;

import java.util.Arrays;
import java.util.List;

public class zzazs extends zzazv {
    private final String mName;
    private zzazg zzbIt;
    private final List<String> zzbJu;
    private final List<zzbgd> zzbJv;

    public zzazs(zzazg com_google_android_gms_internal_zzazg, String str, List<String> list, List<zzbgd> list2) {
        this.zzbIt = com_google_android_gms_internal_zzazg;
        this.mName = str;
        this.zzbJu = list;
        this.zzbJv = list2;
    }

    public String getName() {
        return this.mName;
    }

    public String toString() {
        String str = this.mName;
        String valueOf = String.valueOf(this.zzbJu.toString());
        String valueOf2 = String.valueOf(this.zzbJv.toString());
        return new StringBuilder(((String.valueOf(str).length() + 26) + String.valueOf(valueOf).length()) + String.valueOf(valueOf2).length()).append(str).append("\n\tparams: ").append(valueOf).append("\n\t: statements: ").append(valueOf2).toString();
    }

    public zzbfw<?> zza(zzazg com_google_android_gms_internal_zzazg, zzbfw<?>... com_google_android_gms_internal_zzbfw_Arr) {
        try {
            zzazg zzQL = this.zzbIt.zzQL();
            for (int i = 0; i < this.zzbJu.size(); i++) {
                if (com_google_android_gms_internal_zzbfw_Arr.length > i) {
                    zzQL.zza((String) this.zzbJu.get(i), com_google_android_gms_internal_zzbfw_Arr[i]);
                } else {
                    zzQL.zza((String) this.zzbJu.get(i), zzbga.zzbKV);
                }
            }
            zzQL.zza("arguments", new zzbgb(Arrays.asList(com_google_android_gms_internal_zzbfw_Arr)));
            for (zzbgd zza : this.zzbJv) {
                zzbfw zza2 = zzbgf.zza(zzQL, zza);
                if ((zza2 instanceof zzbga) && ((zzbga) zza2).zzRM()) {
                    return (zzbfw) ((zzbga) zza2).zzRF();
                }
            }
        } catch (RuntimeException e) {
            String str = this.mName;
            String valueOf = String.valueOf(e.getMessage());
            zzayx.e(new StringBuilder((String.valueOf(str).length() + 33) + String.valueOf(valueOf).length()).append("Internal error - Function call: ").append(str).append("\n").append(valueOf).toString());
        }
        return zzbga.zzbKV;
    }

    public void zza(zzazg com_google_android_gms_internal_zzazg) {
        this.zzbIt = com_google_android_gms_internal_zzazg;
    }
}
