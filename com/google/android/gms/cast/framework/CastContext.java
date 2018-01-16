package com.google.android.gms.cast.framework;

import android.annotation.TargetApi;
import android.app.Activity;
import android.app.Application;
import android.app.Application.ActivityLifecycleCallbacks;
import android.content.Context;
import android.content.pm.PackageManager.NameNotFoundException;
import android.os.Bundle;
import android.support.v4.app.FragmentActivity;
import android.support.v7.media.MediaRouter;
import com.google.android.gms.common.internal.zzac;
import com.google.android.gms.common.util.zzs;
import com.google.android.gms.dynamic.zzd;
import com.google.android.gms.dynamic.zze;
import com.google.android.gms.internal.zzwp;
import com.google.android.gms.internal.zzwq;
import com.google.android.gms.internal.zzwr;
import com.google.android.gms.internal.zzwz;
import com.google.android.gms.internal.zzyu;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public final class CastContext {
    private static final zzyu zzaoQ = new zzyu("CastContext");
    private static zza zzaoR;
    private static CastContext zzaoS;
    private final Context zzOZ;
    private final zzg zzaoT;
    private final SessionManager zzaoU;
    private final zzd zzaoV;
    private final CastOptions zzaoW;
    private zzwz zzaoX = new zzwz(MediaRouter.getInstance(this.zzOZ));

    @TargetApi(14)
    private static class zza implements ActivityLifecycleCallbacks {
        private Context zzOZ;

        public zza(Context context) {
            this.zzOZ = context.getApplicationContext();
        }

        public void onActivityCreated(Activity activity, Bundle bundle) {
        }

        public void onActivityDestroyed(Activity activity) {
        }

        public void onActivityPaused(Activity activity) {
            CastContext.getSharedInstance(this.zzOZ).onActivityPaused(activity);
        }

        public void onActivityResumed(Activity activity) {
            CastContext.getSharedInstance(this.zzOZ).onActivityResumed(activity);
        }

        public void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
        }

        public void onActivityStarted(Activity activity) {
        }

        public void onActivityStopped(Activity activity) {
        }
    }

    private CastContext(Context context, CastOptions castOptions, List<SessionProvider> list) {
        zzj zzsk;
        zzn zzsj;
        SessionManager sessionManager = null;
        this.zzOZ = context.getApplicationContext();
        this.zzaoW = castOptions;
        Map hashMap = new HashMap();
        zzwr com_google_android_gms_internal_zzwr = new zzwr(this.zzOZ, castOptions, this.zzaoX);
        hashMap.put(com_google_android_gms_internal_zzwr.getCategory(), com_google_android_gms_internal_zzwr.zzsA());
        if (list != null) {
            for (Object obj : list) {
                zzac.zzb(obj, (Object) "Additional SessionProvider must not be null.");
                String zzh = zzac.zzh(obj.getCategory(), "Category for SessionProvider must not be null or empty string.");
                zzac.zzb(!hashMap.containsKey(zzh), String.format("SessionProvider for category %s already added", new Object[]{zzh}));
                hashMap.put(zzh, obj.zzsA());
            }
        }
        this.zzaoT = zzwq.zza(this.zzOZ, castOptions, this.zzaoX, hashMap);
        try {
            zzsk = this.zzaoT.zzsk();
        } catch (Throwable e) {
            zzaoQ.zzb(e, "Unable to call %s on %s.", "getDiscoveryManagerImpl", zzg.class.getSimpleName());
            zzsk = null;
        }
        this.zzaoV = zzsk == null ? null : new zzd(zzsk);
        try {
            zzsj = this.zzaoT.zzsj();
        } catch (Throwable e2) {
            zzaoQ.zzb(e2, "Unable to call %s on %s.", "getSessionManagerImpl", zzg.class.getSimpleName());
            zzsj = null;
        }
        if (zzsj != null) {
            sessionManager = new SessionManager(zzsj);
        }
        this.zzaoU = sessionManager;
    }

    public static CastContext getSharedInstance(Context context) throws IllegalStateException {
        zzac.zzdn("Must be called from the main thread.");
        if (zzaoS == null) {
            OptionsProvider zzab = zzab(context.getApplicationContext());
            zzaoS = new CastContext(context, zzab.getCastOptions(context.getApplicationContext()), zzab.getAdditionalSessionProviders(context.getApplicationContext()));
            if (zzs.zzyA()) {
                zzaoR = new zza(context.getApplicationContext());
                ((Application) context.getApplicationContext()).registerActivityLifecycleCallbacks(zzaoR);
            }
        }
        return zzaoS;
    }

    private static OptionsProvider zzab(Context context) throws IllegalStateException {
        Throwable e;
        try {
            String string = context.getPackageManager().getApplicationInfo(context.getPackageName(), 128).metaData.getString("com.google.android.gms.cast.framework.OPTIONS_PROVIDER_CLASS_NAME");
            if (string != null) {
                return (OptionsProvider) Class.forName(string).newInstance();
            }
            throw new IllegalStateException("The fully qualified name of the implementation of OptionsProvider must be provided as a metadata in the AndroidManifest.xml with key com.google.android.gms.cast.framework.OPTIONS_PROVIDER_CLASS_NAME.");
        } catch (NameNotFoundException e2) {
            e = e2;
            throw new IllegalStateException("Failed to initialize CastContext.", e);
        } catch (ClassNotFoundException e3) {
            e = e3;
            throw new IllegalStateException("Failed to initialize CastContext.", e);
        } catch (NullPointerException e4) {
            e = e4;
            throw new IllegalStateException("Failed to initialize CastContext.", e);
        } catch (InstantiationException e5) {
            e = e5;
            throw new IllegalStateException("Failed to initialize CastContext.", e);
        } catch (IllegalAccessException e6) {
            e = e6;
            throw new IllegalStateException("Failed to initialize CastContext.", e);
        }
    }

    public CastOptions getCastOptions() throws IllegalStateException {
        zzac.zzdn("Must be called from the main thread.");
        return this.zzaoW;
    }

    public SessionManager getSessionManager() throws IllegalStateException {
        zzac.zzdn("Must be called from the main thread.");
        return this.zzaoU;
    }

    public void onActivityPaused(Activity activity) {
        zzac.zzdn("Must be called from the main thread.");
        try {
            this.zzaoT.zzy(zze.zzA(activity));
        } catch (Throwable e) {
            zzaoQ.zzb(e, "Unable to call %s on %s.", "onActivityPaused", zzg.class.getSimpleName());
        }
    }

    public void onActivityResumed(Activity activity) {
        zzac.zzdn("Must be called from the main thread.");
        try {
            this.zzaoT.zzx(zze.zzA(activity));
        } catch (Throwable e) {
            zzaoQ.zzb(e, "Unable to call %s on %s.", "onActivityResumed", zzg.class.getSimpleName());
        }
    }

    public void registerLifecycleCallbacksBeforeIceCreamSandwich(FragmentActivity fragmentActivity, Bundle bundle) {
        zzac.zzdn("Must be called from the main thread.");
        if (!zzs.zzyA()) {
            zzwp.zza(fragmentActivity, bundle);
        }
    }

    public zzd zzsf() {
        zzac.zzdn("Must be called from the main thread.");
        return this.zzaoV;
    }

    public zzd zzsg() {
        try {
            return this.zzaoT.zzsl();
        } catch (Throwable e) {
            zzaoQ.zzb(e, "Unable to call %s on %s.", "getWrappedThis", zzg.class.getSimpleName());
            return null;
        }
    }
}
