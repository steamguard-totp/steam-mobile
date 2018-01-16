package com.google.android.gms.internal;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public final class zzbro extends zzbrr implements Iterable<zzbrr> {
    private final List<zzbrr> zzbNt = new ArrayList();

    public boolean equals(Object obj) {
        return obj == this || ((obj instanceof zzbro) && ((zzbro) obj).zzbNt.equals(this.zzbNt));
    }

    public boolean getAsBoolean() {
        if (this.zzbNt.size() == 1) {
            return ((zzbrr) this.zzbNt.get(0)).getAsBoolean();
        }
        throw new IllegalStateException();
    }

    public double getAsDouble() {
        if (this.zzbNt.size() == 1) {
            return ((zzbrr) this.zzbNt.get(0)).getAsDouble();
        }
        throw new IllegalStateException();
    }

    public int getAsInt() {
        if (this.zzbNt.size() == 1) {
            return ((zzbrr) this.zzbNt.get(0)).getAsInt();
        }
        throw new IllegalStateException();
    }

    public long getAsLong() {
        if (this.zzbNt.size() == 1) {
            return ((zzbrr) this.zzbNt.get(0)).getAsLong();
        }
        throw new IllegalStateException();
    }

    public int hashCode() {
        return this.zzbNt.hashCode();
    }

    public Iterator<zzbrr> iterator() {
        return this.zzbNt.iterator();
    }

    public int size() {
        return this.zzbNt.size();
    }

    public Number zzabt() {
        if (this.zzbNt.size() == 1) {
            return ((zzbrr) this.zzbNt.get(0)).zzabt();
        }
        throw new IllegalStateException();
    }

    public String zzabu() {
        if (this.zzbNt.size() == 1) {
            return ((zzbrr) this.zzbNt.get(0)).zzabu();
        }
        throw new IllegalStateException();
    }

    public void zzc(zzbrr com_google_android_gms_internal_zzbrr) {
        Object obj;
        if (com_google_android_gms_internal_zzbrr == null) {
            obj = zzbrt.zzcmL;
        }
        this.zzbNt.add(obj);
    }

    public zzbrr zzqc(int i) {
        return (zzbrr) this.zzbNt.get(i);
    }
}
