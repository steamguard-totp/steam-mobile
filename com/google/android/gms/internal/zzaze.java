package com.google.android.gms.internal;

import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.common.internal.zzac;
import com.google.android.gms.tagmanager.zzay;
import com.google.android.gms.tagmanager.zzbb;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

public class zzaze {
    private final Context mContext;
    private final String zzbCS;
    private int zzbFM;
    private final zzbb zzbHp;
    private final zzay zzbHy;
    private final zzbfr zzbIk;
    private final zzazg zzbIl = new zzazg();
    private final zzbgc zzbIm = new zzbgc(new HashMap(50));
    private final zzbgc zzbIn = new zzbgc(new HashMap(10));
    private final Set<String> zzbIo = new HashSet();
    private zzbdp zzbIp;
    private zzaym zzbIq;
    private final zzc zzbIr = new zzc(this) {
        final /* synthetic */ zzaze zzbIs;

        {
            this.zzbIs = r1;
        }

        public zzaym zzQK() {
            return this.zzbIs.zzbIq;
        }
    };

    public interface zzc {
        zzaym zzQK();
    }

    private class zza implements com.google.android.gms.internal.zzbdb.zza {
        final /* synthetic */ zzaze zzbIs;

        private zza(zzaze com_google_android_gms_internal_zzaze) {
            this.zzbIs = com_google_android_gms_internal_zzaze;
        }

        public Object zze(String str, Map<String, Object> map) {
            try {
                this.zzbIs.zzbHy.zzf(str, map);
            } catch (RemoteException e) {
                String str2 = "Error calling customEvaluator proxy:";
                String valueOf = String.valueOf(e.getMessage());
                zzayx.e(valueOf.length() != 0 ? str2.concat(valueOf) : new String(str2));
            }
            return null;
        }
    }

    private class zzb implements com.google.android.gms.internal.zzbdb.zza {
        final /* synthetic */ zzaze zzbIs;

        private zzb(zzaze com_google_android_gms_internal_zzaze) {
            this.zzbIs = com_google_android_gms_internal_zzaze;
        }

        public Object zze(String str, Map<String, Object> map) {
            try {
                return this.zzbIs.zzbHy.zzg(str, map);
            } catch (RemoteException e) {
                String str2 = "Error calling customEvaluator proxy:";
                String valueOf = String.valueOf(e.getMessage());
                zzayx.e(valueOf.length() != 0 ? str2.concat(valueOf) : new String(str2));
                return null;
            }
        }
    }

    public zzaze(Context context, String str, zzbfr com_google_android_gms_internal_zzbfr, zzbfu com_google_android_gms_internal_zzbfu, zzbb com_google_android_gms_tagmanager_zzbb, zzay com_google_android_gms_tagmanager_zzay) {
        zzac.zzb((Object) com_google_android_gms_internal_zzbfr, (Object) "Internal Error: Container resource cannot be null");
        zzac.zzb((Object) com_google_android_gms_internal_zzbfu, (Object) "Internal Error: Runtime resource cannot be null");
        zzac.zzh(str, "Internal Error: ContainerId cannot be empty");
        zzac.zzw(com_google_android_gms_tagmanager_zzbb);
        zzac.zzw(com_google_android_gms_tagmanager_zzay);
        this.mContext = context;
        this.zzbCS = str;
        this.zzbIk = com_google_android_gms_internal_zzbfr;
        this.zzbHp = com_google_android_gms_tagmanager_zzbb;
        this.zzbHy = com_google_android_gms_tagmanager_zzay;
        zzQD();
        zzQE();
        zzQF();
        zzQG();
        zzQH();
        zza(com_google_android_gms_internal_zzbfu);
        zzQI();
    }

    private String zzC(String str, int i) {
        switch (i) {
            case 12:
                return zzhO(str);
            default:
                zzayx.e("Unsupported Value Escaping: " + i);
                return str;
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

    private void zzQD() {
        this.zzbIl.zza("1", new zzbfz(new zzbap()));
        this.zzbIl.zza("12", new zzbfz(new zzbaq()));
        this.zzbIl.zza("18", new zzbfz(new zzbar()));
        this.zzbIl.zza("19", new zzbfz(new zzbas()));
        this.zzbIl.zza("20", new zzbfz(new zzbat()));
        this.zzbIl.zza("21", new zzbfz(new zzbau()));
        this.zzbIl.zza("23", new zzbfz(new zzbav()));
        this.zzbIl.zza("24", new zzbfz(new zzbaw()));
        this.zzbIl.zza("27", new zzbfz(new zzbax()));
        this.zzbIl.zza("28", new zzbfz(new zzbay()));
        this.zzbIl.zza("29", new zzbfz(new zzbaz()));
        this.zzbIl.zza("30", new zzbfz(new zzbba()));
        this.zzbIl.zza("32", new zzbfz(new zzbbb()));
        this.zzbIl.zza("33", new zzbfz(new zzbbb()));
        this.zzbIl.zza("34", new zzbfz(new zzbbc()));
        this.zzbIl.zza("35", new zzbfz(new zzbbc()));
        this.zzbIl.zza("39", new zzbfz(new zzbbd()));
        this.zzbIl.zza("40", new zzbfz(new zzbbe()));
    }

    private void zzQE() {
        this.zzbIl.zza("0", new zzbfz(new zzbcb()));
        this.zzbIl.zza("10", new zzbfz(new zzbcc()));
        this.zzbIl.zza("25", new zzbfz(new zzbcd()));
        this.zzbIl.zza("26", new zzbfz(new zzbce()));
        this.zzbIl.zza("37", new zzbfz(new zzbcf()));
    }

    private void zzQF() {
        this.zzbIl.zza("2", new zzbfz(new zzbbf()));
        this.zzbIl.zza("3", new zzbfz(new zzbbg()));
        this.zzbIl.zza("4", new zzbfz(new zzbbh()));
        this.zzbIl.zza("5", new zzbfz(new zzbbi()));
        this.zzbIl.zza("6", new zzbfz(new zzbbj()));
        this.zzbIl.zza("7", new zzbfz(new zzbbk()));
        this.zzbIl.zza("8", new zzbfz(new zzbbl()));
        this.zzbIl.zza("9", new zzbfz(new zzbbi()));
        this.zzbIl.zza("13", new zzbfz(new zzbbm()));
        this.zzbIl.zza("47", new zzbfz(new zzbbn()));
        this.zzbIl.zza("15", new zzbfz(new zzbbo()));
        this.zzbIl.zza("48", new zzbfz(new zzbbp(this)));
        zzazt com_google_android_gms_internal_zzbbq = new zzbbq();
        this.zzbIl.zza("16", new zzbfz(com_google_android_gms_internal_zzbbq));
        this.zzbIl.zza("17", new zzbfz(com_google_android_gms_internal_zzbbq));
        this.zzbIl.zza("22", new zzbfz(new zzbbs()));
        this.zzbIl.zza("45", new zzbfz(new zzbbt()));
        this.zzbIl.zza("46", new zzbfz(new zzbbu()));
        this.zzbIl.zza("36", new zzbfz(new zzbbv()));
        this.zzbIl.zza("43", new zzbfz(new zzbbw()));
        this.zzbIl.zza("38", new zzbfz(new zzbbx()));
        this.zzbIl.zza("44", new zzbfz(new zzbby()));
        this.zzbIl.zza("41", new zzbfz(new zzbbz()));
        this.zzbIl.zza("42", new zzbfz(new zzbca()));
    }

    private void zzQG() {
        zza(zzag.CONTAINS, new zzbem());
        zza(zzag.ENDS_WITH, new zzben());
        zza(zzag.EQUALS, new zzbeo());
        zza(zzag.GREATER_EQUALS, new zzbep());
        zza(zzag.GREATER_THAN, new zzbeq());
        zza(zzag.LESS_EQUALS, new zzber());
        zza(zzag.LESS_THAN, new zzbes());
        zza(zzag.REGEX, new zzbeu());
        zza(zzag.STARTS_WITH, new zzbev());
        this.zzbIm.zzc("advertiserId", new zzbfz(new zzbdf(this.mContext)));
        this.zzbIm.zzc("advertiserTrackingEnabled", new zzbfz(new zzbdg(this.mContext)));
        this.zzbIm.zzc("adwordsClickReferrer", new zzbfz(new zzbdh(this.mContext, this.zzbIr)));
        this.zzbIm.zzc("applicationId", new zzbfz(new zzbdi(this.mContext)));
        this.zzbIm.zzc("applicationName", new zzbfz(new zzbdj(this.mContext)));
        this.zzbIm.zzc("applicationVersion", new zzbfz(new zzbdk(this.mContext)));
        this.zzbIm.zzc("applicationVersionName", new zzbfz(new zzbdl(this.mContext)));
        this.zzbIm.zzc("arbitraryPixieMacro", new zzbfz(new zzbdc(1, this.zzbIl)));
        this.zzbIm.zzc("carrier", new zzbfz(new zzbdm(this.mContext)));
        this.zzbIm.zzc("constant", new zzbfz(new zzbbv()));
        this.zzbIm.zzc("containerId", new zzbfz(new zzbdn(new zzbge(this.zzbCS))));
        this.zzbIm.zzc("containerVersion", new zzbfz(new zzbdn(new zzbge(this.zzbIk.getVersion()))));
        this.zzbIm.zzc("customMacro", new zzbfz(new zzbdb(new zzb())));
        this.zzbIm.zzc("deviceBrand", new zzbfz(new zzbdq()));
        this.zzbIm.zzc("deviceId", new zzbfz(new zzbdr(this.mContext)));
        this.zzbIm.zzc("deviceModel", new zzbfz(new zzbds()));
        this.zzbIm.zzc("deviceName", new zzbfz(new zzbdt()));
        this.zzbIm.zzc("encode", new zzbfz(new zzbdu()));
        this.zzbIm.zzc("encrypt", new zzbfz(new zzbdv()));
        this.zzbIm.zzc("event", new zzbfz(new zzbdo()));
        this.zzbIm.zzc("eventParameters", new zzbfz(new zzbdw(this.zzbIr)));
        this.zzbIm.zzc("version", new zzbfz(new zzbdx()));
        this.zzbIm.zzc("hashcode", new zzbfz(new zzbdy()));
        this.zzbIm.zzc("installReferrer", new zzbfz(new zzbdz(this.mContext)));
        this.zzbIm.zzc("join", new zzbfz(new zzbea()));
        this.zzbIm.zzc("language", new zzbfz(new zzbeb()));
        this.zzbIm.zzc("locale", new zzbfz(new zzbec()));
        this.zzbIm.zzc("adWordsUniqueId", new zzbfz(new zzbee(this.mContext)));
        this.zzbIm.zzc("osVersion", new zzbfz(new zzbef()));
        this.zzbIm.zzc("platform", new zzbfz(new zzbeg()));
        this.zzbIm.zzc("random", new zzbfz(new zzbeh()));
        this.zzbIm.zzc("regexGroup", new zzbfz(new zzbei()));
        this.zzbIm.zzc("resolution", new zzbfz(new zzbek(this.mContext)));
        this.zzbIm.zzc("runtimeVersion", new zzbfz(new zzbej()));
        this.zzbIm.zzc("sdkVersion", new zzbfz(new zzbel()));
        this.zzbIp = new zzbdp();
        this.zzbIm.zzc("currentTime", new zzbfz(this.zzbIp));
        this.zzbIm.zzc("userProperty", new zzbfz(new zzbed(this.mContext, this.zzbIr)));
        this.zzbIm.zzc("arbitraryPixel", new zzbfz(new zzbey(zzayk.zzbM(this.mContext))));
        this.zzbIm.zzc("customTag", new zzbfz(new zzbdb(new zza())));
        this.zzbIm.zzc("universalAnalytics", new zzbfz(new zzbez(this.mContext, this.zzbIr)));
        this.zzbIm.zzc("queueRequest", new zzbfz(new zzbew(zzayk.zzbM(this.mContext))));
        this.zzbIm.zzc("sendMeasurement", new zzbfz(new zzbex(this.zzbHp, this.zzbIr)));
        this.zzbIm.zzc("arbitraryPixieTag", new zzbfz(new zzbdc(0, this.zzbIl)));
        this.zzbIm.zzc("suppressPassthrough", new zzbfz(new zzbde(this.mContext, this.zzbIr)));
    }

    private void zzQH() {
        this.zzbIn.zzc("decodeURI", new zzbfz(new zzbcw()));
        this.zzbIn.zzc("decodeURIComponent", new zzbfz(new zzbcx()));
        this.zzbIn.zzc("encodeURI", new zzbfz(new zzbcy()));
        this.zzbIn.zzc("encodeURIComponent", new zzbfz(new zzbcz()));
        this.zzbIn.zzc("log", new zzbfz(new zzbdd()));
        this.zzbIn.zzc("isArray", new zzbfz(new zzbda()));
    }

    private void zzQI() {
        zzbfw com_google_android_gms_internal_zzbgc = new zzbgc(new HashMap(1));
        com_google_android_gms_internal_zzbgc.zzc("mobile", this.zzbIm);
        com_google_android_gms_internal_zzbgc.zzc("common", this.zzbIn);
        this.zzbIl.zza("gtmUtils", com_google_android_gms_internal_zzbgc);
        zzbfw com_google_android_gms_internal_zzbgc2 = new zzbgc(new HashMap((Map) this.zzbIm.zzRF()));
        com_google_android_gms_internal_zzbgc2.zzRP();
        zzbfw com_google_android_gms_internal_zzbgc3 = new zzbgc(new HashMap((Map) this.zzbIn.zzRF()));
        com_google_android_gms_internal_zzbgc3.zzRP();
        if (this.zzbIl.has("main") && (this.zzbIl.zzhP("main") instanceof zzbfz)) {
            List arrayList = new ArrayList();
            arrayList.add(com_google_android_gms_internal_zzbgc);
            zzbgf.zza(this.zzbIl, new zzbgd("main", arrayList));
        }
        this.zzbIm.zzc("base", com_google_android_gms_internal_zzbgc2);
        this.zzbIn.zzc("base", com_google_android_gms_internal_zzbgc3);
        com_google_android_gms_internal_zzbgc.zzRP();
        this.zzbIm.zzRP();
        this.zzbIn.zzRP();
    }

    private zzbfw<?> zza(zzbfv com_google_android_gms_internal_zzbfv) {
        switch (com_google_android_gms_internal_zzbfv.getType()) {
            case 1:
                try {
                    return new zzbfy(Double.valueOf(Double.parseDouble((String) com_google_android_gms_internal_zzbfv.getValue())));
                } catch (NumberFormatException e) {
                    return new zzbge((String) com_google_android_gms_internal_zzbfv.getValue());
                }
            case 2:
                List<zzbfv> list = (List) com_google_android_gms_internal_zzbfv.getValue();
                List arrayList = new ArrayList(list.size());
                for (zzbfv zza : list) {
                    arrayList.add(zza(zza));
                }
                return new zzbgb(arrayList);
            case 3:
                Map map = (Map) com_google_android_gms_internal_zzbfv.getValue();
                Map hashMap = new HashMap(map.size());
                for (Entry entry : map.entrySet()) {
                    hashMap.put(zzazu.zzd(zza((zzbfv) entry.getKey())), zza((zzbfv) entry.getValue()));
                }
                return new zzbgc(hashMap);
            case 4:
                zzbfw<?> zzhM = zzhM((String) com_google_android_gms_internal_zzbfv.getValue());
                return (!(zzhM instanceof zzbge) || com_google_android_gms_internal_zzbfv.zzRC().isEmpty()) ? zzhM : new zzbge(zzd((String) ((zzbge) zzhM).zzRF(), com_google_android_gms_internal_zzbfv.zzRC()));
            case 5:
                return new zzbge((String) com_google_android_gms_internal_zzbfv.getValue());
            case 6:
                return new zzbfy(Double.valueOf(((Integer) com_google_android_gms_internal_zzbfv.getValue()).doubleValue()));
            case 7:
                StringBuilder stringBuilder = new StringBuilder();
                for (zzbfv zza2 : (List) com_google_android_gms_internal_zzbfv.getValue()) {
                    stringBuilder.append(zzazu.zzd(zza(zza2)));
                }
                return new zzbge(stringBuilder.toString());
            case 8:
                return new zzbfx((Boolean) com_google_android_gms_internal_zzbfv.getValue());
            default:
                throw new IllegalStateException("Attempting to expand unknown Value type " + com_google_android_gms_internal_zzbfv.getType() + ".");
        }
    }

    private void zza(zzag com_google_android_gms_internal_zzag, zzazt com_google_android_gms_internal_zzazt) {
        this.zzbIm.zzc(zzazr.zza(com_google_android_gms_internal_zzag), new zzbfz(com_google_android_gms_internal_zzazt));
    }

    private void zza(zzbfu com_google_android_gms_internal_zzbfu) {
        for (zzazs com_google_android_gms_internal_zzazs : com_google_android_gms_internal_zzbfu.zzRA()) {
            com_google_android_gms_internal_zzazs.zza(this.zzbIl);
            this.zzbIl.zza(com_google_android_gms_internal_zzazs.getName(), new zzbfz(com_google_android_gms_internal_zzazs));
        }
    }

    private boolean zza(zzbfs com_google_android_gms_internal_zzbfs) {
        zzbfv com_google_android_gms_internal_zzbfv = (zzbfv) com_google_android_gms_internal_zzbfs.zzRt().get(zzah.DISPATCH_ON_FIRE.toString());
        return com_google_android_gms_internal_zzbfv != null && com_google_android_gms_internal_zzbfv.getType() == 8 && ((Boolean) com_google_android_gms_internal_zzbfv.getValue()).booleanValue();
    }

    private Map<String, zzbfw<?>> zzan(Map<String, zzbfv> map) {
        Map<String, zzbfw<?>> hashMap = new HashMap();
        for (Entry entry : map.entrySet()) {
            hashMap.put((String) entry.getKey(), zza((zzbfv) entry.getValue()));
        }
        return hashMap;
    }

    private zzbfw zzao(Map<String, zzbfw<?>> map) {
        if (map == null) {
            zzayx.e("Cannot access the function parameters.");
            return zzbga.zzbKV;
        }
        zzbfw com_google_android_gms_internal_zzbfw = (zzbfw) map.get(zzah.FUNCTION.toString());
        if (com_google_android_gms_internal_zzbfw instanceof zzbge) {
            zzbgd com_google_android_gms_internal_zzbgd;
            String str = (String) ((zzbge) com_google_android_gms_internal_zzbfw).zzRF();
            if (this.zzbIl.has(str)) {
                Map hashMap = new HashMap();
                for (Entry entry : map.entrySet()) {
                    if (((String) entry.getKey()).startsWith("vtp_")) {
                        hashMap.put(((String) entry.getKey()).substring(4), (zzbfw) entry.getValue());
                    }
                }
                List arrayList = new ArrayList();
                arrayList.add(new zzbgc(hashMap));
                com_google_android_gms_internal_zzbgd = new zzbgd(str, arrayList);
            } else if (zzhN(str)) {
                com_google_android_gms_internal_zzbgd = zzi(str, map);
            } else {
                zzayx.e(new StringBuilder(String.valueOf(str).length() + 30).append("functionId '").append(str).append("' is not supported").toString());
                return zzbga.zzbKV;
            }
            if (com_google_android_gms_internal_zzbgd == null) {
                zzayx.e("Internal error: failed to convert function to a valid statement");
                return zzbga.zzbKV;
            }
            String str2 = "Executing: ";
            str = String.valueOf(com_google_android_gms_internal_zzbgd.zzRR());
            zzayx.v(str.length() != 0 ? str2.concat(str) : new String(str2));
            zzbfw zza = zzbgf.zza(this.zzbIl, com_google_android_gms_internal_zzbgd);
            return ((zza instanceof zzbga) && ((zzbga) zza).zzRM()) ? (zzbfw) ((zzbga) zza).zzRF() : zza;
        } else {
            zzayx.e("No function id in properties");
            return zzbga.zzbKV;
        }
    }

    private String zzd(String str, List<Integer> list) {
        for (Integer intValue : list) {
            str = zzC(str, intValue.intValue());
        }
        return str;
    }

    private zzbfw<?> zzhM(String str) {
        this.zzbFM++;
        String valueOf = String.valueOf(zzPK());
        zzayx.v(new StringBuilder((String.valueOf(valueOf).length() + 31) + String.valueOf(str).length()).append(valueOf).append("Beginning to evaluate variable ").append(str).toString());
        if (this.zzbIo.contains(str)) {
            this.zzbFM--;
            String valueOf2 = String.valueOf(this.zzbIo.toString());
            throw new IllegalStateException(new StringBuilder((String.valueOf(str).length() + 77) + String.valueOf(valueOf2).length()).append("Macro cycle detected.  Current macro reference: ").append(str).append(". Previous macro references: ").append(valueOf2).toString());
        }
        this.zzbIo.add(str);
        zzbfs zzic = this.zzbIk.zzic(str);
        if (zzic == null) {
            this.zzbFM--;
            this.zzbIo.remove(str);
            valueOf2 = String.valueOf(zzPK());
            throw new IllegalStateException(new StringBuilder((String.valueOf(valueOf2).length() + 36) + String.valueOf(str).length()).append(valueOf2).append("Attempting to resolve unknown macro ").append(str).toString());
        }
        zzbfw<?> zzao = zzao(zzan(zzic.zzRt()));
        valueOf2 = String.valueOf(zzPK());
        zzayx.v(new StringBuilder((String.valueOf(valueOf2).length() + 25) + String.valueOf(str).length()).append(valueOf2).append("Done evaluating variable ").append(str).toString());
        this.zzbFM--;
        this.zzbIo.remove(str);
        return zzao;
    }

    private boolean zzhN(String str) {
        String zzhR = zzazr.zzhR(str);
        return zzhR != null && this.zzbIm.zzif(zzhR);
    }

    private String zzhO(String str) {
        try {
            str = URLEncoder.encode(str, "UTF-8").replaceAll("\\+", "%20");
        } catch (Throwable e) {
            zzayx.zzb("Escape URI: unsupported encoding", e);
        }
        return str;
    }

    private zzbgd zzi(String str, Map<String, zzbfw<?>> map) {
        try {
            return zzazr.zza(str, map, zzQJ());
        } catch (RuntimeException e) {
            String valueOf = String.valueOf(e.getMessage());
            zzayx.e(new StringBuilder((String.valueOf(str).length() + 30) + String.valueOf(valueOf).length()).append("Incorrect keys for function ").append(str).append(". ").append(valueOf).toString());
            return null;
        }
    }

    public void dispatch() {
        zzayk.zzbM(this.mContext).dispatch();
    }

    zzazg zzQJ() {
        return this.zzbIl;
    }

    zzbfw<?> zza(zzbft com_google_android_gms_internal_zzbft, Map<zzbfs, zzbfw<?>> map) {
        String valueOf = String.valueOf(com_google_android_gms_internal_zzbft);
        zzayx.v(new StringBuilder(String.valueOf(valueOf).length() + 19).append("Evaluating trigger ").append(valueOf).toString());
        for (zzbfs com_google_android_gms_internal_zzbfs : com_google_android_gms_internal_zzbft.zzRw()) {
            zzbfw com_google_android_gms_internal_zzbfw = (zzbfw) map.get(com_google_android_gms_internal_zzbfs);
            if (com_google_android_gms_internal_zzbfw == null) {
                com_google_android_gms_internal_zzbfw = zzb(com_google_android_gms_internal_zzbfs);
                map.put(com_google_android_gms_internal_zzbfs, com_google_android_gms_internal_zzbfw);
            }
            zzbfw com_google_android_gms_internal_zzbfw2 = com_google_android_gms_internal_zzbfw;
            if (com_google_android_gms_internal_zzbfw2 == zzbga.zzbKU) {
                return zzbga.zzbKU;
            }
            if (((Boolean) ((zzbfx) com_google_android_gms_internal_zzbfw2).zzRF()).booleanValue()) {
                return new zzbfx(Boolean.valueOf(false));
            }
        }
        for (zzbfs com_google_android_gms_internal_zzbfs2 : com_google_android_gms_internal_zzbft.zzRv()) {
            com_google_android_gms_internal_zzbfw = (zzbfw) map.get(com_google_android_gms_internal_zzbfs2);
            if (com_google_android_gms_internal_zzbfw == null) {
                com_google_android_gms_internal_zzbfw = zzb(com_google_android_gms_internal_zzbfs2);
                map.put(com_google_android_gms_internal_zzbfs2, com_google_android_gms_internal_zzbfw);
            }
            com_google_android_gms_internal_zzbfw2 = com_google_android_gms_internal_zzbfw;
            if (com_google_android_gms_internal_zzbfw2 == zzbga.zzbKU) {
                return zzbga.zzbKU;
            }
            if (!((Boolean) ((zzbfx) com_google_android_gms_internal_zzbfw2).zzRF()).booleanValue()) {
                return new zzbfx(Boolean.valueOf(false));
            }
        }
        return new zzbfx(Boolean.valueOf(true));
    }

    zzbfw<?> zzb(zzbfs com_google_android_gms_internal_zzbfs) {
        this.zzbIo.clear();
        try {
            zzbfw<?> zzao = zzao(zzan(com_google_android_gms_internal_zzbfs.zzRt()));
            if (zzao instanceof zzbfx) {
                return zzao;
            }
            zzayx.e("Predicate must return a boolean value");
            return new zzbfx(Boolean.valueOf(false));
        } catch (IllegalStateException e) {
            zzayx.e("Error evaluating predicate.");
            return zzbga.zzbKU;
        }
    }

    public void zzb(zzaym com_google_android_gms_internal_zzaym) {
        this.zzbIl.zza("gtm.globals.eventName", new zzbge(com_google_android_gms_internal_zzaym.zzQp()));
        this.zzbIp.zza(com_google_android_gms_internal_zzaym);
        this.zzbIq = com_google_android_gms_internal_zzaym;
        Set<zzbfs> hashSet = new HashSet();
        Collection hashSet2 = new HashSet();
        Map hashMap = new HashMap();
        for (zzbft com_google_android_gms_internal_zzbft : this.zzbIk.zzRr()) {
            String valueOf;
            if (com_google_android_gms_internal_zzbft.zzRx().isEmpty() && com_google_android_gms_internal_zzbft.zzRy().isEmpty()) {
                String valueOf2 = String.valueOf(com_google_android_gms_internal_zzbft);
                zzayx.v(new StringBuilder(String.valueOf(valueOf2).length() + 64).append("Trigger is not being evaluated since it has no associated tags: ").append(valueOf2).toString());
            } else {
                zzbfw zza = zza(com_google_android_gms_internal_zzbft, hashMap);
                if (zza == zzbga.zzbKU) {
                    valueOf = String.valueOf(com_google_android_gms_internal_zzbft);
                    zzayx.zzbe(new StringBuilder(String.valueOf(valueOf).length() + 41).append("Error encounted while evaluating trigger ").append(valueOf).toString());
                    if (!com_google_android_gms_internal_zzbft.zzRy().isEmpty()) {
                        valueOf = String.valueOf(com_google_android_gms_internal_zzbft.zzRy());
                        zzayx.v(new StringBuilder(String.valueOf(valueOf).length() + 15).append("Blocking tags: ").append(valueOf).toString());
                        hashSet2.addAll(com_google_android_gms_internal_zzbft.zzRy());
                    }
                } else if (((Boolean) ((zzbfx) zza).zzRF()).booleanValue()) {
                    valueOf = String.valueOf(com_google_android_gms_internal_zzbft);
                    zzayx.v(new StringBuilder(String.valueOf(valueOf).length() + 19).append("Trigger is firing: ").append(valueOf).toString());
                    if (!com_google_android_gms_internal_zzbft.zzRx().isEmpty()) {
                        valueOf = String.valueOf(com_google_android_gms_internal_zzbft.zzRx());
                        zzayx.v(new StringBuilder(String.valueOf(valueOf).length() + 34).append("Adding tags to firing candidates: ").append(valueOf).toString());
                        hashSet.addAll(com_google_android_gms_internal_zzbft.zzRx());
                    }
                    if (!com_google_android_gms_internal_zzbft.zzRy().isEmpty()) {
                        valueOf = String.valueOf(com_google_android_gms_internal_zzbft.zzRy());
                        zzayx.v(new StringBuilder(String.valueOf(valueOf).length() + 24).append("Blocking disabled tags: ").append(valueOf).toString());
                        hashSet2.addAll(com_google_android_gms_internal_zzbft.zzRy());
                    }
                }
            }
        }
        hashSet.removeAll(hashSet2);
        Object obj = null;
        for (zzbfs com_google_android_gms_internal_zzbfs : hashSet) {
            Object obj2;
            this.zzbIo.clear();
            String valueOf3 = String.valueOf(com_google_android_gms_internal_zzbfs);
            zzayx.v(new StringBuilder(String.valueOf(valueOf3).length() + 21).append("Executing firing tag ").append(valueOf3).toString());
            try {
                zzao(zzan(com_google_android_gms_internal_zzbfs.zzRt()));
                if (zza(com_google_android_gms_internal_zzbfs)) {
                    obj = 1;
                    valueOf2 = String.valueOf(com_google_android_gms_internal_zzbfs);
                    zzayx.v(new StringBuilder(String.valueOf(valueOf2).length() + 36).append("Tag configured to dispatch on fire: ").append(valueOf2).toString());
                }
                obj2 = obj;
            } catch (IllegalStateException e) {
                valueOf3 = "Error firing tag: ";
                valueOf2 = String.valueOf(e.getMessage());
                zzayx.e(valueOf2.length() != 0 ? valueOf3.concat(valueOf2) : new String(valueOf3));
                obj2 = obj;
            }
            obj = obj2;
        }
        this.zzbIl.remove("gtm.globals.eventName");
        if (com_google_android_gms_internal_zzaym.zzQs()) {
            valueOf2 = String.valueOf(com_google_android_gms_internal_zzaym.zzQp());
            zzayx.v(new StringBuilder(String.valueOf(valueOf2).length() + 35).append("Log passthrough event ").append(valueOf2).append(" to Firebase.").toString());
            try {
                this.zzbHp.zza(com_google_android_gms_internal_zzaym.zzQr(), com_google_android_gms_internal_zzaym.zzQp(), com_google_android_gms_internal_zzaym.zzQq(), com_google_android_gms_internal_zzaym.currentTimeMillis());
            } catch (RemoteException e2) {
                valueOf = "Error calling measurement proxy:";
                valueOf2 = String.valueOf(e2.getMessage());
                zzayx.e(valueOf2.length() != 0 ? valueOf.concat(valueOf2) : new String(valueOf));
            }
        } else {
            valueOf2 = String.valueOf(com_google_android_gms_internal_zzaym.zzQp());
            zzayx.v(new StringBuilder(String.valueOf(valueOf2).length() + 63).append("Non-passthrough event ").append(valueOf2).append(" doesn't get logged to Firebase directly.").toString());
        }
        if (obj != null) {
            zzayx.v("Dispatch called for dispatchOnFire tags.");
            dispatch();
        }
    }

    public zzbfw<?> zzhL(String str) {
        if (this.zzbIo.contains(str)) {
            String valueOf = String.valueOf(this.zzbIo.toString());
            throw new IllegalStateException(new StringBuilder((String.valueOf(str).length() + 77) + String.valueOf(valueOf).length()).append("Macro cycle detected.  Current macro reference: ").append(str).append(". Previous macro references: ").append(valueOf).toString());
        }
        this.zzbFM = 0;
        return zzhM(str);
    }
}
