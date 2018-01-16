package com.google.android.gms.common.api;

import android.accounts.Account;
import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.support.v4.util.ArrayMap;
import android.view.View;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.GoogleApiAvailability;
import com.google.android.gms.common.api.Api.ApiOptions;
import com.google.android.gms.common.api.Api.ApiOptions.HasOptions;
import com.google.android.gms.common.api.Api.ApiOptions.NotRequiredOptions;
import com.google.android.gms.common.api.Api.zzb;
import com.google.android.gms.common.api.Api.zzc;
import com.google.android.gms.common.api.Api.zze;
import com.google.android.gms.common.internal.zzac;
import com.google.android.gms.common.internal.zzg;
import com.google.android.gms.common.internal.zzg.zza;
import com.google.android.gms.internal.zzaal;
import com.google.android.gms.internal.zzaav;
import com.google.android.gms.internal.zzabi;
import com.google.android.gms.internal.zzabp;
import com.google.android.gms.internal.zzaxm;
import com.google.android.gms.internal.zzaxn;
import com.google.android.gms.internal.zzaxo;
import com.google.android.gms.internal.zzzt;
import com.google.android.gms.internal.zzzv;
import com.google.android.gms.internal.zzzy;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
import java.util.WeakHashMap;
import java.util.concurrent.locks.ReentrantLock;

public abstract class GoogleApiClient {
    private static final Set<GoogleApiClient> zzaxM = Collections.newSetFromMap(new WeakHashMap());

    public interface ConnectionCallbacks {
        void onConnected(Bundle bundle);

        void onConnectionSuspended(int i);
    }

    public interface OnConnectionFailedListener {
        void onConnectionFailed(ConnectionResult connectionResult);
    }

    public static final class Builder {
        private final Context mContext;
        private Account zzagg;
        private String zzahp;
        private final Set<Scope> zzaxN = new HashSet();
        private final Set<Scope> zzaxO = new HashSet();
        private int zzaxP;
        private View zzaxQ;
        private String zzaxR;
        private final Map<Api<?>, zza> zzaxS = new ArrayMap();
        private final Map<Api<?>, ApiOptions> zzaxT = new ArrayMap();
        private zzaav zzaxU;
        private int zzaxV = -1;
        private OnConnectionFailedListener zzaxW;
        private GoogleApiAvailability zzaxX = GoogleApiAvailability.getInstance();
        private Api.zza<? extends zzaxn, zzaxo> zzaxY = zzaxm.zzahd;
        private final ArrayList<ConnectionCallbacks> zzaxZ = new ArrayList();
        private final ArrayList<OnConnectionFailedListener> zzaya = new ArrayList();
        private boolean zzayb = false;
        private Looper zzrx;

        public Builder(Context context) {
            this.mContext = context;
            this.zzrx = context.getMainLooper();
            this.zzahp = context.getPackageName();
            this.zzaxR = context.getClass().getName();
        }

        private static <C extends zze, O> C zza(Api.zza<C, O> com_google_android_gms_common_api_Api_zza_C__O, Object obj, Context context, Looper looper, zzg com_google_android_gms_common_internal_zzg, ConnectionCallbacks connectionCallbacks, OnConnectionFailedListener onConnectionFailedListener) {
            return com_google_android_gms_common_api_Api_zza_C__O.zza(context, looper, com_google_android_gms_common_internal_zzg, obj, connectionCallbacks, onConnectionFailedListener);
        }

        private void zzf(GoogleApiClient googleApiClient) {
            zzzt.zza(this.zzaxU).zza(this.zzaxV, googleApiClient, this.zzaxW);
        }

        private GoogleApiClient zzuQ() {
            zzg zzuP = zzuP();
            Api api = null;
            Map zzxg = zzuP.zzxg();
            Map arrayMap = new ArrayMap();
            Map arrayMap2 = new ArrayMap();
            ArrayList arrayList = new ArrayList();
            Api api2 = null;
            for (Api api3 : this.zzaxT.keySet()) {
                Api api32;
                Object obj = this.zzaxT.get(api32);
                int i = 0;
                if (zzxg.get(api32) != null) {
                    i = ((zza) zzxg.get(api32)).zzaEf ? 1 : 2;
                }
                arrayMap.put(api32, Integer.valueOf(i));
                ConnectionCallbacks com_google_android_gms_internal_zzzy = new zzzy(api32, i);
                arrayList.add(com_google_android_gms_internal_zzzy);
                Api.zza zzuG = api32.zzuG();
                Api api4 = zzuG.getPriority() == 1 ? api32 : api2;
                zze zza = zza(zzuG, obj, this.mContext, this.zzrx, zzuP, com_google_android_gms_internal_zzzy, com_google_android_gms_internal_zzzy);
                arrayMap2.put(api32.zzuH(), zza);
                if (!zza.zzqS()) {
                    api32 = api;
                } else if (api != null) {
                    String valueOf = String.valueOf(api32.getName());
                    String valueOf2 = String.valueOf(api.getName());
                    throw new IllegalStateException(new StringBuilder((String.valueOf(valueOf).length() + 21) + String.valueOf(valueOf2).length()).append(valueOf).append(" cannot be used with ").append(valueOf2).toString());
                }
                api2 = api4;
                api = api32;
            }
            if (api != null) {
                if (api2 != null) {
                    valueOf = String.valueOf(api.getName());
                    valueOf2 = String.valueOf(api2.getName());
                    throw new IllegalStateException(new StringBuilder((String.valueOf(valueOf).length() + 21) + String.valueOf(valueOf2).length()).append(valueOf).append(" cannot be used with ").append(valueOf2).toString());
                }
                zzac.zza(this.zzagg == null, "Must not set an account in GoogleApiClient.Builder when using %s. Set account in GoogleSignInOptions.Builder instead", api.getName());
                zzac.zza(this.zzaxN.equals(this.zzaxO), "Must not set scopes in GoogleApiClient.Builder when using %s. Set account in GoogleSignInOptions.Builder instead.", api.getName());
            }
            return new zzaal(this.mContext, new ReentrantLock(), this.zzrx, zzuP, this.zzaxX, this.zzaxY, arrayMap, this.zzaxZ, this.zzaya, arrayMap2, this.zzaxV, zzaal.zza(arrayMap2.values(), true), arrayList, false);
        }

        public Builder addApi(Api<? extends NotRequiredOptions> api) {
            zzac.zzb((Object) api, (Object) "Api must not be null");
            this.zzaxT.put(api, null);
            Collection zzp = api.zzuF().zzp(null);
            this.zzaxO.addAll(zzp);
            this.zzaxN.addAll(zzp);
            return this;
        }

        public <O extends HasOptions> Builder addApi(Api<O> api, O o) {
            zzac.zzb((Object) api, (Object) "Api must not be null");
            zzac.zzb((Object) o, (Object) "Null options are not permitted for this Api");
            this.zzaxT.put(api, o);
            Collection zzp = api.zzuF().zzp(o);
            this.zzaxO.addAll(zzp);
            this.zzaxN.addAll(zzp);
            return this;
        }

        public Builder addConnectionCallbacks(ConnectionCallbacks connectionCallbacks) {
            zzac.zzb((Object) connectionCallbacks, (Object) "Listener must not be null");
            this.zzaxZ.add(connectionCallbacks);
            return this;
        }

        public Builder addOnConnectionFailedListener(OnConnectionFailedListener onConnectionFailedListener) {
            zzac.zzb((Object) onConnectionFailedListener, (Object) "Listener must not be null");
            this.zzaya.add(onConnectionFailedListener);
            return this;
        }

        public GoogleApiClient build() {
            zzac.zzb(!this.zzaxT.isEmpty(), (Object) "must call addApi() to add at least one API");
            GoogleApiClient zzuQ = zzuQ();
            synchronized (GoogleApiClient.zzaxM) {
                GoogleApiClient.zzaxM.add(zzuQ);
            }
            if (this.zzaxV >= 0) {
                zzf(zzuQ);
            }
            return zzuQ;
        }

        public Builder setHandler(Handler handler) {
            zzac.zzb((Object) handler, (Object) "Handler must not be null");
            this.zzrx = handler.getLooper();
            return this;
        }

        public zzg zzuP() {
            zzaxo com_google_android_gms_internal_zzaxo = zzaxo.zzbCg;
            if (this.zzaxT.containsKey(zzaxm.API)) {
                com_google_android_gms_internal_zzaxo = (zzaxo) this.zzaxT.get(zzaxm.API);
            }
            return new zzg(this.zzagg, this.zzaxN, this.zzaxS, this.zzaxP, this.zzaxQ, this.zzahp, this.zzaxR, com_google_android_gms_internal_zzaxo);
        }
    }

    public static Set<GoogleApiClient> zzuM() {
        Set<GoogleApiClient> set;
        synchronized (zzaxM) {
            set = zzaxM;
        }
        return set;
    }

    public abstract ConnectionResult blockingConnect();

    public abstract PendingResult<Status> clearDefaultAccountAndReconnect();

    public abstract void connect();

    public void connect(int i) {
        throw new UnsupportedOperationException();
    }

    public abstract void disconnect();

    public abstract void dump(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr);

    public Context getContext() {
        throw new UnsupportedOperationException();
    }

    public Looper getLooper() {
        throw new UnsupportedOperationException();
    }

    public abstract void registerConnectionFailedListener(OnConnectionFailedListener onConnectionFailedListener);

    public abstract void unregisterConnectionFailedListener(OnConnectionFailedListener onConnectionFailedListener);

    public <C extends zze> C zza(zzc<C> com_google_android_gms_common_api_Api_zzc_C) {
        throw new UnsupportedOperationException();
    }

    public void zza(zzabp com_google_android_gms_internal_zzabp) {
        throw new UnsupportedOperationException();
    }

    public boolean zza(zzabi com_google_android_gms_internal_zzabi) {
        throw new UnsupportedOperationException();
    }

    public <A extends zzb, T extends zzzv.zza<? extends Result, A>> T zzb(T t) {
        throw new UnsupportedOperationException();
    }

    public void zzb(zzabp com_google_android_gms_internal_zzabp) {
        throw new UnsupportedOperationException();
    }

    public void zzuN() {
        throw new UnsupportedOperationException();
    }
}
