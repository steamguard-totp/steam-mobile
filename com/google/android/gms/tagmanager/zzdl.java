package com.google.android.gms.tagmanager;

class zzdl extends Number implements Comparable<zzdl> {
    private double zzbGD;
    private long zzbGE;
    private boolean zzbGF = true;

    private zzdl(long j) {
        this.zzbGE = j;
    }

    public static zzdl zzax(long j) {
        return new zzdl(j);
    }

    public byte byteValue() {
        return (byte) ((int) longValue());
    }

    public /* synthetic */ int compareTo(Object obj) {
        return zza((zzdl) obj);
    }

    public double doubleValue() {
        return zzQc() ? (double) this.zzbGE : this.zzbGD;
    }

    public boolean equals(Object obj) {
        return (obj instanceof zzdl) && zza((zzdl) obj) == 0;
    }

    public float floatValue() {
        return (float) doubleValue();
    }

    public int hashCode() {
        return new Long(longValue()).hashCode();
    }

    public int intValue() {
        return zzQe();
    }

    public long longValue() {
        return zzQd();
    }

    public short shortValue() {
        return zzQf();
    }

    public String toString() {
        return zzQc() ? Long.toString(this.zzbGE) : Double.toString(this.zzbGD);
    }

    public boolean zzQb() {
        return !zzQc();
    }

    public boolean zzQc() {
        return this.zzbGF;
    }

    public long zzQd() {
        return zzQc() ? this.zzbGE : (long) this.zzbGD;
    }

    public int zzQe() {
        return (int) longValue();
    }

    public short zzQf() {
        return (short) ((int) longValue());
    }

    public int zza(zzdl com_google_android_gms_tagmanager_zzdl) {
        return (zzQc() && com_google_android_gms_tagmanager_zzdl.zzQc()) ? new Long(this.zzbGE).compareTo(Long.valueOf(com_google_android_gms_tagmanager_zzdl.zzbGE)) : Double.compare(doubleValue(), com_google_android_gms_tagmanager_zzdl.doubleValue());
    }
}
