package com.google.android.gms.internal;

import com.google.android.gms.common.internal.zzac;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.NoSuchElementException;

public final class zzbgb extends zzbfw<List<zzbfw<?>>> {
    private static final Map<String, zzazt> zzbKP;
    private final ArrayList<zzbfw<?>> zzbKY;

    static {
        Map hashMap = new HashMap();
        hashMap.put("concat", new zzazw());
        hashMap.put("every", new zzazx());
        hashMap.put("filter", new zzazy());
        hashMap.put("forEach", new zzazz());
        hashMap.put("indexOf", new zzbaa());
        hashMap.put("hasOwnProperty", zzbbr.zzbJy);
        hashMap.put("join", new zzbab());
        hashMap.put("lastIndexOf", new zzbac());
        hashMap.put("map", new zzbad());
        hashMap.put("pop", new zzbae());
        hashMap.put("push", new zzbaf());
        hashMap.put("reduce", new zzbag());
        hashMap.put("reduceRight", new zzbah());
        hashMap.put("reverse", new zzbai());
        hashMap.put("shift", new zzbaj());
        hashMap.put("slice", new zzbak());
        hashMap.put("some", new zzbal());
        hashMap.put("sort", new zzbam());
        hashMap.put("splice", new zzban());
        hashMap.put("toString", new zzbct());
        hashMap.put("unshift", new zzbao());
        zzbKP = Collections.unmodifiableMap(hashMap);
    }

    public zzbgb(List<zzbfw<?>> list) {
        zzac.zzw(list);
        this.zzbKY = new ArrayList(list);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zzbgb)) {
            return false;
        }
        List list = (List) ((zzbgb) obj).zzRF();
        if (this.zzbKY.size() != list.size()) {
            return false;
        }
        int i = 0;
        boolean z = true;
        while (i < this.zzbKY.size()) {
            boolean equals = this.zzbKY.get(i) == null ? list.get(i) == null : ((zzbfw) this.zzbKY.get(i)).equals(list.get(i));
            if (!equals) {
                return equals;
            }
            i++;
            z = equals;
        }
        return z;
    }

    public void setSize(int i) {
        zzac.zzb(i >= 0, (Object) "Invalid array length");
        if (this.zzbKY.size() != i) {
            if (this.zzbKY.size() < i) {
                this.zzbKY.ensureCapacity(i);
                for (int size = this.zzbKY.size(); size < i; size++) {
                    this.zzbKY.add(null);
                }
                return;
            }
            this.zzbKY.subList(i, this.zzbKY.size()).clear();
        }
    }

    public String toString() {
        return this.zzbKY.toString();
    }

    public Iterator<zzbfw<?>> zzRE() {
        final Iterator anonymousClass1 = new Iterator<zzbfw<?>>(this) {
            private int zzbKZ = 0;
            final /* synthetic */ zzbgb zzbLa;

            {
                this.zzbLa = r2;
            }

            public boolean hasNext() {
                for (int i = this.zzbKZ; i < this.zzbLa.zzbKY.size(); i++) {
                    if (this.zzbLa.zzbKY.get(i) != null) {
                        return true;
                    }
                }
                return false;
            }

            public /* synthetic */ Object next() {
                return zzRH();
            }

            public void remove() {
                throw new UnsupportedOperationException();
            }

            public zzbfw<?> zzRH() {
                if (this.zzbKZ >= this.zzbLa.zzbKY.size()) {
                    throw new NoSuchElementException();
                }
                for (int i = this.zzbKZ; i < this.zzbLa.zzbKY.size(); i++) {
                    if (this.zzbLa.zzbKY.get(i) != null) {
                        this.zzbKZ = i;
                        int i2 = this.zzbKZ;
                        this.zzbKZ = i2 + 1;
                        return new zzbfy(Double.valueOf((double) i2));
                    }
                }
                throw new NoSuchElementException();
            }
        };
        final Iterator zzRG = super.zzRG();
        return new Iterator<zzbfw<?>>(this) {
            public boolean hasNext() {
                return anonymousClass1.hasNext() || zzRG.hasNext();
            }

            public /* synthetic */ Object next() {
                return zzRH();
            }

            public void remove() {
                throw new UnsupportedOperationException();
            }

            public zzbfw<?> zzRH() {
                return anonymousClass1.hasNext() ? (zzbfw) anonymousClass1.next() : (zzbfw) zzRG.next();
            }
        };
    }

    public /* synthetic */ Object zzRF() {
        return zzRN();
    }

    public List<zzbfw<?>> zzRN() {
        return this.zzbKY;
    }

    public void zza(int i, zzbfw<?> com_google_android_gms_internal_zzbfw_) {
        if (i < 0) {
            throw new IndexOutOfBoundsException();
        }
        if (i >= this.zzbKY.size()) {
            setSize(i + 1);
        }
        this.zzbKY.set(i, com_google_android_gms_internal_zzbfw_);
    }

    public boolean zzih(String str) {
        return zzbKP.containsKey(str);
    }

    public zzazt zzii(String str) {
        if (zzih(str)) {
            return (zzazt) zzbKP.get(str);
        }
        throw new IllegalStateException(new StringBuilder(String.valueOf(str).length() + 51).append("Native Method ").append(str).append(" is not defined for type ListWrapper.").toString());
    }

    public zzbfw<?> zzna(int i) {
        if (i < 0 || i >= this.zzbKY.size()) {
            return zzbga.zzbKV;
        }
        zzbfw<?> com_google_android_gms_internal_zzbfw_ = (zzbfw) this.zzbKY.get(i);
        return com_google_android_gms_internal_zzbfw_ == null ? zzbga.zzbKV : com_google_android_gms_internal_zzbfw_;
    }

    public boolean zznb(int i) {
        return i >= 0 && i < this.zzbKY.size() && this.zzbKY.get(i) != null;
    }
}
