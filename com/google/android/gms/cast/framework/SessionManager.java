package com.google.android.gms.cast.framework;

import com.google.android.gms.common.internal.zzac;
import com.google.android.gms.dynamic.zzd;
import com.google.android.gms.dynamic.zze;
import com.google.android.gms.internal.zzyu;

public class SessionManager {
    private static final zzyu zzaoQ = new zzyu("SessionManager");
    private final zzn zzapC;

    public SessionManager(zzn com_google_android_gms_cast_framework_zzn) {
        this.zzapC = com_google_android_gms_cast_framework_zzn;
    }

    public <T extends Session> void addSessionManagerListener(SessionManagerListener<T> sessionManagerListener, Class<T> cls) throws NullPointerException {
        zzac.zzw(sessionManagerListener);
        zzac.zzw(cls);
        zzac.zzdn("Must be called from the main thread.");
        try {
            this.zzapC.zza(new zzr(sessionManagerListener, cls));
        } catch (Throwable e) {
            zzaoQ.zzb(e, "Unable to call %s on %s.", "addSessionManagerListener", zzn.class.getSimpleName());
        }
    }

    public void endCurrentSession(boolean z) {
        zzac.zzdn("Must be called from the main thread.");
        try {
            this.zzapC.zzb(true, z);
        } catch (Throwable e) {
            zzaoQ.zzb(e, "Unable to call %s on %s.", "endCurrentSession", zzn.class.getSimpleName());
        }
    }

    public CastSession getCurrentCastSession() {
        zzac.zzdn("Must be called from the main thread.");
        Session currentSession = getCurrentSession();
        return (currentSession == null || !(currentSession instanceof CastSession)) ? null : (CastSession) currentSession;
    }

    public Session getCurrentSession() {
        zzac.zzdn("Must be called from the main thread.");
        try {
            return (Session) zze.zzE(this.zzapC.zzsr());
        } catch (Throwable e) {
            zzaoQ.zzb(e, "Unable to call %s on %s.", "getWrappedCurrentSession", zzn.class.getSimpleName());
            return null;
        }
    }

    public <T extends Session> void removeSessionManagerListener(SessionManagerListener<T> sessionManagerListener, Class cls) {
        zzac.zzw(cls);
        zzac.zzdn("Must be called from the main thread.");
        if (sessionManagerListener != null) {
            try {
                this.zzapC.zzb(new zzr(sessionManagerListener, cls));
            } catch (Throwable e) {
                zzaoQ.zzb(e, "Unable to call %s on %s.", "removeSessionManagerListener", zzn.class.getSimpleName());
            }
        }
    }

    public zzd zzsg() {
        try {
            return this.zzapC.zzsl();
        } catch (Throwable e) {
            zzaoQ.zzb(e, "Unable to call %s on %s.", "getWrappedThis", zzn.class.getSimpleName());
            return null;
        }
    }
}
