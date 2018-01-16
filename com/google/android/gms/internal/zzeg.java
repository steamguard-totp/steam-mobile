package com.google.android.gms.internal;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.IBinder;
import android.os.RemoteException;
import com.google.android.gms.dynamic.zze;

@zzmb
public class zzeg {
    private final Object zzrN = new Object();
    private zzes zzzs;
    private final zzdx zzzt;
    private final zzdw zzzu;
    private final zzfd zzzv;
    private final zzhn zzzw;
    private final zznv zzzx;
    private final zzlf zzzy;
    private final zzkq zzzz;

    abstract class zza<T> {
        final /* synthetic */ zzeg zzzC;

        zza(zzeg com_google_android_gms_internal_zzeg) {
            this.zzzC = com_google_android_gms_internal_zzeg;
        }

        protected abstract T zzb(zzes com_google_android_gms_internal_zzes) throws RemoteException;

        protected abstract T zzeE() throws RemoteException;

        protected final T zzeL() {
            T t = null;
            zzes zza = this.zzzC.zzeC();
            if (zza == null) {
                zzpy.zzbe("ClientApi class cannot be loaded.");
            } else {
                try {
                    t = zzb(zza);
                } catch (Throwable e) {
                    zzpy.zzc("Cannot invoke local loader using ClientApi class", e);
                }
            }
            return t;
        }

        protected final T zzeM() {
            try {
                return zzeE();
            } catch (Throwable e) {
                zzpy.zzc("Cannot invoke remote loader", e);
                return null;
            }
        }
    }

    public zzeg(zzdx com_google_android_gms_internal_zzdx, zzdw com_google_android_gms_internal_zzdw, zzfd com_google_android_gms_internal_zzfd, zzhn com_google_android_gms_internal_zzhn, zznv com_google_android_gms_internal_zznv, zzlf com_google_android_gms_internal_zzlf, zzkq com_google_android_gms_internal_zzkq) {
        this.zzzt = com_google_android_gms_internal_zzdx;
        this.zzzu = com_google_android_gms_internal_zzdw;
        this.zzzv = com_google_android_gms_internal_zzfd;
        this.zzzw = com_google_android_gms_internal_zzhn;
        this.zzzx = com_google_android_gms_internal_zznv;
        this.zzzy = com_google_android_gms_internal_zzlf;
        this.zzzz = com_google_android_gms_internal_zzkq;
    }

    private static boolean zza(Activity activity, String str) {
        Intent intent = activity.getIntent();
        if (intent.hasExtra(str)) {
            return intent.getBooleanExtra(str, false);
        }
        zzpy.e("useClientJar flag not found in activity intent extras.");
        return false;
    }

    private void zzc(Context context, String str) {
        Bundle bundle = new Bundle();
        bundle.putString("action", "no_ads_fallback");
        bundle.putString("flow", str);
        zzeh.zzeO().zza(context, null, "gmob-apps", bundle, true);
    }

    private static zzes zzeB() {
        try {
            Object newInstance = zzeg.class.getClassLoader().loadClass("com.google.android.gms.ads.internal.ClientApi").newInstance();
            if (newInstance instanceof IBinder) {
                return com.google.android.gms.internal.zzes.zza.asInterface((IBinder) newInstance);
            }
            zzpy.zzbe("ClientApi class is not an instance of IBinder");
            return null;
        } catch (Throwable e) {
            zzpy.zzc("Failed to instantiate ClientApi class.", e);
            return null;
        }
    }

    private zzes zzeC() {
        zzes com_google_android_gms_internal_zzes;
        synchronized (this.zzrN) {
            if (this.zzzs == null) {
                this.zzzs = zzeB();
            }
            com_google_android_gms_internal_zzes = this.zzzs;
        }
        return com_google_android_gms_internal_zzes;
    }

    public zzep zza(final Context context, final zzec com_google_android_gms_internal_zzec, final String str) {
        return (zzep) zza(context, false, new zza<zzep>(this) {
            final /* synthetic */ zzeg zzzC;

            public zzep zza(zzes com_google_android_gms_internal_zzes) throws RemoteException {
                return com_google_android_gms_internal_zzes.createSearchAdManager(zze.zzA(context), com_google_android_gms_internal_zzec, str, 10084000);
            }

            public /* synthetic */ Object zzb(zzes com_google_android_gms_internal_zzes) throws RemoteException {
                return zza(com_google_android_gms_internal_zzes);
            }

            public zzep zzeD() {
                zzep zza = this.zzzC.zzzt.zza(context, com_google_android_gms_internal_zzec, str, null, 3);
                if (zza != null) {
                    return zza;
                }
                this.zzzC.zzc(context, "search");
                return new zzff();
            }

            public /* synthetic */ Object zzeE() throws RemoteException {
                return zzeD();
            }
        });
    }

    public zzep zza(Context context, zzec com_google_android_gms_internal_zzec, String str, zzjs com_google_android_gms_internal_zzjs) {
        final Context context2 = context;
        final zzec com_google_android_gms_internal_zzec2 = com_google_android_gms_internal_zzec;
        final String str2 = str;
        final zzjs com_google_android_gms_internal_zzjs2 = com_google_android_gms_internal_zzjs;
        return (zzep) zza(context, false, new zza<zzep>(this) {
            final /* synthetic */ zzeg zzzC;

            public zzep zza(zzes com_google_android_gms_internal_zzes) throws RemoteException {
                return com_google_android_gms_internal_zzes.createBannerAdManager(zze.zzA(context2), com_google_android_gms_internal_zzec2, str2, com_google_android_gms_internal_zzjs2, 10084000);
            }

            public /* synthetic */ Object zzb(zzes com_google_android_gms_internal_zzes) throws RemoteException {
                return zza(com_google_android_gms_internal_zzes);
            }

            public zzep zzeD() {
                zzep zza = this.zzzC.zzzt.zza(context2, com_google_android_gms_internal_zzec2, str2, com_google_android_gms_internal_zzjs2, 1);
                if (zza != null) {
                    return zza;
                }
                this.zzzC.zzc(context2, "banner");
                return new zzff();
            }

            public /* synthetic */ Object zzeE() throws RemoteException {
                return zzeD();
            }
        });
    }

    <T> T zza(Context context, boolean z, zza<T> com_google_android_gms_internal_zzeg_zza_T) {
        if (!(z || zzeh.zzeO().zzP(context))) {
            zzpy.zzbc("Google Play Services is not available");
            z = true;
        }
        T zzeL;
        if (z) {
            zzeL = com_google_android_gms_internal_zzeg_zza_T.zzeL();
            return zzeL == null ? com_google_android_gms_internal_zzeg_zza_T.zzeM() : zzeL;
        } else {
            zzeL = com_google_android_gms_internal_zzeg_zza_T.zzeM();
            return zzeL == null ? com_google_android_gms_internal_zzeg_zza_T.zzeL() : zzeL;
        }
    }

    public zzen zzb(final Context context, final String str, final zzjs com_google_android_gms_internal_zzjs) {
        return (zzen) zza(context, false, new zza<zzen>(this) {
            final /* synthetic */ zzeg zzzC;

            public /* synthetic */ Object zzb(zzes com_google_android_gms_internal_zzes) throws RemoteException {
                return zzc(com_google_android_gms_internal_zzes);
            }

            public zzen zzc(zzes com_google_android_gms_internal_zzes) throws RemoteException {
                return com_google_android_gms_internal_zzes.createAdLoaderBuilder(zze.zzA(context), str, com_google_android_gms_internal_zzjs, 10084000);
            }

            public /* synthetic */ Object zzeE() throws RemoteException {
                return zzeF();
            }

            public zzen zzeF() {
                zzen zza = this.zzzC.zzzu.zza(context, str, com_google_android_gms_internal_zzjs);
                if (zza != null) {
                    return zza;
                }
                this.zzzC.zzc(context, "native_ad");
                return new zzfe();
            }
        });
    }

    public zzep zzb(Context context, zzec com_google_android_gms_internal_zzec, String str, zzjs com_google_android_gms_internal_zzjs) {
        final Context context2 = context;
        final zzec com_google_android_gms_internal_zzec2 = com_google_android_gms_internal_zzec;
        final String str2 = str;
        final zzjs com_google_android_gms_internal_zzjs2 = com_google_android_gms_internal_zzjs;
        return (zzep) zza(context, false, new zza<zzep>(this) {
            final /* synthetic */ zzeg zzzC;

            public zzep zza(zzes com_google_android_gms_internal_zzes) throws RemoteException {
                return com_google_android_gms_internal_zzes.createInterstitialAdManager(zze.zzA(context2), com_google_android_gms_internal_zzec2, str2, com_google_android_gms_internal_zzjs2, 10084000);
            }

            public /* synthetic */ Object zzb(zzes com_google_android_gms_internal_zzes) throws RemoteException {
                return zza(com_google_android_gms_internal_zzes);
            }

            public zzep zzeD() {
                zzep zza = this.zzzC.zzzt.zza(context2, com_google_android_gms_internal_zzec2, str2, com_google_android_gms_internal_zzjs2, 2);
                if (zza != null) {
                    return zza;
                }
                this.zzzC.zzc(context2, "interstitial");
                return new zzff();
            }

            public /* synthetic */ Object zzeE() throws RemoteException {
                return zzeD();
            }
        });
    }

    public zzla zzb(final Activity activity) {
        return (zzla) zza((Context) activity, zza(activity, "com.google.android.gms.ads.internal.purchase.useClientJar"), new zza<zzla>(this) {
            final /* synthetic */ zzeg zzzC;

            public /* synthetic */ Object zzb(zzes com_google_android_gms_internal_zzes) throws RemoteException {
                return zzg(com_google_android_gms_internal_zzes);
            }

            public /* synthetic */ Object zzeE() throws RemoteException {
                return zzeJ();
            }

            public zzla zzeJ() {
                zzla zzg = this.zzzC.zzzy.zzg(activity);
                if (zzg != null) {
                    return zzg;
                }
                this.zzzC.zzc(activity, "iap");
                return null;
            }

            public zzla zzg(zzes com_google_android_gms_internal_zzes) throws RemoteException {
                return com_google_android_gms_internal_zzes.createInAppPurchaseManager(zze.zzA(activity));
            }
        });
    }

    public zzkr zzc(final Activity activity) {
        return (zzkr) zza((Context) activity, zza(activity, "com.google.android.gms.ads.internal.overlay.useClientJar"), new zza<zzkr>(this) {
            final /* synthetic */ zzeg zzzC;

            public /* synthetic */ Object zzb(zzes com_google_android_gms_internal_zzes) throws RemoteException {
                return zzh(com_google_android_gms_internal_zzes);
            }

            public /* synthetic */ Object zzeE() throws RemoteException {
                return zzeK();
            }

            public zzkr zzeK() {
                zzkr zzf = this.zzzC.zzzz.zzf(activity);
                if (zzf != null) {
                    return zzf;
                }
                this.zzzC.zzc(activity, "ad_overlay");
                return null;
            }

            public zzkr zzh(zzes com_google_android_gms_internal_zzes) throws RemoteException {
                return com_google_android_gms_internal_zzes.createAdOverlay(zze.zzA(activity));
            }
        });
    }
}
