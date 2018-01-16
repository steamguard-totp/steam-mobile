package com.google.android.gms.internal;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

@zzmb
public class zzfu {
    private final Collection<zzft> zzAJ = new ArrayList();
    private final Collection<zzft<String>> zzAK = new ArrayList();
    private final Collection<zzft<String>> zzAL = new ArrayList();

    public void zza(zzft com_google_android_gms_internal_zzft) {
        this.zzAJ.add(com_google_android_gms_internal_zzft);
    }

    public void zzb(zzft<String> com_google_android_gms_internal_zzft_java_lang_String) {
        this.zzAK.add(com_google_android_gms_internal_zzft_java_lang_String);
    }

    public void zzc(zzft<String> com_google_android_gms_internal_zzft_java_lang_String) {
        this.zzAL.add(com_google_android_gms_internal_zzft_java_lang_String);
    }

    public List<String> zzfn() {
        List<String> arrayList = new ArrayList();
        for (zzft com_google_android_gms_internal_zzft : this.zzAK) {
            String str = (String) com_google_android_gms_internal_zzft.get();
            if (str != null) {
                arrayList.add(str);
            }
        }
        return arrayList;
    }

    public List<String> zzfo() {
        List<String> zzfn = zzfn();
        for (zzft com_google_android_gms_internal_zzft : this.zzAL) {
            String str = (String) com_google_android_gms_internal_zzft.get();
            if (str != null) {
                zzfn.add(str);
            }
        }
        return zzfn;
    }
}
