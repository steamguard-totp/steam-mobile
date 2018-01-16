package com.google.android.gms.internal;

import android.os.Handler;
import android.os.RemoteException;
import com.google.android.gms.ads.internal.zzl;
import com.google.android.gms.ads.internal.zzv;
import java.util.LinkedList;
import java.util.List;

@zzmb
class zziq {
    private final List<zza> zztf = new LinkedList();

    interface zza {
        void zzb(zzir com_google_android_gms_internal_zzir) throws RemoteException;
    }

    zziq() {
    }

    void zza(final zzir com_google_android_gms_internal_zzir) {
        Handler handler = zzpi.zzWR;
        for (final zza com_google_android_gms_internal_zziq_zza : this.zztf) {
            handler.post(new Runnable(this) {
                public void run() {
                    try {
                        com_google_android_gms_internal_zziq_zza.zzb(com_google_android_gms_internal_zzir);
                    } catch (Throwable e) {
                        zzpy.zzc("Could not propagate interstitial ad event.", e);
                    }
                }
            });
        }
        this.zztf.clear();
    }

    void zzc(zzl com_google_android_gms_ads_internal_zzl) {
        com_google_android_gms_ads_internal_zzl.zza(new com.google.android.gms.internal.zzel.zza(this) {
            final /* synthetic */ zziq zzIl;

            {
                this.zzIl = r1;
            }

            public void onAdClosed() throws RemoteException {
                this.zzIl.zztf.add(new zza(this) {
                    public void zzb(zzir com_google_android_gms_internal_zzir) throws RemoteException {
                        if (com_google_android_gms_internal_zzir.zzti != null) {
                            com_google_android_gms_internal_zzir.zzti.onAdClosed();
                        }
                        zzv.zzcY().zzgj();
                    }
                });
            }

            public void onAdFailedToLoad(final int i) throws RemoteException {
                this.zzIl.zztf.add(new zza(this) {
                    public void zzb(zzir com_google_android_gms_internal_zzir) throws RemoteException {
                        if (com_google_android_gms_internal_zzir.zzti != null) {
                            com_google_android_gms_internal_zzir.zzti.onAdFailedToLoad(i);
                        }
                    }
                });
                zzpe.v("Pooled interstitial failed to load.");
            }

            public void onAdLeftApplication() throws RemoteException {
                this.zzIl.zztf.add(new zza(this) {
                    public void zzb(zzir com_google_android_gms_internal_zzir) throws RemoteException {
                        if (com_google_android_gms_internal_zzir.zzti != null) {
                            com_google_android_gms_internal_zzir.zzti.onAdLeftApplication();
                        }
                    }
                });
            }

            public void onAdLoaded() throws RemoteException {
                this.zzIl.zztf.add(new zza(this) {
                    public void zzb(zzir com_google_android_gms_internal_zzir) throws RemoteException {
                        if (com_google_android_gms_internal_zzir.zzti != null) {
                            com_google_android_gms_internal_zzir.zzti.onAdLoaded();
                        }
                    }
                });
                zzpe.v("Pooled interstitial loaded.");
            }

            public void onAdOpened() throws RemoteException {
                this.zzIl.zztf.add(new zza(this) {
                    public void zzb(zzir com_google_android_gms_internal_zzir) throws RemoteException {
                        if (com_google_android_gms_internal_zzir.zzti != null) {
                            com_google_android_gms_internal_zzir.zzti.onAdOpened();
                        }
                    }
                });
            }
        });
        com_google_android_gms_ads_internal_zzl.zza(new com.google.android.gms.internal.zzer.zza(this) {
            final /* synthetic */ zziq zzIl;

            {
                this.zzIl = r1;
            }

            public void onAppEvent(final String str, final String str2) throws RemoteException {
                this.zzIl.zztf.add(new zza(this) {
                    public void zzb(zzir com_google_android_gms_internal_zzir) throws RemoteException {
                        if (com_google_android_gms_internal_zzir.zzIt != null) {
                            com_google_android_gms_internal_zzir.zzIt.onAppEvent(str, str2);
                        }
                    }
                });
            }
        });
        com_google_android_gms_ads_internal_zzl.zza(new com.google.android.gms.internal.zzkz.zza(this) {
            final /* synthetic */ zziq zzIl;

            {
                this.zzIl = r1;
            }

            public void zza(final zzky com_google_android_gms_internal_zzky) throws RemoteException {
                this.zzIl.zztf.add(new zza(this) {
                    public void zzb(zzir com_google_android_gms_internal_zzir) throws RemoteException {
                        if (com_google_android_gms_internal_zzir.zzIu != null) {
                            com_google_android_gms_internal_zzir.zzIu.zza(com_google_android_gms_internal_zzky);
                        }
                    }
                });
            }
        });
        com_google_android_gms_ads_internal_zzl.zza(new com.google.android.gms.internal.zzgj.zza(this) {
            final /* synthetic */ zziq zzIl;

            {
                this.zzIl = r1;
            }

            public void zza(final zzgi com_google_android_gms_internal_zzgi) throws RemoteException {
                this.zzIl.zztf.add(new zza(this) {
                    public void zzb(zzir com_google_android_gms_internal_zzir) throws RemoteException {
                        if (com_google_android_gms_internal_zzir.zzIv != null) {
                            com_google_android_gms_internal_zzir.zzIv.zza(com_google_android_gms_internal_zzgi);
                        }
                    }
                });
            }
        });
        com_google_android_gms_ads_internal_zzl.zza(new com.google.android.gms.internal.zzek.zza(this) {
            final /* synthetic */ zziq zzIl;

            {
                this.zzIl = r1;
            }

            public void onAdClicked() throws RemoteException {
                this.zzIl.zztf.add(new zza(this) {
                    public void zzb(zzir com_google_android_gms_internal_zzir) throws RemoteException {
                        if (com_google_android_gms_internal_zzir.zzIw != null) {
                            com_google_android_gms_internal_zzir.zzIw.onAdClicked();
                        }
                    }
                });
            }
        });
        com_google_android_gms_ads_internal_zzl.zza(new com.google.android.gms.internal.zznt.zza(this) {
            final /* synthetic */ zziq zzIl;

            {
                this.zzIl = r1;
            }

            public void onRewardedVideoAdClosed() throws RemoteException {
                this.zzIl.zztf.add(new zza(this) {
                    public void zzb(zzir com_google_android_gms_internal_zzir) throws RemoteException {
                        if (com_google_android_gms_internal_zzir.zzIx != null) {
                            com_google_android_gms_internal_zzir.zzIx.onRewardedVideoAdClosed();
                        }
                    }
                });
            }

            public void onRewardedVideoAdFailedToLoad(final int i) throws RemoteException {
                this.zzIl.zztf.add(new zza(this) {
                    public void zzb(zzir com_google_android_gms_internal_zzir) throws RemoteException {
                        if (com_google_android_gms_internal_zzir.zzIx != null) {
                            com_google_android_gms_internal_zzir.zzIx.onRewardedVideoAdFailedToLoad(i);
                        }
                    }
                });
            }

            public void onRewardedVideoAdLeftApplication() throws RemoteException {
                this.zzIl.zztf.add(new zza(this) {
                    public void zzb(zzir com_google_android_gms_internal_zzir) throws RemoteException {
                        if (com_google_android_gms_internal_zzir.zzIx != null) {
                            com_google_android_gms_internal_zzir.zzIx.onRewardedVideoAdLeftApplication();
                        }
                    }
                });
            }

            public void onRewardedVideoAdLoaded() throws RemoteException {
                this.zzIl.zztf.add(new zza(this) {
                    public void zzb(zzir com_google_android_gms_internal_zzir) throws RemoteException {
                        if (com_google_android_gms_internal_zzir.zzIx != null) {
                            com_google_android_gms_internal_zzir.zzIx.onRewardedVideoAdLoaded();
                        }
                    }
                });
            }

            public void onRewardedVideoAdOpened() throws RemoteException {
                this.zzIl.zztf.add(new zza(this) {
                    public void zzb(zzir com_google_android_gms_internal_zzir) throws RemoteException {
                        if (com_google_android_gms_internal_zzir.zzIx != null) {
                            com_google_android_gms_internal_zzir.zzIx.onRewardedVideoAdOpened();
                        }
                    }
                });
            }

            public void onRewardedVideoStarted() throws RemoteException {
                this.zzIl.zztf.add(new zza(this) {
                    public void zzb(zzir com_google_android_gms_internal_zzir) throws RemoteException {
                        if (com_google_android_gms_internal_zzir.zzIx != null) {
                            com_google_android_gms_internal_zzir.zzIx.onRewardedVideoStarted();
                        }
                    }
                });
            }

            public void zza(final zznq com_google_android_gms_internal_zznq) throws RemoteException {
                this.zzIl.zztf.add(new zza(this) {
                    public void zzb(zzir com_google_android_gms_internal_zzir) throws RemoteException {
                        if (com_google_android_gms_internal_zzir.zzIx != null) {
                            com_google_android_gms_internal_zzir.zzIx.zza(com_google_android_gms_internal_zznq);
                        }
                    }
                });
            }
        });
    }
}
