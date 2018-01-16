package com.google.android.gms.internal;

public final class zzaaz<L> {
    private volatile L mListener;

    public static final class zzb<L> {
        private final L mListener;
        private final String zzaBB;

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof zzb)) {
                return false;
            }
            zzb com_google_android_gms_internal_zzaaz_zzb = (zzb) obj;
            return this.mListener == com_google_android_gms_internal_zzaaz_zzb.mListener && this.zzaBB.equals(com_google_android_gms_internal_zzaaz_zzb.zzaBB);
        }

        public int hashCode() {
            return (System.identityHashCode(this.mListener) * 31) + this.zzaBB.hashCode();
        }
    }

    public void clear() {
        this.mListener = null;
    }
}
