package com.google.android.gms.internal;

import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.NoSuchElementException;

public abstract class zzbfw<T> {
    protected Map<String, zzbfw<?>> zzbKM;

    private static class zza implements Iterator<zzbfw<?>> {
        private zza() {
        }

        public boolean hasNext() {
            return false;
        }

        public /* synthetic */ Object next() {
            return zzRH();
        }

        public void remove() {
            throw new UnsupportedOperationException();
        }

        public zzbfw<?> zzRH() {
            throw new NoSuchElementException();
        }
    }

    public abstract String toString();

    public Iterator<zzbfw<?>> zzRE() {
        return new zza();
    }

    public abstract T zzRF();

    protected Iterator<zzbfw<?>> zzRG() {
        if (this.zzbKM == null) {
            return new zza();
        }
        final Iterator it = this.zzbKM.keySet().iterator();
        return new Iterator<zzbfw<?>>(this) {
            public boolean hasNext() {
                return it.hasNext();
            }

            public /* synthetic */ Object next() {
                return zzRH();
            }

            public void remove() {
                it.remove();
            }

            public zzbfw<?> zzRH() {
                return new zzbge((String) it.next());
            }
        };
    }

    public void zzc(String str, zzbfw<?> com_google_android_gms_internal_zzbfw_) {
        if (this.zzbKM == null) {
            this.zzbKM = new HashMap();
        }
        this.zzbKM.put(str, com_google_android_gms_internal_zzbfw_);
    }

    public boolean zzif(String str) {
        return this.zzbKM != null && this.zzbKM.containsKey(str);
    }

    public zzbfw<?> zzig(String str) {
        return this.zzbKM != null ? (zzbfw) this.zzbKM.get(str) : zzbga.zzbKV;
    }

    public boolean zzih(String str) {
        return false;
    }

    public zzazt zzii(String str) {
        throw new IllegalStateException(new StringBuilder(String.valueOf(str).length() + 56).append("Attempting to access Native Method ").append(str).append(" on unsupported type.").toString());
    }
}
