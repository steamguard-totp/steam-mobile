package com.google.android.gms.internal;

import android.os.Bundle;
import com.google.android.gms.common.internal.zzac;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

public class zzbgf {
    private static List<Object> zzO(List<Object> list) {
        List<Object> arrayList = new ArrayList();
        for (Object next : list) {
            if (next instanceof Bundle) {
                arrayList.add(zzP((Bundle) next));
            } else if (next instanceof List) {
                arrayList.add(zzO((List) next));
            } else {
                arrayList.add(next);
            }
        }
        return arrayList;
    }

    public static Map<String, Object> zzP(Bundle bundle) {
        Map<String, Object> hashMap = new HashMap();
        for (String str : bundle.keySet()) {
            Object obj = bundle.get(str);
            if (obj instanceof Bundle) {
                hashMap.put(str, zzP((Bundle) obj));
            } else if (obj instanceof List) {
                hashMap.put(str, zzO((List) obj));
            } else {
                hashMap.put(str, obj);
            }
        }
        return hashMap;
    }

    public static zzbfw<?> zzZ(Object obj) {
        if (obj == null) {
            return zzbga.zzbKU;
        }
        if (obj instanceof zzbfw) {
            return (zzbfw) obj;
        }
        if (obj instanceof Boolean) {
            return new zzbfx((Boolean) obj);
        }
        if (obj instanceof Short) {
            return new zzbfy(Double.valueOf(((Short) obj).doubleValue()));
        }
        if (obj instanceof Integer) {
            return new zzbfy(Double.valueOf(((Integer) obj).doubleValue()));
        }
        if (obj instanceof Long) {
            return new zzbfy(Double.valueOf(((Long) obj).doubleValue()));
        }
        if (obj instanceof Float) {
            return new zzbfy(Double.valueOf(((Float) obj).doubleValue()));
        }
        if (obj instanceof Double) {
            return new zzbfy((Double) obj);
        }
        if (obj instanceof Byte) {
            return new zzbge(obj.toString());
        }
        if (obj instanceof Character) {
            return new zzbge(obj.toString());
        }
        if (obj instanceof String) {
            return new zzbge((String) obj);
        }
        if (obj instanceof List) {
            List arrayList = new ArrayList();
            for (Object zzZ : (List) obj) {
                arrayList.add(zzZ(zzZ));
            }
            return new zzbgb(arrayList);
        } else if (obj instanceof Map) {
            r2 = new HashMap();
            for (Entry entry : ((Map) obj).entrySet()) {
                zzac.zzas(entry.getKey() instanceof String);
                r2.put((String) entry.getKey(), zzZ(entry.getValue()));
            }
            return new zzbgc(r2);
        } else if (obj instanceof Bundle) {
            r2 = new HashMap();
            for (String str : ((Bundle) obj).keySet()) {
                r2.put(str, zzZ(((Bundle) obj).get(str)));
            }
            return new zzbgc(r2);
        } else {
            String valueOf = String.valueOf(obj.getClass());
            throw new UnsupportedOperationException(new StringBuilder(String.valueOf(valueOf).length() + 20).append("Type not supported: ").append(valueOf).toString());
        }
    }

    public static zzbfw zza(zzazg com_google_android_gms_internal_zzazg, zzbfw com_google_android_gms_internal_zzbfw) {
        zzac.zzw(com_google_android_gms_internal_zzbfw);
        if (!(zzn(com_google_android_gms_internal_zzbfw) || (com_google_android_gms_internal_zzbfw instanceof zzbfz) || (com_google_android_gms_internal_zzbfw instanceof zzbgb) || (com_google_android_gms_internal_zzbfw instanceof zzbgc))) {
            if (com_google_android_gms_internal_zzbfw instanceof zzbgd) {
                com_google_android_gms_internal_zzbfw = zza(com_google_android_gms_internal_zzazg, (zzbgd) com_google_android_gms_internal_zzbfw);
            } else {
                throw new UnsupportedOperationException("Attempting to evaluate unknown type");
            }
        }
        if (com_google_android_gms_internal_zzbfw == null) {
            throw new IllegalArgumentException("AbstractType evaluated to Java null");
        } else if (!(com_google_android_gms_internal_zzbfw instanceof zzbgd)) {
            return com_google_android_gms_internal_zzbfw;
        } else {
            throw new IllegalArgumentException("AbstractType evaluated to illegal type Statement.");
        }
    }

    public static zzbfw zza(zzazg com_google_android_gms_internal_zzazg, zzbgd com_google_android_gms_internal_zzbgd) {
        String zzRR = com_google_android_gms_internal_zzbgd.zzRR();
        List zzRS = com_google_android_gms_internal_zzbgd.zzRS();
        zzbfw zzhP = com_google_android_gms_internal_zzazg.zzhP(zzRR);
        if (zzhP == null) {
            throw new UnsupportedOperationException(new StringBuilder(String.valueOf(zzRR).length() + 28).append("Function '").append(zzRR).append("' is not supported").toString());
        } else if (zzhP instanceof zzbfz) {
            return ((zzazt) ((zzbfz) zzhP).zzRF()).zzb(com_google_android_gms_internal_zzazg, (zzbfw[]) zzRS.toArray(new zzbfw[zzRS.size()]));
        } else {
            throw new UnsupportedOperationException(new StringBuilder(String.valueOf(zzRR).length() + 29).append("Function '").append(zzRR).append("' is not a function").toString());
        }
    }

    public static zzbga zza(zzazg com_google_android_gms_internal_zzazg, List<zzbfw<?>> list) {
        for (zzbfw com_google_android_gms_internal_zzbfw : list) {
            zzac.zzas(com_google_android_gms_internal_zzbfw instanceof zzbgd);
            zzbfw com_google_android_gms_internal_zzbfw2 = zza(com_google_android_gms_internal_zzazg, com_google_android_gms_internal_zzbfw2);
            if (zzo(com_google_android_gms_internal_zzbfw2)) {
                return (zzbga) com_google_android_gms_internal_zzbfw2;
            }
        }
        return zzbga.zzbKV;
    }

    public static Bundle zzar(Map<String, zzbfw<?>> map) {
        if (map == null) {
            return null;
        }
        Bundle bundle = new Bundle(map.size());
        for (Entry entry : map.entrySet()) {
            if (entry.getValue() instanceof zzbge) {
                bundle.putString((String) entry.getKey(), (String) ((zzbge) entry.getValue()).zzRF());
            } else if (entry.getValue() instanceof zzbfx) {
                bundle.putBoolean((String) entry.getKey(), ((Boolean) ((zzbfx) entry.getValue()).zzRF()).booleanValue());
            } else if (entry.getValue() instanceof zzbfy) {
                bundle.putDouble((String) entry.getKey(), ((Double) ((zzbfy) entry.getValue()).zzRF()).doubleValue());
            } else if (entry.getValue() instanceof zzbgc) {
                bundle.putBundle((String) entry.getKey(), zzar((Map) ((zzbgc) entry.getValue()).zzRF()));
            } else {
                throw new IllegalArgumentException(String.format("Invalid param type for key '%s'. Only boolean, double and string types and maps of thereof are supported.", new Object[]{entry.getKey()}));
            }
        }
        return bundle;
    }

    public static Object zzl(zzbfw<?> com_google_android_gms_internal_zzbfw_) {
        if (com_google_android_gms_internal_zzbfw_ == null) {
            return null;
        }
        if (com_google_android_gms_internal_zzbfw_ == zzbga.zzbKU) {
            return null;
        }
        if (com_google_android_gms_internal_zzbfw_ instanceof zzbfx) {
            return (Boolean) ((zzbfx) com_google_android_gms_internal_zzbfw_).zzRF();
        }
        if (com_google_android_gms_internal_zzbfw_ instanceof zzbfy) {
            double doubleValue = ((Double) ((zzbfy) com_google_android_gms_internal_zzbfw_).zzRF()).doubleValue();
            return (Double.isInfinite(doubleValue) || doubleValue - Math.floor(doubleValue) >= 1.0E-5d) ? ((Double) ((zzbfy) com_google_android_gms_internal_zzbfw_).zzRF()).toString() : Integer.valueOf((int) doubleValue);
        } else if (com_google_android_gms_internal_zzbfw_ instanceof zzbge) {
            return (String) ((zzbge) com_google_android_gms_internal_zzbfw_).zzRF();
        } else {
            if (com_google_android_gms_internal_zzbfw_ instanceof zzbgb) {
                List arrayList = new ArrayList();
                for (zzbfw zzl : (List) ((zzbgb) com_google_android_gms_internal_zzbfw_).zzRF()) {
                    Object zzl2 = zzl(zzl);
                    if (zzl2 == null) {
                        zzayx.e(String.format("Failure to convert a list element to object: %s (%s)", new Object[]{zzl, zzl.getClass().getCanonicalName()}));
                        return null;
                    }
                    arrayList.add(zzl2);
                }
                return arrayList;
            } else if (com_google_android_gms_internal_zzbfw_ instanceof zzbgc) {
                Map hashMap = new HashMap();
                for (Entry entry : ((Map) ((zzbgc) com_google_android_gms_internal_zzbfw_).zzRF()).entrySet()) {
                    Object zzl3 = zzl((zzbfw) entry.getValue());
                    if (zzl3 == null) {
                        zzayx.e(String.format("Failure to convert a map's value to object: %s (%s)", new Object[]{entry.getValue(), ((zzbfw) entry.getValue()).getClass().getCanonicalName()}));
                        return null;
                    }
                    hashMap.put((String) entry.getKey(), zzl3);
                }
                return hashMap;
            } else {
                String valueOf = String.valueOf(com_google_android_gms_internal_zzbfw_.getClass());
                zzayx.e(new StringBuilder(String.valueOf(valueOf).length() + 49).append("Converting to Object from unknown abstract type: ").append(valueOf).toString());
                return null;
            }
        }
    }

    public static zzbfw zzm(zzbfw<?> com_google_android_gms_internal_zzbfw_) {
        if (com_google_android_gms_internal_zzbfw_ instanceof zzbgc) {
            Set<String> hashSet = new HashSet();
            Map map = (Map) ((zzbgc) com_google_android_gms_internal_zzbfw_).zzRF();
            for (Entry entry : map.entrySet()) {
                if (entry.getValue() == zzbga.zzbKV) {
                    hashSet.add((String) entry.getKey());
                }
            }
            for (String remove : hashSet) {
                map.remove(remove);
            }
        }
        return com_google_android_gms_internal_zzbfw_;
    }

    public static boolean zzn(zzbfw com_google_android_gms_internal_zzbfw) {
        return (com_google_android_gms_internal_zzbfw instanceof zzbfx) || (com_google_android_gms_internal_zzbfw instanceof zzbfy) || (com_google_android_gms_internal_zzbfw instanceof zzbge) || com_google_android_gms_internal_zzbfw == zzbga.zzbKU || com_google_android_gms_internal_zzbfw == zzbga.zzbKV;
    }

    public static boolean zzo(zzbfw com_google_android_gms_internal_zzbfw) {
        return com_google_android_gms_internal_zzbfw == zzbga.zzbKT || com_google_android_gms_internal_zzbfw == zzbga.zzbKS || ((com_google_android_gms_internal_zzbfw instanceof zzbga) && ((zzbga) com_google_android_gms_internal_zzbfw).zzRM());
    }
}
