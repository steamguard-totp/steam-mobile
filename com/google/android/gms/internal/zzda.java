package com.google.android.gms.internal;

import android.annotation.TargetApi;
import android.app.Activity;
import android.app.Application;
import android.app.Application.ActivityLifecycleCallbacks;
import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import com.google.android.gms.common.util.zzs;
import java.util.ArrayList;
import java.util.List;

@zzmb
public class zzda {
    private final Object zzxv = new Object();
    private zza zzxw = null;
    private boolean zzxx = false;

    @TargetApi(14)
    static class zza implements ActivityLifecycleCallbacks {
        private Activity mActivity;
        private Context mContext;
        private List<zzb> mListeners = new ArrayList();
        private final Object zzrN = new Object();
        private boolean zztW = false;
        private Runnable zzxA;
        private long zzxB;
        private boolean zzxy = true;
        private boolean zzxz = false;

        zza() {
        }

        private void setActivity(Activity activity) {
            synchronized (this.zzrN) {
                if (!activity.getClass().getName().startsWith("com.google.android.gms.ads")) {
                    this.mActivity = activity;
                }
            }
        }

        public Activity getActivity() {
            return this.mActivity;
        }

        public Context getContext() {
            return this.mContext;
        }

        public void onActivityCreated(Activity activity, Bundle bundle) {
        }

        /* JADX WARNING: inconsistent code. */
        /* Code decompiled incorrectly, please refer to instructions dump. */
        public void onActivityDestroyed(android.app.Activity r3) {
            /*
            r2 = this;
            r1 = r2.zzrN;
            monitor-enter(r1);
            r0 = r2.mActivity;	 Catch:{ all -> 0x0016 }
            if (r0 != 0) goto L_0x0009;
        L_0x0007:
            monitor-exit(r1);	 Catch:{ all -> 0x0016 }
        L_0x0008:
            return;
        L_0x0009:
            r0 = r2.mActivity;	 Catch:{ all -> 0x0016 }
            r0 = r0.equals(r3);	 Catch:{ all -> 0x0016 }
            if (r0 == 0) goto L_0x0014;
        L_0x0011:
            r0 = 0;
            r2.mActivity = r0;	 Catch:{ all -> 0x0016 }
        L_0x0014:
            monitor-exit(r1);	 Catch:{ all -> 0x0016 }
            goto L_0x0008;
        L_0x0016:
            r0 = move-exception;
            monitor-exit(r1);	 Catch:{ all -> 0x0016 }
            throw r0;
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.zzda.zza.onActivityDestroyed(android.app.Activity):void");
        }

        public void onActivityPaused(Activity activity) {
            setActivity(activity);
            this.zzxz = true;
            if (this.zzxA != null) {
                zzpi.zzWR.removeCallbacks(this.zzxA);
            }
            Handler handler = zzpi.zzWR;
            Runnable anonymousClass1 = new Runnable(this) {
                final /* synthetic */ zza zzxC;

                {
                    this.zzxC = r1;
                }

                public void run() {
                    synchronized (this.zzxC.zzrN) {
                        if (this.zzxC.zzxy && this.zzxC.zzxz) {
                            this.zzxC.zzxy = false;
                            zzpy.zzbc("App went background");
                            for (zzb zzk : this.zzxC.mListeners) {
                                try {
                                    zzk.zzk(false);
                                } catch (Throwable e) {
                                    zzpy.zzb("OnForegroundStateChangedListener threw exception.", e);
                                }
                            }
                        } else {
                            zzpy.zzbc("App is still foreground");
                        }
                    }
                }
            };
            this.zzxA = anonymousClass1;
            handler.postDelayed(anonymousClass1, this.zzxB);
        }

        public void onActivityResumed(Activity activity) {
            boolean z = false;
            setActivity(activity);
            this.zzxz = false;
            if (!this.zzxy) {
                z = true;
            }
            this.zzxy = true;
            if (this.zzxA != null) {
                zzpi.zzWR.removeCallbacks(this.zzxA);
            }
            synchronized (this.zzrN) {
                if (z) {
                    for (zzb zzk : this.mListeners) {
                        try {
                            zzk.zzk(true);
                        } catch (Throwable e) {
                            zzpy.zzb("OnForegroundStateChangedListener threw exception.", e);
                        }
                    }
                } else {
                    zzpy.zzbc("App is still foreground.");
                }
            }
        }

        public void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
        }

        public void onActivityStarted(Activity activity) {
            setActivity(activity);
        }

        public void onActivityStopped(Activity activity) {
        }

        public void zza(Application application, Context context) {
            if (!this.zztW) {
                application.registerActivityLifecycleCallbacks(this);
                if (context instanceof Activity) {
                    setActivity((Activity) context);
                }
                this.mContext = context;
                this.zzxB = ((Long) zzfx.zzCu.get()).longValue();
                this.zztW = true;
            }
        }

        public void zza(zzb com_google_android_gms_internal_zzda_zzb) {
            this.mListeners.add(com_google_android_gms_internal_zzda_zzb);
        }
    }

    public interface zzb {
        void zzk(boolean z);
    }

    public Activity getActivity() {
        Activity activity = null;
        synchronized (this.zzxv) {
            if (!zzs.zzyA()) {
            } else if (this.zzxw != null) {
                activity = this.zzxw.getActivity();
            }
        }
        return activity;
    }

    public Context getContext() {
        Context context = null;
        synchronized (this.zzxv) {
            if (!zzs.zzyA()) {
            } else if (this.zzxw != null) {
                context = this.zzxw.getContext();
            }
        }
        return context;
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void initialize(android.content.Context r5) {
        /*
        r4 = this;
        r2 = r4.zzxv;
        monitor-enter(r2);
        r0 = r4.zzxx;	 Catch:{ all -> 0x001f }
        if (r0 != 0) goto L_0x004c;
    L_0x0007:
        r0 = com.google.android.gms.common.util.zzs.zzyA();	 Catch:{ all -> 0x001f }
        if (r0 != 0) goto L_0x000f;
    L_0x000d:
        monitor-exit(r2);	 Catch:{ all -> 0x001f }
    L_0x000e:
        return;
    L_0x000f:
        r0 = com.google.android.gms.internal.zzfx.zzCt;	 Catch:{ all -> 0x001f }
        r0 = r0.get();	 Catch:{ all -> 0x001f }
        r0 = (java.lang.Boolean) r0;	 Catch:{ all -> 0x001f }
        r0 = r0.booleanValue();	 Catch:{ all -> 0x001f }
        if (r0 != 0) goto L_0x0022;
    L_0x001d:
        monitor-exit(r2);	 Catch:{ all -> 0x001f }
        goto L_0x000e;
    L_0x001f:
        r0 = move-exception;
        monitor-exit(r2);	 Catch:{ all -> 0x001f }
        throw r0;
    L_0x0022:
        r1 = 0;
        r0 = r5.getApplicationContext();	 Catch:{ all -> 0x001f }
        if (r0 != 0) goto L_0x002a;
    L_0x0029:
        r0 = r5;
    L_0x002a:
        r3 = r0 instanceof android.app.Application;	 Catch:{ all -> 0x001f }
        if (r3 == 0) goto L_0x004e;
    L_0x002e:
        r0 = (android.app.Application) r0;	 Catch:{ all -> 0x001f }
    L_0x0030:
        if (r0 != 0) goto L_0x0039;
    L_0x0032:
        r0 = "Can not cast Context to Application";
        com.google.android.gms.internal.zzpy.zzbe(r0);	 Catch:{ all -> 0x001f }
        monitor-exit(r2);	 Catch:{ all -> 0x001f }
        goto L_0x000e;
    L_0x0039:
        r1 = r4.zzxw;	 Catch:{ all -> 0x001f }
        if (r1 != 0) goto L_0x0044;
    L_0x003d:
        r1 = new com.google.android.gms.internal.zzda$zza;	 Catch:{ all -> 0x001f }
        r1.<init>();	 Catch:{ all -> 0x001f }
        r4.zzxw = r1;	 Catch:{ all -> 0x001f }
    L_0x0044:
        r1 = r4.zzxw;	 Catch:{ all -> 0x001f }
        r1.zza(r0, r5);	 Catch:{ all -> 0x001f }
        r0 = 1;
        r4.zzxx = r0;	 Catch:{ all -> 0x001f }
    L_0x004c:
        monitor-exit(r2);	 Catch:{ all -> 0x001f }
        goto L_0x000e;
    L_0x004e:
        r0 = r1;
        goto L_0x0030;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.zzda.initialize(android.content.Context):void");
    }

    public void zza(zzb com_google_android_gms_internal_zzda_zzb) {
        synchronized (this.zzxv) {
            if (!zzs.zzyA()) {
            } else if (((Boolean) zzfx.zzCt.get()).booleanValue()) {
                if (this.zzxw == null) {
                    this.zzxw = new zza();
                }
                this.zzxw.zza(com_google_android_gms_internal_zzda_zzb);
            }
        }
    }
}
