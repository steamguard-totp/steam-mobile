package com.google.android.gms.cast;

import android.content.Context;
import android.os.Bundle;
import android.os.Looper;
import android.os.RemoteException;
import android.text.TextUtils;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.Api.ApiOptions.HasOptions;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.GoogleApiClient.ConnectionCallbacks;
import com.google.android.gms.common.api.GoogleApiClient.OnConnectionFailedListener;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.zzac;
import com.google.android.gms.common.internal.zzg;
import com.google.android.gms.internal.zzyi;
import com.google.android.gms.internal.zzyl;
import com.google.android.gms.internal.zzyq;
import com.google.android.gms.internal.zzyt;
import com.google.android.gms.internal.zzzv.zzb;
import java.io.IOException;

public final class Cast {
    public static final Api<CastOptions> API = new Api("Cast.API", zzahd, zzyt.zzavu);
    public static final CastApi CastApi = new zza();
    static final com.google.android.gms.common.api.Api.zza<zzyl, CastOptions> zzahd = new com.google.android.gms.common.api.Api.zza<zzyl, CastOptions>() {
        public zzyl zza(Context context, Looper looper, zzg com_google_android_gms_common_internal_zzg, CastOptions castOptions, ConnectionCallbacks connectionCallbacks, OnConnectionFailedListener onConnectionFailedListener) {
            zzac.zzb((Object) castOptions, (Object) "Setting the API options is required.");
            return new zzyl(context, looper, com_google_android_gms_common_internal_zzg, castOptions.zzalZ, (long) castOptions.zzamb, castOptions.zzama, castOptions.extras, connectionCallbacks, onConnectionFailedListener);
        }
    };

    public interface ApplicationConnectionResult extends Result {
        ApplicationMetadata getApplicationMetadata();

        String getApplicationStatus();

        String getSessionId();

        boolean getWasLaunched();
    }

    static abstract class zza extends zzyi<ApplicationConnectionResult> {
        public zza(GoogleApiClient googleApiClient) {
            super(googleApiClient);
        }

        public void zza(zzyl com_google_android_gms_internal_zzyl) throws RemoteException {
        }

        public /* synthetic */ Result zzc(Status status) {
            return zzo(status);
        }

        public ApplicationConnectionResult zzo(final Status status) {
            return new ApplicationConnectionResult(this) {
                public ApplicationMetadata getApplicationMetadata() {
                    return null;
                }

                public String getApplicationStatus() {
                    return null;
                }

                public String getSessionId() {
                    return null;
                }

                public Status getStatus() {
                    return status;
                }

                public boolean getWasLaunched() {
                    return false;
                }
            };
        }
    }

    public interface CastApi {

        public static final class zza implements CastApi {
            public boolean isMute(GoogleApiClient googleApiClient) throws IllegalStateException {
                return ((zzyl) googleApiClient.zza(zzyt.zzavu)).isMute();
            }

            public PendingResult<ApplicationConnectionResult> joinApplication(GoogleApiClient googleApiClient, String str, String str2) {
                return zza(googleApiClient, str, str2, null);
            }

            public PendingResult<ApplicationConnectionResult> launchApplication(GoogleApiClient googleApiClient, final String str, final LaunchOptions launchOptions) {
                return googleApiClient.zzb(new zza(this, googleApiClient) {
                    public void zza(zzyl com_google_android_gms_internal_zzyl) throws RemoteException {
                        try {
                            com_google_android_gms_internal_zzyl.zza(str, launchOptions, (zzb) this);
                        } catch (IllegalStateException e) {
                            zzch(2001);
                        }
                    }
                });
            }

            public void removeMessageReceivedCallbacks(GoogleApiClient googleApiClient, String str) throws IOException, IllegalArgumentException {
                try {
                    ((zzyl) googleApiClient.zza(zzyt.zzavu)).removeMessageReceivedCallbacks(str);
                } catch (RemoteException e) {
                    throw new IOException("service error");
                }
            }

            public PendingResult<Status> sendMessage(GoogleApiClient googleApiClient, final String str, final String str2) {
                return googleApiClient.zzb(new zzyq(this, googleApiClient) {
                    public void zza(zzyl com_google_android_gms_internal_zzyl) throws RemoteException {
                        try {
                            com_google_android_gms_internal_zzyl.zza(str, str2, (zzb) this);
                            return;
                        } catch (IllegalArgumentException e) {
                        } catch (IllegalStateException e2) {
                        }
                        zzch(2001);
                    }
                });
            }

            public void setMessageReceivedCallbacks(GoogleApiClient googleApiClient, String str, MessageReceivedCallback messageReceivedCallback) throws IOException, IllegalStateException {
                try {
                    ((zzyl) googleApiClient.zza(zzyt.zzavu)).setMessageReceivedCallbacks(str, messageReceivedCallback);
                } catch (RemoteException e) {
                    throw new IOException("service error");
                }
            }

            public void setMute(GoogleApiClient googleApiClient, boolean z) throws IOException, IllegalStateException {
                try {
                    ((zzyl) googleApiClient.zza(zzyt.zzavu)).setMute(z);
                } catch (RemoteException e) {
                    throw new IOException("service error");
                }
            }

            public PendingResult<Status> stopApplication(GoogleApiClient googleApiClient, final String str) {
                return googleApiClient.zzb(new zzyq(this, googleApiClient) {
                    public void zza(zzyl com_google_android_gms_internal_zzyl) throws RemoteException {
                        if (TextUtils.isEmpty(str)) {
                            zze(2001, "IllegalArgument: sessionId cannot be null or empty");
                            return;
                        }
                        try {
                            com_google_android_gms_internal_zzyl.zza(str, (zzb) this);
                        } catch (IllegalStateException e) {
                            zzch(2001);
                        }
                    }
                });
            }

            public PendingResult<ApplicationConnectionResult> zza(GoogleApiClient googleApiClient, String str, String str2, zzf com_google_android_gms_cast_zzf) {
                final String str3 = str;
                final String str4 = str2;
                final zzf com_google_android_gms_cast_zzf2 = com_google_android_gms_cast_zzf;
                return googleApiClient.zzb(new zza(this, googleApiClient) {
                    public void zza(zzyl com_google_android_gms_internal_zzyl) throws RemoteException {
                        try {
                            com_google_android_gms_internal_zzyl.zza(str3, str4, com_google_android_gms_cast_zzf2, (zzb) this);
                        } catch (IllegalStateException e) {
                            zzch(2001);
                        }
                    }
                });
            }
        }

        boolean isMute(GoogleApiClient googleApiClient) throws IllegalStateException;

        PendingResult<ApplicationConnectionResult> joinApplication(GoogleApiClient googleApiClient, String str, String str2);

        PendingResult<ApplicationConnectionResult> launchApplication(GoogleApiClient googleApiClient, String str, LaunchOptions launchOptions);

        void removeMessageReceivedCallbacks(GoogleApiClient googleApiClient, String str) throws IOException, IllegalArgumentException;

        PendingResult<Status> sendMessage(GoogleApiClient googleApiClient, String str, String str2);

        void setMessageReceivedCallbacks(GoogleApiClient googleApiClient, String str, MessageReceivedCallback messageReceivedCallback) throws IOException, IllegalStateException;

        void setMute(GoogleApiClient googleApiClient, boolean z) throws IOException, IllegalStateException;

        PendingResult<Status> stopApplication(GoogleApiClient googleApiClient, String str);
    }

    public static final class CastOptions implements HasOptions {
        final Bundle extras;
        final CastDevice zzalZ;
        final Listener zzama;
        private final int zzamb;

        public static final class Builder {
            private Bundle mExtras;
            CastDevice zzamc;
            Listener zzamd;
            private int zzame = 0;

            public Builder(CastDevice castDevice, Listener listener) {
                zzac.zzb((Object) castDevice, (Object) "CastDevice parameter cannot be null");
                zzac.zzb((Object) listener, (Object) "CastListener parameter cannot be null");
                this.zzamc = castDevice;
                this.zzamd = listener;
            }

            public CastOptions build() {
                return new CastOptions();
            }

            public Builder zzk(Bundle bundle) {
                this.mExtras = bundle;
                return this;
            }
        }

        private CastOptions(Builder builder) {
            this.zzalZ = builder.zzamc;
            this.zzama = builder.zzamd;
            this.zzamb = builder.zzame;
            this.extras = builder.mExtras;
        }
    }

    public static class Listener {
        public void onActiveInputStateChanged(int i) {
        }

        public void onApplicationDisconnected(int i) {
        }

        public void onApplicationMetadataChanged(ApplicationMetadata applicationMetadata) {
        }

        public void onApplicationStatusChanged() {
        }

        public void onStandbyStateChanged(int i) {
        }

        public void onVolumeChanged() {
        }
    }

    public interface MessageReceivedCallback {
        void onMessageReceived(CastDevice castDevice, String str, String str2);
    }
}
