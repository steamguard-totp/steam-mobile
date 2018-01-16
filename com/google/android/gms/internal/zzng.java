package com.google.android.gms.internal;

import android.content.Context;
import com.google.android.gms.ads.internal.zzv;
import java.util.WeakHashMap;

@zzmb
public final class zzng {
    private WeakHashMap<Context, zza> zzUx = new WeakHashMap();

    private class zza {
        public final long zzUy = zzv.zzcP().currentTimeMillis();
        public final zznf zzUz;

        public zza(zzng com_google_android_gms_internal_zzng, zznf com_google_android_gms_internal_zznf) {
            this.zzUz = com_google_android_gms_internal_zznf;
        }

        public boolean hasExpired() {
            return ((Long) zzfx.zzCQ.get()).longValue() + this.zzUy < zzv.zzcP().currentTimeMillis();
        }
    }

    public zznf zzv(Context context) {
        zza com_google_android_gms_internal_zzng_zza = (zza) this.zzUx.get(context);
        zznf zzjn = (com_google_android_gms_internal_zzng_zza == null || com_google_android_gms_internal_zzng_zza.hasExpired() || !((Boolean) zzfx.zzCP.get()).booleanValue()) ? new com.google.android.gms.internal.zznf.zza(context).zzjn() : new com.google.android.gms.internal.zznf.zza(context, com_google_android_gms_internal_zzng_zza.zzUz).zzjn();
        this.zzUx.put(context, new zza(this, zzjn));
        return zzjn;
    }
}
