package com.google.android.gms.internal;

import android.os.Bundle;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;
import java.util.TreeSet;

@zzmb
class zzit {
    private final Object[] mParams;

    zzit(zzdy com_google_android_gms_internal_zzdy, String str, int i) {
        this.mParams = zza(com_google_android_gms_internal_zzdy, str, i);
    }

    private static Object[] zza(zzdy com_google_android_gms_internal_zzdy, String str, int i) {
        Set hashSet = new HashSet(Arrays.asList(((String) zzfx.zzCC.get()).split(",")));
        ArrayList arrayList = new ArrayList();
        arrayList.add(str);
        if (hashSet.contains("networkType")) {
            arrayList.add(Integer.valueOf(i));
        }
        if (hashSet.contains("birthday")) {
            arrayList.add(Long.valueOf(com_google_android_gms_internal_zzdy.zzyF));
        }
        if (hashSet.contains("extras")) {
            arrayList.add(zzc(com_google_android_gms_internal_zzdy.extras));
        }
        if (hashSet.contains("gender")) {
            arrayList.add(Integer.valueOf(com_google_android_gms_internal_zzdy.zzyG));
        }
        if (hashSet.contains("keywords")) {
            if (com_google_android_gms_internal_zzdy.zzyH != null) {
                arrayList.add(com_google_android_gms_internal_zzdy.zzyH.toString());
            } else {
                arrayList.add(null);
            }
        }
        if (hashSet.contains("isTestDevice")) {
            arrayList.add(Boolean.valueOf(com_google_android_gms_internal_zzdy.zzyI));
        }
        if (hashSet.contains("tagForChildDirectedTreatment")) {
            arrayList.add(Integer.valueOf(com_google_android_gms_internal_zzdy.zzyJ));
        }
        if (hashSet.contains("manualImpressionsEnabled")) {
            arrayList.add(Boolean.valueOf(com_google_android_gms_internal_zzdy.zzyK));
        }
        if (hashSet.contains("publisherProvidedId")) {
            arrayList.add(com_google_android_gms_internal_zzdy.zzyL);
        }
        if (hashSet.contains("location")) {
            if (com_google_android_gms_internal_zzdy.zzyN != null) {
                arrayList.add(com_google_android_gms_internal_zzdy.zzyN.toString());
            } else {
                arrayList.add(null);
            }
        }
        if (hashSet.contains("contentUrl")) {
            arrayList.add(com_google_android_gms_internal_zzdy.zzyO);
        }
        if (hashSet.contains("networkExtras")) {
            arrayList.add(zzc(com_google_android_gms_internal_zzdy.zzyP));
        }
        if (hashSet.contains("customTargeting")) {
            arrayList.add(zzc(com_google_android_gms_internal_zzdy.zzyQ));
        }
        if (hashSet.contains("categoryExclusions")) {
            if (com_google_android_gms_internal_zzdy.zzyR != null) {
                arrayList.add(com_google_android_gms_internal_zzdy.zzyR.toString());
            } else {
                arrayList.add(null);
            }
        }
        if (hashSet.contains("requestAgent")) {
            arrayList.add(com_google_android_gms_internal_zzdy.zzyS);
        }
        if (hashSet.contains("requestPackage")) {
            arrayList.add(com_google_android_gms_internal_zzdy.zzyT);
        }
        return arrayList.toArray();
    }

    private static String zzc(Bundle bundle) {
        if (bundle == null) {
            return null;
        }
        StringBuilder stringBuilder = new StringBuilder();
        Iterator it = new TreeSet(bundle.keySet()).iterator();
        while (it.hasNext()) {
            Object obj = bundle.get((String) it.next());
            String zzc = obj == null ? "null" : obj instanceof Bundle ? zzc((Bundle) obj) : obj.toString();
            stringBuilder.append(zzc);
        }
        return stringBuilder.toString();
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof zzit)) {
            return false;
        }
        return Arrays.equals(this.mParams, ((zzit) obj).mParams);
    }

    public int hashCode() {
        return Arrays.hashCode(this.mParams);
    }

    public String toString() {
        String valueOf = String.valueOf(Arrays.toString(this.mParams));
        return new StringBuilder(String.valueOf(valueOf).length() + 24).append("[InterstitialAdPoolKey ").append(valueOf).append("]").toString();
    }
}
