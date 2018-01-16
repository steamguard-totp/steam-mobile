package com.google.android.gms.tagmanager;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.locks.ReentrantLock;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class DataLayer {
    public static final Object OBJECT_NOT_PRESENT = new Object();
    private static final Pattern zzbDA = Pattern.compile("(\\d+)\\s*([smhd]?)");
    static final String[] zzbDz = "gtm.lifetime".toString().split("\\.");
    private final ConcurrentHashMap<zzb, Integer> zzbDB;
    private final Map<String, Object> zzbDC;
    private final ReentrantLock zzbDD;
    private final LinkedList<Map<String, Object>> zzbDE;
    private final zzc zzbDF;
    private final CountDownLatch zzbDG;

    interface zzc {

        public interface zza {
            void zzJ(List<zza> list);
        }

        void zza(zza com_google_android_gms_tagmanager_DataLayer_zzc_zza);

        void zza(List<zza> list, long j);
    }

    static final class zza {
        public final String zzAH;
        public final Object zzYe;

        zza(String str, Object obj) {
            this.zzAH = str;
            this.zzYe = obj;
        }

        public boolean equals(Object obj) {
            if (!(obj instanceof zza)) {
                return false;
            }
            zza com_google_android_gms_tagmanager_DataLayer_zza = (zza) obj;
            return this.zzAH.equals(com_google_android_gms_tagmanager_DataLayer_zza.zzAH) && this.zzYe.equals(com_google_android_gms_tagmanager_DataLayer_zza.zzYe);
        }

        public int hashCode() {
            return Arrays.hashCode(new Integer[]{Integer.valueOf(this.zzAH.hashCode()), Integer.valueOf(this.zzYe.hashCode())});
        }

        public String toString() {
            String str = this.zzAH;
            String valueOf = String.valueOf(this.zzYe.toString());
            return new StringBuilder((String.valueOf(str).length() + 13) + String.valueOf(valueOf).length()).append("Key: ").append(str).append(" value: ").append(valueOf).toString();
        }
    }

    interface zzb {
        void zzZ(Map<String, Object> map);
    }

    DataLayer() {
        this(new zzc() {
            public void zza(zza com_google_android_gms_tagmanager_DataLayer_zzc_zza) {
                com_google_android_gms_tagmanager_DataLayer_zzc_zza.zzJ(new ArrayList());
            }

            public void zza(List<zza> list, long j) {
            }
        });
    }

    DataLayer(zzc com_google_android_gms_tagmanager_DataLayer_zzc) {
        this.zzbDF = com_google_android_gms_tagmanager_DataLayer_zzc;
        this.zzbDB = new ConcurrentHashMap();
        this.zzbDC = new HashMap();
        this.zzbDD = new ReentrantLock();
        this.zzbDE = new LinkedList();
        this.zzbDG = new CountDownLatch(1);
        zzOR();
    }

    private void zzOR() {
        this.zzbDF.zza(new zza(this) {
            final /* synthetic */ DataLayer zzbDH;

            {
                this.zzbDH = r1;
            }

            public void zzJ(List<zza> list) {
                for (zza com_google_android_gms_tagmanager_DataLayer_zza : list) {
                    this.zzbDH.zzab(this.zzbDH.zzo(com_google_android_gms_tagmanager_DataLayer_zza.zzAH, com_google_android_gms_tagmanager_DataLayer_zza.zzYe));
                }
                this.zzbDH.zzbDG.countDown();
            }
        });
    }

    private void zzOS() {
        int i = 0;
        while (true) {
            Map map = (Map) this.zzbDE.poll();
            if (map != null) {
                zzag(map);
                int i2 = i + 1;
                if (i2 > 500) {
                    this.zzbDE.clear();
                    throw new RuntimeException("Seems like an infinite loop of pushing to the data layer");
                }
                i = i2;
            } else {
                return;
            }
        }
    }

    private void zza(Map<String, Object> map, String str, Collection<zza> collection) {
        for (Entry entry : map.entrySet()) {
            String str2 = str.length() == 0 ? "" : ".";
            String str3 = (String) entry.getKey();
            str3 = new StringBuilder(((String.valueOf(str).length() + 0) + String.valueOf(str2).length()) + String.valueOf(str3).length()).append(str).append(str2).append(str3).toString();
            if (entry.getValue() instanceof Map) {
                zza((Map) entry.getValue(), str3, collection);
            } else if (!str3.equals("gtm.lifetime")) {
                collection.add(new zza(str3, entry.getValue()));
            }
        }
    }

    private void zzab(Map<String, Object> map) {
        this.zzbDD.lock();
        try {
            this.zzbDE.offer(map);
            if (this.zzbDD.getHoldCount() == 1) {
                zzOS();
            }
            zzac(map);
        } finally {
            this.zzbDD.unlock();
        }
    }

    private void zzac(Map<String, Object> map) {
        Long zzad = zzad(map);
        if (zzad != null) {
            List zzaf = zzaf(map);
            zzaf.remove("gtm.lifetime");
            this.zzbDF.zza(zzaf, zzad.longValue());
        }
    }

    private Long zzad(Map<String, Object> map) {
        Object zzae = zzae(map);
        return zzae == null ? null : zzhe(zzae.toString());
    }

    private Object zzae(Map<String, Object> map) {
        String[] strArr = zzbDz;
        int length = strArr.length;
        int i = 0;
        Object obj = map;
        while (i < length) {
            Object obj2 = strArr[i];
            if (!(obj instanceof Map)) {
                return null;
            }
            i++;
            obj = ((Map) obj).get(obj2);
        }
        return obj;
    }

    private List<zza> zzaf(Map<String, Object> map) {
        Object arrayList = new ArrayList();
        zza(map, "", arrayList);
        return arrayList;
    }

    private void zzag(Map<String, Object> map) {
        synchronized (this.zzbDC) {
            for (String str : map.keySet()) {
                zzd(zzo(str, map.get(str)), this.zzbDC);
            }
        }
        zzah(map);
    }

    private void zzah(Map<String, Object> map) {
        for (zzb zzZ : this.zzbDB.keySet()) {
            zzZ.zzZ(map);
        }
    }

    static Long zzhe(String str) {
        Matcher matcher = zzbDA.matcher(str);
        String str2;
        String valueOf;
        if (matcher.matches()) {
            long parseLong;
            try {
                parseLong = Long.parseLong(matcher.group(1));
            } catch (NumberFormatException e) {
                str2 = "illegal number in _lifetime value: ";
                valueOf = String.valueOf(str);
                zzbo.zzbe(valueOf.length() != 0 ? str2.concat(valueOf) : new String(str2));
                parseLong = 0;
            }
            if (parseLong <= 0) {
                str2 = "non-positive _lifetime: ";
                valueOf = String.valueOf(str);
                zzbo.zzbd(valueOf.length() != 0 ? str2.concat(valueOf) : new String(str2));
                return null;
            }
            valueOf = matcher.group(2);
            if (valueOf.length() == 0) {
                return Long.valueOf(parseLong);
            }
            switch (valueOf.charAt(0)) {
                case 'd':
                    return Long.valueOf((((parseLong * 1000) * 60) * 60) * 24);
                case 'h':
                    return Long.valueOf(((parseLong * 1000) * 60) * 60);
                case 'm':
                    return Long.valueOf((parseLong * 1000) * 60);
                case 's':
                    return Long.valueOf(parseLong * 1000);
                default:
                    str2 = "unknown units in _lifetime: ";
                    valueOf = String.valueOf(str);
                    zzbo.zzbe(valueOf.length() != 0 ? str2.concat(valueOf) : new String(str2));
                    return null;
            }
        }
        str2 = "unknown _lifetime: ";
        valueOf = String.valueOf(str);
        zzbo.zzbd(valueOf.length() != 0 ? str2.concat(valueOf) : new String(str2));
        return null;
    }

    public void push(Map<String, Object> map) {
        try {
            this.zzbDG.await();
        } catch (InterruptedException e) {
            zzbo.zzbe("DataLayer.push: unexpected InterruptedException");
        }
        zzab(map);
    }

    public String toString() {
        String stringBuilder;
        synchronized (this.zzbDC) {
            StringBuilder stringBuilder2 = new StringBuilder();
            for (Entry entry : this.zzbDC.entrySet()) {
                stringBuilder2.append(String.format("{\n\tKey: %s\n\tValue: %s\n}\n", new Object[]{entry.getKey(), entry.getValue()}));
            }
            stringBuilder = stringBuilder2.toString();
        }
        return stringBuilder;
    }

    void zza(zzb com_google_android_gms_tagmanager_DataLayer_zzb) {
        this.zzbDB.put(com_google_android_gms_tagmanager_DataLayer_zzb, Integer.valueOf(0));
    }

    void zzb(List<Object> list, List<Object> list2) {
        while (list2.size() < list.size()) {
            list2.add(null);
        }
        for (int i = 0; i < list.size(); i++) {
            Object obj = list.get(i);
            if (obj instanceof List) {
                if (!(list2.get(i) instanceof List)) {
                    list2.set(i, new ArrayList());
                }
                zzb((List) obj, (List) list2.get(i));
            } else if (obj instanceof Map) {
                if (!(list2.get(i) instanceof Map)) {
                    list2.set(i, new HashMap());
                }
                zzd((Map) obj, (Map) list2.get(i));
            } else if (obj != OBJECT_NOT_PRESENT) {
                list2.set(i, obj);
            }
        }
    }

    void zzd(Map<String, Object> map, Map<String, Object> map2) {
        for (String str : map.keySet()) {
            Object obj = map.get(str);
            if (obj instanceof List) {
                if (!(map2.get(str) instanceof List)) {
                    map2.put(str, new ArrayList());
                }
                zzb((List) obj, (List) map2.get(str));
            } else if (obj instanceof Map) {
                if (!(map2.get(str) instanceof Map)) {
                    map2.put(str, new HashMap());
                }
                zzd((Map) obj, (Map) map2.get(str));
            } else {
                map2.put(str, obj);
            }
        }
    }

    Map<String, Object> zzo(String str, Object obj) {
        Map hashMap = new HashMap();
        String[] split = str.toString().split("\\.");
        int i = 0;
        Map map = hashMap;
        while (i < split.length - 1) {
            HashMap hashMap2 = new HashMap();
            map.put(split[i], hashMap2);
            i++;
            Object obj2 = hashMap2;
        }
        map.put(split[split.length - 1], obj);
        return hashMap;
    }
}
