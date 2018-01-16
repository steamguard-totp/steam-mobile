package com.google.android.gms.common.api;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import com.google.android.gms.common.api.Api.ApiOptions;
import com.google.android.gms.common.api.Api.zzb;
import com.google.android.gms.common.api.Api.zze;
import com.google.android.gms.common.internal.zzac;
import com.google.android.gms.common.internal.zzg;
import com.google.android.gms.internal.zzaap;
import com.google.android.gms.internal.zzaaq;
import com.google.android.gms.internal.zzabj;
import com.google.android.gms.internal.zzabk;
import com.google.android.gms.internal.zzzr;
import com.google.android.gms.internal.zzzs;
import com.google.android.gms.internal.zzzv.zza;

public abstract class zzc<O extends ApiOptions> {
    private final Context mContext;
    private final int mId;
    private final Api<O> zzawb;
    private final O zzaxG;
    private final zzzs<O> zzaxH;
    private final GoogleApiClient zzaxI;
    private final zzabk zzaxJ;
    protected final zzaap zzaxK;
    private final Looper zzrx;

    protected zzc(Context context, Api<O> api, Looper looper) {
        zzac.zzb((Object) context, (Object) "Null context is not permitted.");
        zzac.zzb((Object) api, (Object) "Api must not be null.");
        zzac.zzb((Object) looper, (Object) "Looper must not be null.");
        this.mContext = context.getApplicationContext();
        this.zzawb = api;
        this.zzaxG = null;
        this.zzrx = looper;
        this.zzaxH = zzzs.zzb(api);
        this.zzaxI = new zzaaq(this);
        this.zzaxK = zzaap.zzax(this.mContext);
        this.mId = this.zzaxK.zzvU();
        this.zzaxJ = new zzzr();
    }

    public zzc(Context context, Api<O> api, O o, Looper looper, zzabk com_google_android_gms_internal_zzabk) {
        zzac.zzb((Object) context, (Object) "Null context is not permitted.");
        zzac.zzb((Object) api, (Object) "Api must not be null.");
        zzac.zzb((Object) looper, (Object) "Looper must not be null.");
        this.mContext = context.getApplicationContext();
        this.zzawb = api;
        this.zzaxG = o;
        this.zzrx = looper;
        this.zzaxH = zzzs.zza(this.zzawb, this.zzaxG);
        this.zzaxI = new zzaaq(this);
        this.zzaxK = zzaap.zzax(this.mContext);
        this.mId = this.zzaxK.zzvU();
        this.zzaxJ = com_google_android_gms_internal_zzabk;
        this.zzaxK.zza(this);
    }

    public zzc(Context context, Api<O> api, O o, zzabk com_google_android_gms_internal_zzabk) {
        this(context, api, o, Looper.myLooper() != null ? Looper.myLooper() : Looper.getMainLooper(), com_google_android_gms_internal_zzabk);
    }

    private <A extends zzb, T extends zza<? extends Result, A>> T zza(int i, T t) {
        t.zzvf();
        this.zzaxK.zza(this, i, t);
        return t;
    }

    public GoogleApiClient asGoogleApiClient() {
        return this.zzaxI;
    }

    public zze buildApiClient(Looper looper, zzaap.zza<O> com_google_android_gms_internal_zzaap_zza_O) {
        return this.zzawb.zzuG().zza(this.mContext, looper, zzg.zzaA(this.mContext), this.zzaxG, com_google_android_gms_internal_zzaap_zza_O, com_google_android_gms_internal_zzaap_zza_O);
    }

    public zzabj createSignInCoordinator(Context context, Handler handler) {
        return new zzabj(context, handler);
    }

    public <A extends zzb, T extends zza<? extends Result, A>> T doBestEffortWrite(T t) {
        return zza(2, t);
    }

    public <A extends zzb, T extends zza<? extends Result, A>> T doWrite(T t) {
        return zza(1, t);
    }

    public zzzs<O> getApiKey() {
        return this.zzaxH;
    }

    public int getInstanceId() {
        return this.mId;
    }

    public Looper getLooper() {
        return this.zzrx;
    }
}
