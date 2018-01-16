package com.google.android.gms.cast.framework;

import android.content.Context;
import android.os.IBinder;
import com.google.android.gms.common.internal.zzac;
import com.google.android.gms.dynamic.zzd;

public abstract class SessionProvider {
    private final String mCategory;
    private final zza zzapF = new zza();
    private final Context zzvZ;

    private class zza extends com.google.android.gms.cast.framework.zzp.zza {
        final /* synthetic */ SessionProvider zzapG;

        private zza(SessionProvider sessionProvider) {
            this.zzapG = sessionProvider;
        }

        public String getCategory() {
            return this.zzapG.getCategory();
        }

        public boolean isSessionRecoverable() {
            return this.zzapG.isSessionRecoverable();
        }

        public zzd zzcK(String str) {
            Session createSession = this.zzapG.createSession(str);
            return createSession == null ? null : createSession.zzsp();
        }
    }

    protected SessionProvider(Context context, String str) {
        this.zzvZ = ((Context) zzac.zzw(context)).getApplicationContext();
        this.mCategory = zzac.zzdv(str);
    }

    public abstract Session createSession(String str);

    public final String getCategory() {
        return this.mCategory;
    }

    public final Context getContext() {
        return this.zzvZ;
    }

    public abstract boolean isSessionRecoverable();

    public IBinder zzsA() {
        return this.zzapF;
    }
}
