package com.google.android.gms.tagmanager;

import com.google.android.gms.internal.zzaj.zza;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

public class zzdm {
    private static final Object zzbGG = null;
    private static Long zzbGH = new Long(0);
    private static Double zzbGI = new Double(0.0d);
    private static zzdl zzbGJ = zzdl.zzax(0);
    private static String zzbGK = new String("");
    private static Boolean zzbGL = new Boolean(false);
    private static List<Object> zzbGM = new ArrayList(0);
    private static Map<Object, Object> zzbGN = new HashMap();
    private static zza zzbGO = zzR(zzbGK);

    public static String zzM(Object obj) {
        return obj == null ? zzbGK : obj.toString();
    }

    public static Boolean zzQ(Object obj) {
        return obj instanceof Boolean ? (Boolean) obj : zzhD(zzM(obj));
    }

    public static zza zzQm() {
        return zzbGO;
    }

    public static zza zzR(Object obj) {
        boolean z = false;
        zza com_google_android_gms_internal_zzaj_zza = new zza();
        if (obj instanceof zza) {
            return (zza) obj;
        }
        if (obj instanceof String) {
            com_google_android_gms_internal_zzaj_zza.type = 1;
            com_google_android_gms_internal_zzaj_zza.string = (String) obj;
        } else if (obj instanceof List) {
            com_google_android_gms_internal_zzaj_zza.type = 2;
            List<Object> list = (List) obj;
            r5 = new ArrayList(list.size());
            r1 = false;
            for (Object zzR : list) {
                zza zzR2 = zzR(zzR);
                if (zzR2 == zzbGO) {
                    return zzbGO;
                }
                r0 = r1 || zzR2.zzlG;
                r5.add(zzR2);
                r1 = r0;
            }
            com_google_android_gms_internal_zzaj_zza.zzlx = (zza[]) r5.toArray(new zza[0]);
            z = r1;
        } else if (obj instanceof Map) {
            com_google_android_gms_internal_zzaj_zza.type = 3;
            Set<Entry> entrySet = ((Map) obj).entrySet();
            r5 = new ArrayList(entrySet.size());
            List arrayList = new ArrayList(entrySet.size());
            r1 = false;
            for (Entry entry : entrySet) {
                zza zzR3 = zzR(entry.getKey());
                zza zzR4 = zzR(entry.getValue());
                if (zzR3 == zzbGO || zzR4 == zzbGO) {
                    return zzbGO;
                }
                r0 = r1 || zzR3.zzlG || zzR4.zzlG;
                r5.add(zzR3);
                arrayList.add(zzR4);
                r1 = r0;
            }
            com_google_android_gms_internal_zzaj_zza.zzly = (zza[]) r5.toArray(new zza[0]);
            com_google_android_gms_internal_zzaj_zza.zzlz = (zza[]) arrayList.toArray(new zza[0]);
            z = r1;
        } else if (zzS(obj)) {
            com_google_android_gms_internal_zzaj_zza.type = 1;
            com_google_android_gms_internal_zzaj_zza.string = obj.toString();
        } else if (zzT(obj)) {
            com_google_android_gms_internal_zzaj_zza.type = 6;
            com_google_android_gms_internal_zzaj_zza.zzlC = zzU(obj);
        } else if (obj instanceof Boolean) {
            com_google_android_gms_internal_zzaj_zza.type = 8;
            com_google_android_gms_internal_zzaj_zza.zzlD = ((Boolean) obj).booleanValue();
        } else {
            String str = "Converting to Value from unknown object type: ";
            String valueOf = String.valueOf(obj == null ? "null" : obj.getClass().toString());
            zzbo.e(valueOf.length() != 0 ? str.concat(valueOf) : new String(str));
            return zzbGO;
        }
        com_google_android_gms_internal_zzaj_zza.zzlG = z;
        return com_google_android_gms_internal_zzaj_zza;
    }

    private static boolean zzS(Object obj) {
        return (obj instanceof Double) || (obj instanceof Float) || ((obj instanceof zzdl) && ((zzdl) obj).zzQb());
    }

    private static boolean zzT(Object obj) {
        return (obj instanceof Byte) || (obj instanceof Short) || (obj instanceof Integer) || (obj instanceof Long) || ((obj instanceof zzdl) && ((zzdl) obj).zzQc());
    }

    private static long zzU(Object obj) {
        if (obj instanceof Number) {
            return ((Number) obj).longValue();
        }
        zzbo.e("getInt64 received non-Number");
        return 0;
    }

    public static String zze(zza com_google_android_gms_internal_zzaj_zza) {
        return zzM(zzj(com_google_android_gms_internal_zzaj_zza));
    }

    private static Boolean zzhD(String str) {
        return "true".equalsIgnoreCase(str) ? Boolean.TRUE : "false".equalsIgnoreCase(str) ? Boolean.FALSE : zzbGL;
    }

    public static Boolean zzi(zza com_google_android_gms_internal_zzaj_zza) {
        return zzQ(zzj(com_google_android_gms_internal_zzaj_zza));
    }

    public static Object zzj(zza com_google_android_gms_internal_zzaj_zza) {
        int i = 0;
        if (com_google_android_gms_internal_zzaj_zza == null) {
            return null;
        }
        zza[] com_google_android_gms_internal_zzaj_zzaArr;
        int length;
        switch (com_google_android_gms_internal_zzaj_zza.type) {
            case 1:
                return com_google_android_gms_internal_zzaj_zza.string;
            case 2:
                ArrayList arrayList = new ArrayList(com_google_android_gms_internal_zzaj_zza.zzlx.length);
                com_google_android_gms_internal_zzaj_zzaArr = com_google_android_gms_internal_zzaj_zza.zzlx;
                length = com_google_android_gms_internal_zzaj_zzaArr.length;
                while (i < length) {
                    Object zzj = zzj(com_google_android_gms_internal_zzaj_zzaArr[i]);
                    if (zzj == null) {
                        return null;
                    }
                    arrayList.add(zzj);
                    i++;
                }
                return arrayList;
            case 3:
                if (com_google_android_gms_internal_zzaj_zza.zzly.length != com_google_android_gms_internal_zzaj_zza.zzlz.length) {
                    String str = "Converting an invalid value to object: ";
                    String valueOf = String.valueOf(com_google_android_gms_internal_zzaj_zza.toString());
                    zzbo.e(valueOf.length() != 0 ? str.concat(valueOf) : new String(str));
                    return null;
                }
                Map hashMap = new HashMap(com_google_android_gms_internal_zzaj_zza.zzlz.length);
                while (i < com_google_android_gms_internal_zzaj_zza.zzly.length) {
                    Object zzj2 = zzj(com_google_android_gms_internal_zzaj_zza.zzly[i]);
                    Object zzj3 = zzj(com_google_android_gms_internal_zzaj_zza.zzlz[i]);
                    if (zzj2 == null || zzj3 == null) {
                        return null;
                    }
                    hashMap.put(zzj2, zzj3);
                    i++;
                }
                return hashMap;
            case 4:
                zzbo.e("Trying to convert a macro reference to object");
                return null;
            case 5:
                zzbo.e("Trying to convert a function id to object");
                return null;
            case 6:
                return Long.valueOf(com_google_android_gms_internal_zzaj_zza.zzlC);
            case 7:
                StringBuffer stringBuffer = new StringBuffer();
                com_google_android_gms_internal_zzaj_zzaArr = com_google_android_gms_internal_zzaj_zza.zzlE;
                length = com_google_android_gms_internal_zzaj_zzaArr.length;
                while (i < length) {
                    String zze = zze(com_google_android_gms_internal_zzaj_zzaArr[i]);
                    if (zze == zzbGK) {
                        return null;
                    }
                    stringBuffer.append(zze);
                    i++;
                }
                return stringBuffer.toString();
            case 8:
                return Boolean.valueOf(com_google_android_gms_internal_zzaj_zza.zzlD);
            default:
                zzbo.e("Failed to convert a value of type: " + com_google_android_gms_internal_zzaj_zza.type);
                return null;
        }
    }
}
