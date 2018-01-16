package com.google.android.gms.internal;

import java.lang.reflect.Type;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

public final class zzbsr {
    private static final Map<Class<?>, Class<?>> zzcnO;
    private static final Map<Class<?>, Class<?>> zzcnP;

    static {
        Map hashMap = new HashMap(16);
        Map hashMap2 = new HashMap(16);
        zza(hashMap, hashMap2, Boolean.TYPE, Boolean.class);
        zza(hashMap, hashMap2, Byte.TYPE, Byte.class);
        zza(hashMap, hashMap2, Character.TYPE, Character.class);
        zza(hashMap, hashMap2, Double.TYPE, Double.class);
        zza(hashMap, hashMap2, Float.TYPE, Float.class);
        zza(hashMap, hashMap2, Integer.TYPE, Integer.class);
        zza(hashMap, hashMap2, Long.TYPE, Long.class);
        zza(hashMap, hashMap2, Short.TYPE, Short.class);
        zza(hashMap, hashMap2, Void.TYPE, Void.class);
        zzcnO = Collections.unmodifiableMap(hashMap);
        zzcnP = Collections.unmodifiableMap(hashMap2);
    }

    private static void zza(Map<Class<?>, Class<?>> map, Map<Class<?>, Class<?>> map2, Class<?> cls, Class<?> cls2) {
        map.put(cls, cls2);
        map2.put(cls2, cls);
    }

    public static boolean zzk(Type type) {
        return zzcnO.containsKey(type);
    }

    public static <T> Class<T> zzo(Class<T> cls) {
        Class<T> cls2 = (Class) zzcnO.get(zzbsj.zzw(cls));
        return cls2 == null ? cls : cls2;
    }
}
