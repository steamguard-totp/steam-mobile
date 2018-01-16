package com.google.android.gms.internal;

import android.os.DeadObjectException;
import android.os.RemoteException;
import android.os.TransactionTooLargeException;
import android.util.Log;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.util.zzs;
import com.google.android.gms.tasks.TaskCompletionSource;

public abstract class zzzq {
    public final int zzanR;

    private static abstract class zza extends zzzq {
        protected final TaskCompletionSource<Void> zzayo;

        public zza(int i, TaskCompletionSource<Void> taskCompletionSource) {
            super(i);
            this.zzayo = taskCompletionSource;
        }

        public void zza(zzaad com_google_android_gms_internal_zzaad, boolean z) {
        }

        public final void zza(com.google.android.gms.internal.zzaap.zza<?> com_google_android_gms_internal_zzaap_zza_) throws DeadObjectException {
            try {
                zzb(com_google_android_gms_internal_zzaap_zza_);
            } catch (RemoteException e) {
                zzy(zzzq.zza(e));
                throw e;
            } catch (RemoteException e2) {
                zzy(zzzq.zza(e2));
            }
        }

        protected abstract void zzb(com.google.android.gms.internal.zzaap.zza<?> com_google_android_gms_internal_zzaap_zza_) throws RemoteException;

        public void zzy(Status status) {
            this.zzayo.trySetException(new com.google.android.gms.common.api.zza(status));
        }
    }

    public static class zzb<A extends com.google.android.gms.internal.zzzv.zza<? extends Result, com.google.android.gms.common.api.Api.zzb>> extends zzzq {
        protected final A zzayp;

        public zzb(int i, A a) {
            super(i);
            this.zzayp = a;
        }

        public void zza(zzaad com_google_android_gms_internal_zzaad, boolean z) {
            com_google_android_gms_internal_zzaad.zza(this.zzayp, z);
        }

        public void zza(com.google.android.gms.internal.zzaap.zza<?> com_google_android_gms_internal_zzaap_zza_) throws DeadObjectException {
            this.zzayp.zzb(com_google_android_gms_internal_zzaap_zza_.zzvr());
        }

        public void zzy(Status status) {
            this.zzayp.zzA(status);
        }
    }

    public static final class zze extends zza {
        public final com.google.android.gms.internal.zzaaz.zzb<?> zzayu;

        public zze(com.google.android.gms.internal.zzaaz.zzb<?> com_google_android_gms_internal_zzaaz_zzb_, TaskCompletionSource<Void> taskCompletionSource) {
            super(4, taskCompletionSource);
            this.zzayu = com_google_android_gms_internal_zzaaz_zzb_;
        }

        public /* bridge */ /* synthetic */ void zza(zzaad com_google_android_gms_internal_zzaad, boolean z) {
            super.zza(com_google_android_gms_internal_zzaad, z);
        }

        public void zzb(com.google.android.gms.internal.zzaap.zza<?> com_google_android_gms_internal_zzaap_zza_) throws RemoteException {
            zzabf com_google_android_gms_internal_zzabf = (zzabf) com_google_android_gms_internal_zzaap_zza_.zzwc().remove(this.zzayu);
            if (com_google_android_gms_internal_zzabf != null) {
                com_google_android_gms_internal_zzabf.zzayq.zzwq();
                return;
            }
            Log.wtf("UnregisterListenerTask", "Received call to unregister a listener without a matching registration call.", new Exception());
            this.zzayo.trySetException(new com.google.android.gms.common.api.zza(Status.zzayj));
        }

        public /* bridge */ /* synthetic */ void zzy(Status status) {
            super.zzy(status);
        }
    }

    public zzzq(int i) {
        this.zzanR = i;
    }

    private static Status zza(RemoteException remoteException) {
        StringBuilder stringBuilder = new StringBuilder();
        if (zzs.zzyB() && (remoteException instanceof TransactionTooLargeException)) {
            stringBuilder.append("TransactionTooLargeException: ");
        }
        stringBuilder.append(remoteException.getLocalizedMessage());
        return new Status(8, stringBuilder.toString());
    }

    public abstract void zza(zzaad com_google_android_gms_internal_zzaad, boolean z);

    public abstract void zza(com.google.android.gms.internal.zzaap.zza<?> com_google_android_gms_internal_zzaap_zza_) throws DeadObjectException;

    public abstract void zzy(Status status);
}
