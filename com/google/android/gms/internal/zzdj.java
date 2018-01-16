package com.google.android.gms.internal;

import java.text.Normalizer;
import java.text.Normalizer.Form;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Locale;

@zzmb
public class zzdj {
    private final int zzyd;
    private final zzdd zzyf;
    private String zzyn;
    private String zzyo;
    private final boolean zzyp = false;
    private final int zzyq;
    private final int zzyr;

    public class zza implements Comparator<zzdc> {
        public zza(zzdj com_google_android_gms_internal_zzdj) {
        }

        public /* synthetic */ int compare(Object obj, Object obj2) {
            return zza((zzdc) obj, (zzdc) obj2);
        }

        public int zza(zzdc com_google_android_gms_internal_zzdc, zzdc com_google_android_gms_internal_zzdc2) {
            if (com_google_android_gms_internal_zzdc.zzek() < com_google_android_gms_internal_zzdc2.zzek()) {
                return -1;
            }
            if (com_google_android_gms_internal_zzdc.zzek() > com_google_android_gms_internal_zzdc2.zzek()) {
                return 1;
            }
            if (com_google_android_gms_internal_zzdc.zzej() < com_google_android_gms_internal_zzdc2.zzej()) {
                return -1;
            }
            if (com_google_android_gms_internal_zzdc.zzej() > com_google_android_gms_internal_zzdc2.zzej()) {
                return 1;
            }
            float zzem = (com_google_android_gms_internal_zzdc.zzem() - com_google_android_gms_internal_zzdc.zzek()) * (com_google_android_gms_internal_zzdc.zzel() - com_google_android_gms_internal_zzdc.zzej());
            float zzem2 = (com_google_android_gms_internal_zzdc2.zzem() - com_google_android_gms_internal_zzdc2.zzek()) * (com_google_android_gms_internal_zzdc2.zzel() - com_google_android_gms_internal_zzdc2.zzej());
            return zzem <= zzem2 ? zzem < zzem2 ? 1 : 0 : -1;
        }
    }

    public zzdj(int i, int i2, int i3) {
        this.zzyd = i;
        if (i2 > 64 || i2 < 0) {
            this.zzyq = 64;
        } else {
            this.zzyq = i2;
        }
        if (i3 < 1) {
            this.zzyr = 1;
        } else {
            this.zzyr = i3;
        }
        this.zzyf = new zzdi(this.zzyq);
    }

    String zza(String str, char c) {
        StringBuilder stringBuilder = new StringBuilder(str);
        Object obj = null;
        int i = 1;
        while (i + 2 <= stringBuilder.length()) {
            if (stringBuilder.charAt(i) == '\'') {
                if (stringBuilder.charAt(i - 1) == c || !((stringBuilder.charAt(i + 1) == 's' || stringBuilder.charAt(i + 1) == 'S') && (i + 2 == stringBuilder.length() || stringBuilder.charAt(i + 2) == c))) {
                    stringBuilder.setCharAt(i, c);
                } else {
                    stringBuilder.insert(i, c);
                    i += 2;
                }
                obj = 1;
            }
            i++;
        }
        return obj != null ? stringBuilder.toString() : null;
    }

    public String zza(ArrayList<String> arrayList, ArrayList<zzdc> arrayList2) {
        Collections.sort(arrayList2, new zza(this));
        HashSet hashSet = new HashSet();
        int i = 0;
        while (i < arrayList2.size() && zza(Normalizer.normalize((CharSequence) arrayList.get(((zzdc) arrayList2.get(i)).zzen()), Form.NFKC).toLowerCase(Locale.US), hashSet)) {
            i++;
        }
        zza com_google_android_gms_internal_zzde_zza = new zza();
        this.zzyn = "";
        Iterator it = hashSet.iterator();
        while (it.hasNext()) {
            try {
                com_google_android_gms_internal_zzde_zza.write(this.zzyf.zzF((String) it.next()));
            } catch (Throwable e) {
                zzpy.zzb("Error while writing hash to byteStream", e);
            }
        }
        return com_google_android_gms_internal_zzde_zza.toString();
    }

    boolean zza(String str, HashSet<String> hashSet) {
        String[] split = str.split("\n");
        if (split.length == 0) {
            return true;
        }
        for (String str2 : split) {
            String str22;
            String zza;
            String[] zzd;
            int i;
            Object obj;
            int i2;
            boolean z;
            if (str22.indexOf("'") != -1) {
                zza = zza(str22, ' ');
                if (zza != null) {
                    this.zzyo = zza;
                    zzd = zzdf.zzd(zza, true);
                    if (zzd.length < this.zzyr) {
                        for (i = 0; i < zzd.length; i++) {
                            obj = "";
                            for (i2 = 0; i2 < this.zzyr; i2++) {
                                if (i + i2 >= zzd.length) {
                                    z = false;
                                    break;
                                }
                                if (i2 > 0) {
                                    obj = String.valueOf(obj).concat(" ");
                                }
                                String valueOf = String.valueOf(obj);
                                str22 = String.valueOf(zzd[i + i2]);
                                obj = str22.length() == 0 ? valueOf.concat(str22) : new String(valueOf);
                            }
                            z = true;
                            if (!z) {
                                break;
                            }
                            hashSet.add(obj);
                            if (hashSet.size() < this.zzyd) {
                                return false;
                            }
                        }
                        if (hashSet.size() >= this.zzyd) {
                            return false;
                        }
                    }
                }
            }
            zza = str22;
            zzd = zzdf.zzd(zza, true);
            if (zzd.length < this.zzyr) {
                for (i = 0; i < zzd.length; i++) {
                    obj = "";
                    for (i2 = 0; i2 < this.zzyr; i2++) {
                        if (i + i2 >= zzd.length) {
                            z = false;
                            break;
                        }
                        if (i2 > 0) {
                            obj = String.valueOf(obj).concat(" ");
                        }
                        String valueOf2 = String.valueOf(obj);
                        str22 = String.valueOf(zzd[i + i2]);
                        if (str22.length() == 0) {
                        }
                    }
                    z = true;
                    if (!z) {
                        break;
                    }
                    hashSet.add(obj);
                    if (hashSet.size() < this.zzyd) {
                        return false;
                    }
                }
                if (hashSet.size() >= this.zzyd) {
                    return false;
                }
            }
        }
        return true;
    }
}
