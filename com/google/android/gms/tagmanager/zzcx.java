package com.google.android.gms.tagmanager;

import com.google.android.gms.internal.zzah;
import com.google.android.gms.internal.zzbgi;
import com.google.android.gms.internal.zzbgi.zze;
import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

class zzcx {
    private static final zzce<com.google.android.gms.internal.zzaj.zza> zzbFB = new zzce(zzdm.zzQm(), true);
    private final DataLayer zzbCT;
    private final zzaj zzbFD;
    private final Map<String, zzam> zzbFE;
    private final Map<String, zzam> zzbFF;
    private final Map<String, zzam> zzbFG;
    private final zzl<com.google.android.gms.internal.zzbgi.zza, zzce<com.google.android.gms.internal.zzaj.zza>> zzbFH;
    private final zzl<String, zzb> zzbFI;
    private final Set<zze> zzbFJ;
    private final Map<String, zzc> zzbFK;
    private volatile String zzbFL;
    private int zzbFM;

    interface zza {
        void zza(zze com_google_android_gms_internal_zzbgi_zze, Set<com.google.android.gms.internal.zzbgi.zza> set, Set<com.google.android.gms.internal.zzbgi.zza> set2, zzcs com_google_android_gms_tagmanager_zzcs);
    }

    private static class zzb {
        private zzce<com.google.android.gms.internal.zzaj.zza> zzbFR;
        private com.google.android.gms.internal.zzaj.zza zzbFS;

        public zzb(zzce<com.google.android.gms.internal.zzaj.zza> com_google_android_gms_tagmanager_zzce_com_google_android_gms_internal_zzaj_zza, com.google.android.gms.internal.zzaj.zza com_google_android_gms_internal_zzaj_zza) {
            this.zzbFR = com_google_android_gms_tagmanager_zzce_com_google_android_gms_internal_zzaj_zza;
            this.zzbFS = com_google_android_gms_internal_zzaj_zza;
        }

        public zzce<com.google.android.gms.internal.zzaj.zza> zzPL() {
            return this.zzbFR;
        }

        public com.google.android.gms.internal.zzaj.zza zzPM() {
            return this.zzbFS;
        }
    }

    private static class zzc {
        private final Set<zze> zzbFJ = new HashSet();
        private final Map<zze, List<com.google.android.gms.internal.zzbgi.zza>> zzbFT = new HashMap();
        private final Map<zze, List<com.google.android.gms.internal.zzbgi.zza>> zzbFU = new HashMap();
        private final Map<zze, List<String>> zzbFV = new HashMap();
        private final Map<zze, List<String>> zzbFW = new HashMap();
        private com.google.android.gms.internal.zzbgi.zza zzbFX;

        public Set<zze> zzPN() {
            return this.zzbFJ;
        }

        public Map<zze, List<com.google.android.gms.internal.zzbgi.zza>> zzPO() {
            return this.zzbFT;
        }

        public Map<zze, List<String>> zzPP() {
            return this.zzbFV;
        }

        public Map<zze, List<String>> zzPQ() {
            return this.zzbFW;
        }

        public Map<zze, List<com.google.android.gms.internal.zzbgi.zza>> zzPR() {
            return this.zzbFU;
        }

        public com.google.android.gms.internal.zzbgi.zza zzPS() {
            return this.zzbFX;
        }
    }

    private String zzPK() {
        if (this.zzbFM <= 1) {
            return "";
        }
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append(Integer.toString(this.zzbFM));
        for (int i = 2; i < this.zzbFM; i++) {
            stringBuilder.append(' ');
        }
        stringBuilder.append(": ");
        return stringBuilder.toString();
    }

    private zzce<com.google.android.gms.internal.zzaj.zza> zza(com.google.android.gms.internal.zzaj.zza com_google_android_gms_internal_zzaj_zza, Set<String> set, zzdp com_google_android_gms_tagmanager_zzdp) {
        if (!com_google_android_gms_internal_zzaj_zza.zzlG) {
            return new zzce(com_google_android_gms_internal_zzaj_zza, true);
        }
        com.google.android.gms.internal.zzaj.zza zzm;
        int i;
        zzce zza;
        String str;
        String valueOf;
        switch (com_google_android_gms_internal_zzaj_zza.type) {
            case 2:
                zzm = zzbgi.zzm(com_google_android_gms_internal_zzaj_zza);
                zzm.zzlx = new com.google.android.gms.internal.zzaj.zza[com_google_android_gms_internal_zzaj_zza.zzlx.length];
                for (i = 0; i < com_google_android_gms_internal_zzaj_zza.zzlx.length; i++) {
                    zza = zza(com_google_android_gms_internal_zzaj_zza.zzlx[i], (Set) set, com_google_android_gms_tagmanager_zzdp.zzmR(i));
                    if (zza == zzbFB) {
                        return zzbFB;
                    }
                    zzm.zzlx[i] = (com.google.android.gms.internal.zzaj.zza) zza.getObject();
                }
                return new zzce(zzm, false);
            case 3:
                zzm = zzbgi.zzm(com_google_android_gms_internal_zzaj_zza);
                if (com_google_android_gms_internal_zzaj_zza.zzly.length != com_google_android_gms_internal_zzaj_zza.zzlz.length) {
                    str = "Invalid serving value: ";
                    valueOf = String.valueOf(com_google_android_gms_internal_zzaj_zza.toString());
                    zzbo.e(valueOf.length() != 0 ? str.concat(valueOf) : new String(str));
                    return zzbFB;
                }
                zzm.zzly = new com.google.android.gms.internal.zzaj.zza[com_google_android_gms_internal_zzaj_zza.zzly.length];
                zzm.zzlz = new com.google.android.gms.internal.zzaj.zza[com_google_android_gms_internal_zzaj_zza.zzly.length];
                for (i = 0; i < com_google_android_gms_internal_zzaj_zza.zzly.length; i++) {
                    zza = zza(com_google_android_gms_internal_zzaj_zza.zzly[i], (Set) set, com_google_android_gms_tagmanager_zzdp.zzmS(i));
                    zzce zza2 = zza(com_google_android_gms_internal_zzaj_zza.zzlz[i], (Set) set, com_google_android_gms_tagmanager_zzdp.zzmT(i));
                    if (zza == zzbFB || zza2 == zzbFB) {
                        return zzbFB;
                    }
                    zzm.zzly[i] = (com.google.android.gms.internal.zzaj.zza) zza.getObject();
                    zzm.zzlz[i] = (com.google.android.gms.internal.zzaj.zza) zza2.getObject();
                }
                return new zzce(zzm, false);
            case 4:
                if (set.contains(com_google_android_gms_internal_zzaj_zza.zzlA)) {
                    valueOf = String.valueOf(com_google_android_gms_internal_zzaj_zza.zzlA);
                    str = String.valueOf(set.toString());
                    zzbo.e(new StringBuilder((String.valueOf(valueOf).length() + 79) + String.valueOf(str).length()).append("Macro cycle detected.  Current macro reference: ").append(valueOf).append(".  Previous macro references: ").append(str).append(".").toString());
                    return zzbFB;
                }
                set.add(com_google_android_gms_internal_zzaj_zza.zzlA);
                zzce<com.google.android.gms.internal.zzaj.zza> zza3 = zzdq.zza(zza(com_google_android_gms_internal_zzaj_zza.zzlA, (Set) set, com_google_android_gms_tagmanager_zzdp.zzPt()), com_google_android_gms_internal_zzaj_zza.zzlF);
                set.remove(com_google_android_gms_internal_zzaj_zza.zzlA);
                return zza3;
            case 7:
                zzm = zzbgi.zzm(com_google_android_gms_internal_zzaj_zza);
                zzm.zzlE = new com.google.android.gms.internal.zzaj.zza[com_google_android_gms_internal_zzaj_zza.zzlE.length];
                for (i = 0; i < com_google_android_gms_internal_zzaj_zza.zzlE.length; i++) {
                    zza = zza(com_google_android_gms_internal_zzaj_zza.zzlE[i], (Set) set, com_google_android_gms_tagmanager_zzdp.zzmU(i));
                    if (zza == zzbFB) {
                        return zzbFB;
                    }
                    zzm.zzlE[i] = (com.google.android.gms.internal.zzaj.zza) zza.getObject();
                }
                return new zzce(zzm, false);
            default:
                zzbo.e("Unknown type: " + com_google_android_gms_internal_zzaj_zza.type);
                return zzbFB;
        }
    }

    private zzce<com.google.android.gms.internal.zzaj.zza> zza(String str, Set<String> set, zzbr com_google_android_gms_tagmanager_zzbr) {
        this.zzbFM++;
        zzb com_google_android_gms_tagmanager_zzcx_zzb = (zzb) this.zzbFI.get(str);
        if (com_google_android_gms_tagmanager_zzcx_zzb != null) {
            zza(com_google_android_gms_tagmanager_zzcx_zzb.zzPM(), (Set) set);
            this.zzbFM--;
            return com_google_android_gms_tagmanager_zzcx_zzb.zzPL();
        }
        zzc com_google_android_gms_tagmanager_zzcx_zzc = (zzc) this.zzbFK.get(str);
        if (com_google_android_gms_tagmanager_zzcx_zzc == null) {
            String valueOf = String.valueOf(zzPK());
            zzbo.e(new StringBuilder((String.valueOf(valueOf).length() + 15) + String.valueOf(str).length()).append(valueOf).append("Invalid macro: ").append(str).toString());
            this.zzbFM--;
            return zzbFB;
        }
        com.google.android.gms.internal.zzbgi.zza zzPS;
        zzce zza = zza(str, com_google_android_gms_tagmanager_zzcx_zzc.zzPN(), com_google_android_gms_tagmanager_zzcx_zzc.zzPO(), com_google_android_gms_tagmanager_zzcx_zzc.zzPP(), com_google_android_gms_tagmanager_zzcx_zzc.zzPR(), com_google_android_gms_tagmanager_zzcx_zzc.zzPQ(), set, com_google_android_gms_tagmanager_zzbr.zzOU());
        if (((Set) zza.getObject()).isEmpty()) {
            zzPS = com_google_android_gms_tagmanager_zzcx_zzc.zzPS();
        } else {
            if (((Set) zza.getObject()).size() > 1) {
                valueOf = String.valueOf(zzPK());
                zzbo.zzbe(new StringBuilder((String.valueOf(valueOf).length() + 37) + String.valueOf(str).length()).append(valueOf).append("Multiple macros active for macroName ").append(str).toString());
            }
            zzPS = (com.google.android.gms.internal.zzbgi.zza) ((Set) zza.getObject()).iterator().next();
        }
        if (zzPS == null) {
            this.zzbFM--;
            return zzbFB;
        }
        zzce zza2 = zza(this.zzbFG, zzPS, (Set) set, com_google_android_gms_tagmanager_zzbr.zzPl());
        boolean z = zza.zzPu() && zza2.zzPu();
        zzce<com.google.android.gms.internal.zzaj.zza> com_google_android_gms_tagmanager_zzce = zza2 == zzbFB ? zzbFB : new zzce((com.google.android.gms.internal.zzaj.zza) zza2.getObject(), z);
        com.google.android.gms.internal.zzaj.zza zzPM = zzPS.zzPM();
        if (com_google_android_gms_tagmanager_zzce.zzPu()) {
            zzb com_google_android_gms_tagmanager_zzcx_zzb2 = new zzb(com_google_android_gms_tagmanager_zzce, zzPM);
        }
        zza(zzPM, (Set) set);
        this.zzbFM--;
        return com_google_android_gms_tagmanager_zzce;
    }

    private zzce<com.google.android.gms.internal.zzaj.zza> zza(Map<String, zzam> map, com.google.android.gms.internal.zzbgi.zza com_google_android_gms_internal_zzbgi_zza, Set<String> set, zzcp com_google_android_gms_tagmanager_zzcp) {
        boolean z = true;
        com.google.android.gms.internal.zzaj.zza com_google_android_gms_internal_zzaj_zza = (com.google.android.gms.internal.zzaj.zza) com_google_android_gms_internal_zzbgi_zza.zzRt().get(zzah.FUNCTION.toString());
        if (com_google_android_gms_internal_zzaj_zza == null) {
            zzbo.e("No function id in properties");
            return zzbFB;
        }
        String str = com_google_android_gms_internal_zzaj_zza.zzlB;
        zzam com_google_android_gms_tagmanager_zzam = (zzam) map.get(str);
        if (com_google_android_gms_tagmanager_zzam == null) {
            zzbo.e(String.valueOf(str).concat(" has no backing implementation."));
            return zzbFB;
        }
        zzce<com.google.android.gms.internal.zzaj.zza> com_google_android_gms_tagmanager_zzce_com_google_android_gms_internal_zzaj_zza = (zzce) this.zzbFH.get(com_google_android_gms_internal_zzbgi_zza);
        if (com_google_android_gms_tagmanager_zzce_com_google_android_gms_internal_zzaj_zza != null) {
            return com_google_android_gms_tagmanager_zzce_com_google_android_gms_internal_zzaj_zza;
        }
        Map hashMap = new HashMap();
        boolean z2 = true;
        for (Entry entry : com_google_android_gms_internal_zzbgi_zza.zzRt().entrySet()) {
            zzce zza = zza((com.google.android.gms.internal.zzaj.zza) entry.getValue(), (Set) set, com_google_android_gms_tagmanager_zzcp.zzhp((String) entry.getKey()).zzd((com.google.android.gms.internal.zzaj.zza) entry.getValue()));
            if (zza == zzbFB) {
                return zzbFB;
            }
            boolean z3;
            if (zza.zzPu()) {
                com_google_android_gms_internal_zzbgi_zza.zza((String) entry.getKey(), (com.google.android.gms.internal.zzaj.zza) zza.getObject());
                z3 = z2;
            } else {
                z3 = false;
            }
            hashMap.put((String) entry.getKey(), (com.google.android.gms.internal.zzaj.zza) zza.getObject());
            z2 = z3;
        }
        if (com_google_android_gms_tagmanager_zzam.zzf(hashMap.keySet())) {
            if (!(z2 && com_google_android_gms_tagmanager_zzam.zzOw())) {
                z = false;
            }
            return new zzce(com_google_android_gms_tagmanager_zzam.zzY(hashMap), z);
        }
        String valueOf = String.valueOf(com_google_android_gms_tagmanager_zzam.zzPh());
        String valueOf2 = String.valueOf(hashMap.keySet());
        zzbo.e(new StringBuilder(((String.valueOf(str).length() + 43) + String.valueOf(valueOf).length()) + String.valueOf(valueOf2).length()).append("Incorrect keys for function ").append(str).append(" required ").append(valueOf).append(" had ").append(valueOf2).toString());
        return zzbFB;
    }

    private zzce<Set<com.google.android.gms.internal.zzbgi.zza>> zza(Set<zze> set, Set<String> set2, zza com_google_android_gms_tagmanager_zzcx_zza, zzcw com_google_android_gms_tagmanager_zzcw) {
        Set hashSet = new HashSet();
        Collection hashSet2 = new HashSet();
        boolean z = true;
        for (zze com_google_android_gms_internal_zzbgi_zze : set) {
            zzcs zzPs = com_google_android_gms_tagmanager_zzcw.zzPs();
            zzce zza = zza(com_google_android_gms_internal_zzbgi_zze, (Set) set2, zzPs);
            if (((Boolean) zza.getObject()).booleanValue()) {
                com_google_android_gms_tagmanager_zzcx_zza.zza(com_google_android_gms_internal_zzbgi_zze, hashSet, hashSet2, zzPs);
            }
            boolean z2 = z && zza.zzPu();
            z = z2;
        }
        hashSet.removeAll(hashSet2);
        return new zzce(hashSet, z);
    }

    private void zza(com.google.android.gms.internal.zzaj.zza com_google_android_gms_internal_zzaj_zza, Set<String> set) {
        if (com_google_android_gms_internal_zzaj_zza != null) {
            zzce zza = zza(com_google_android_gms_internal_zzaj_zza, (Set) set, new zzcc());
            if (zza != zzbFB) {
                Object zzj = zzdm.zzj((com.google.android.gms.internal.zzaj.zza) zza.getObject());
                if (zzj instanceof Map) {
                    this.zzbCT.push((Map) zzj);
                } else if (zzj instanceof List) {
                    for (Object zzj2 : (List) zzj2) {
                        if (zzj2 instanceof Map) {
                            this.zzbCT.push((Map) zzj2);
                        } else {
                            zzbo.zzbe("pushAfterEvaluate: value not a Map");
                        }
                    }
                } else {
                    zzbo.zzbe("pushAfterEvaluate: value not a Map or List");
                }
            }
        }
    }

    zzce<Boolean> zza(com.google.android.gms.internal.zzbgi.zza com_google_android_gms_internal_zzbgi_zza, Set<String> set, zzcp com_google_android_gms_tagmanager_zzcp) {
        zzce zza = zza(this.zzbFF, com_google_android_gms_internal_zzbgi_zza, (Set) set, com_google_android_gms_tagmanager_zzcp);
        Boolean zzi = zzdm.zzi((com.google.android.gms.internal.zzaj.zza) zza.getObject());
        zzdm.zzR(zzi);
        return new zzce(zzi, zza.zzPu());
    }

    zzce<Boolean> zza(zze com_google_android_gms_internal_zzbgi_zze, Set<String> set, zzcs com_google_android_gms_tagmanager_zzcs) {
        boolean z = true;
        for (com.google.android.gms.internal.zzbgi.zza zza : com_google_android_gms_internal_zzbgi_zze.zzRw()) {
            zzce zza2 = zza(zza, (Set) set, com_google_android_gms_tagmanager_zzcs.zzPm());
            if (((Boolean) zza2.getObject()).booleanValue()) {
                zzdm.zzR(Boolean.valueOf(false));
                return new zzce(Boolean.valueOf(false), zza2.zzPu());
            }
            boolean z2 = z && zza2.zzPu();
            z = z2;
        }
        for (com.google.android.gms.internal.zzbgi.zza zza3 : com_google_android_gms_internal_zzbgi_zze.zzRv()) {
            zza2 = zza(zza3, (Set) set, com_google_android_gms_tagmanager_zzcs.zzPn());
            if (((Boolean) zza2.getObject()).booleanValue()) {
                z = z && zza2.zzPu();
            } else {
                zzdm.zzR(Boolean.valueOf(false));
                return new zzce(Boolean.valueOf(false), zza2.zzPu());
            }
        }
        zzdm.zzR(Boolean.valueOf(true));
        return new zzce(Boolean.valueOf(true), z);
    }

    zzce<Set<com.google.android.gms.internal.zzbgi.zza>> zza(String str, Set<zze> set, Map<zze, List<com.google.android.gms.internal.zzbgi.zza>> map, Map<zze, List<String>> map2, Map<zze, List<com.google.android.gms.internal.zzbgi.zza>> map3, Map<zze, List<String>> map4, Set<String> set2, zzcw com_google_android_gms_tagmanager_zzcw) {
        final Map<zze, List<com.google.android.gms.internal.zzbgi.zza>> map5 = map;
        final Map<zze, List<String>> map6 = map2;
        final Map<zze, List<com.google.android.gms.internal.zzbgi.zza>> map7 = map3;
        final Map<zze, List<String>> map8 = map4;
        return zza((Set) set, (Set) set2, new zza(this) {
            public void zza(zze com_google_android_gms_internal_zzbgi_zze, Set<com.google.android.gms.internal.zzbgi.zza> set, Set<com.google.android.gms.internal.zzbgi.zza> set2, zzcs com_google_android_gms_tagmanager_zzcs) {
                List list = (List) map5.get(com_google_android_gms_internal_zzbgi_zze);
                map6.get(com_google_android_gms_internal_zzbgi_zze);
                if (list != null) {
                    set.addAll(list);
                    com_google_android_gms_tagmanager_zzcs.zzPo();
                }
                list = (List) map7.get(com_google_android_gms_internal_zzbgi_zze);
                map8.get(com_google_android_gms_internal_zzbgi_zze);
                if (list != null) {
                    set2.addAll(list);
                    com_google_android_gms_tagmanager_zzcs.zzPp();
                }
            }
        }, com_google_android_gms_tagmanager_zzcw);
    }

    zzce<Set<com.google.android.gms.internal.zzbgi.zza>> zza(Set<zze> set, zzcw com_google_android_gms_tagmanager_zzcw) {
        return zza((Set) set, new HashSet(), new zza(this) {
            public void zza(zze com_google_android_gms_internal_zzbgi_zze, Set<com.google.android.gms.internal.zzbgi.zza> set, Set<com.google.android.gms.internal.zzbgi.zza> set2, zzcs com_google_android_gms_tagmanager_zzcs) {
                set.addAll(com_google_android_gms_internal_zzbgi_zze.zzRx());
                set2.addAll(com_google_android_gms_internal_zzbgi_zze.zzRy());
                com_google_android_gms_tagmanager_zzcs.zzPq();
                com_google_android_gms_tagmanager_zzcs.zzPr();
            }
        }, com_google_android_gms_tagmanager_zzcw);
    }

    public synchronized void zzgX(String str) {
        zzhu(str);
        zzv zzPf = this.zzbFD.zzhk(str).zzPf();
        for (com.google.android.gms.internal.zzbgi.zza zza : (Set) zza(this.zzbFJ, zzPf.zzOU()).getObject()) {
            zza(this.zzbFE, zza, new HashSet(), zzPf.zzOT());
        }
        zzhu(null);
    }

    synchronized void zzhu(String str) {
        this.zzbFL = str;
    }
}
