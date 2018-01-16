package com.google.android.gms.internal;

import android.app.Activity;
import android.app.Application;
import android.app.Application.ActivityLifecycleCallbacks;
import android.os.Bundle;
import java.lang.ref.WeakReference;

class zzcw implements ActivityLifecycleCallbacks {
    private final Application zzwI;
    private final WeakReference<ActivityLifecycleCallbacks> zzxc;

    public interface zza {
        void zza(ActivityLifecycleCallbacks activityLifecycleCallbacks);
    }

    public zzcw(Application application, ActivityLifecycleCallbacks activityLifecycleCallbacks) {
        this.zzxc = new WeakReference(activityLifecycleCallbacks);
        this.zzwI = application;
    }

    public void onActivityCreated(final Activity activity, final Bundle bundle) {
        zza(new zza(this) {
            public void zza(ActivityLifecycleCallbacks activityLifecycleCallbacks) {
                activityLifecycleCallbacks.onActivityCreated(activity, bundle);
            }
        });
    }

    public void onActivityDestroyed(final Activity activity) {
        zza(new zza(this) {
            public void zza(ActivityLifecycleCallbacks activityLifecycleCallbacks) {
                activityLifecycleCallbacks.onActivityDestroyed(activity);
            }
        });
    }

    public void onActivityPaused(final Activity activity) {
        zza(new zza(this) {
            public void zza(ActivityLifecycleCallbacks activityLifecycleCallbacks) {
                activityLifecycleCallbacks.onActivityPaused(activity);
            }
        });
    }

    public void onActivityResumed(final Activity activity) {
        zza(new zza(this) {
            public void zza(ActivityLifecycleCallbacks activityLifecycleCallbacks) {
                activityLifecycleCallbacks.onActivityResumed(activity);
            }
        });
    }

    public void onActivitySaveInstanceState(final Activity activity, final Bundle bundle) {
        zza(new zza(this) {
            public void zza(ActivityLifecycleCallbacks activityLifecycleCallbacks) {
                activityLifecycleCallbacks.onActivitySaveInstanceState(activity, bundle);
            }
        });
    }

    public void onActivityStarted(final Activity activity) {
        zza(new zza(this) {
            public void zza(ActivityLifecycleCallbacks activityLifecycleCallbacks) {
                activityLifecycleCallbacks.onActivityStarted(activity);
            }
        });
    }

    public void onActivityStopped(final Activity activity) {
        zza(new zza(this) {
            public void zza(ActivityLifecycleCallbacks activityLifecycleCallbacks) {
                activityLifecycleCallbacks.onActivityStopped(activity);
            }
        });
    }

    protected void zza(zza com_google_android_gms_internal_zzcw_zza) {
        try {
            ActivityLifecycleCallbacks activityLifecycleCallbacks = (ActivityLifecycleCallbacks) this.zzxc.get();
            if (activityLifecycleCallbacks != null) {
                com_google_android_gms_internal_zzcw_zza.zza(activityLifecycleCallbacks);
            } else {
                this.zzwI.unregisterActivityLifecycleCallbacks(this);
            }
        } catch (Throwable e) {
            zzpy.zzb("Error while dispatching lifecycle callback.", e);
        }
    }
}
