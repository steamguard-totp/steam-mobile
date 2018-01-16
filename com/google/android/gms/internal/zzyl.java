package com.google.android.gms.internal;

import android.content.Context;
import android.os.Bundle;
import android.os.DeadObjectException;
import android.os.Handler;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import android.os.RemoteException;
import android.text.TextUtils;
import com.google.android.gms.cast.ApplicationMetadata;
import com.google.android.gms.cast.Cast.ApplicationConnectionResult;
import com.google.android.gms.cast.Cast.Listener;
import com.google.android.gms.cast.Cast.MessageReceivedCallback;
import com.google.android.gms.cast.CastDevice;
import com.google.android.gms.cast.LaunchOptions;
import com.google.android.gms.cast.zzf;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.GoogleApiClient.ConnectionCallbacks;
import com.google.android.gms.common.api.GoogleApiClient.OnConnectionFailedListener;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.BinderWrapper;
import com.google.android.gms.common.internal.zzg;
import com.google.android.gms.common.internal.zzl;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;

public class zzyl extends zzl<zzyr> {
    private static final zzyu zzamu = new zzyu("CastClientImpl");
    private static final Object zzavh = new Object();
    private static final Object zzavi = new Object();
    private final Bundle mExtras;
    private final Listener zzamd;
    private double zzanH;
    private boolean zzanI;
    private final CastDevice zzapl;
    private ApplicationMetadata zzauQ;
    private final Map<String, MessageReceivedCallback> zzauR = new HashMap();
    private final long zzauS;
    private zzb zzauT;
    private String zzauU;
    private boolean zzauV;
    private boolean zzauW;
    private boolean zzauX;
    private int zzauY;
    private int zzauZ;
    private final AtomicLong zzava = new AtomicLong(0);
    private String zzavb;
    private String zzavc;
    private Bundle zzavd;
    private final Map<Long, com.google.android.gms.internal.zzzv.zzb<Status>> zzave = new HashMap();
    private com.google.android.gms.internal.zzzv.zzb<ApplicationConnectionResult> zzavf;
    private com.google.android.gms.internal.zzzv.zzb<Status> zzavg;

    static final class zza implements ApplicationConnectionResult {
        private final String zzVW;
        private final Status zzahq;
        private final ApplicationMetadata zzavj;
        private final String zzavk;
        private final boolean zzavl;

        public zza(Status status) {
            this(status, null, null, null, false);
        }

        public zza(Status status, ApplicationMetadata applicationMetadata, String str, String str2, boolean z) {
            this.zzahq = status;
            this.zzavj = applicationMetadata;
            this.zzavk = str;
            this.zzVW = str2;
            this.zzavl = z;
        }

        public ApplicationMetadata getApplicationMetadata() {
            return this.zzavj;
        }

        public String getApplicationStatus() {
            return this.zzavk;
        }

        public String getSessionId() {
            return this.zzVW;
        }

        public Status getStatus() {
            return this.zzahq;
        }

        public boolean getWasLaunched() {
            return this.zzavl;
        }
    }

    static class zzb extends com.google.android.gms.internal.zzys.zza {
        private final Handler mHandler;
        private final AtomicReference<zzyl> zzavm;

        public zzb(zzyl com_google_android_gms_internal_zzyl) {
            this.zzavm = new AtomicReference(com_google_android_gms_internal_zzyl);
            this.mHandler = new Handler(com_google_android_gms_internal_zzyl.getLooper());
        }

        private void zza(zzyl com_google_android_gms_internal_zzyl, long j, int i) {
            synchronized (com_google_android_gms_internal_zzyl.zzave) {
                com.google.android.gms.internal.zzzv.zzb com_google_android_gms_internal_zzzv_zzb = (com.google.android.gms.internal.zzzv.zzb) com_google_android_gms_internal_zzyl.zzave.remove(Long.valueOf(j));
            }
            if (com_google_android_gms_internal_zzzv_zzb != null) {
                com_google_android_gms_internal_zzzv_zzb.setResult(new Status(i));
            }
        }

        private boolean zza(zzyl com_google_android_gms_internal_zzyl, int i) {
            synchronized (zzyl.zzavi) {
                if (com_google_android_gms_internal_zzyl.zzavg != null) {
                    com_google_android_gms_internal_zzyl.zzavg.setResult(new Status(i));
                    com_google_android_gms_internal_zzyl.zzavg = null;
                    return true;
                }
                return false;
            }
        }

        public boolean isDisposed() {
            return this.zzavm.get() == null;
        }

        public void onApplicationDisconnected(final int i) {
            final zzyl com_google_android_gms_internal_zzyl = (zzyl) this.zzavm.get();
            if (com_google_android_gms_internal_zzyl != null) {
                com_google_android_gms_internal_zzyl.zzavb = null;
                com_google_android_gms_internal_zzyl.zzavc = null;
                zza(com_google_android_gms_internal_zzyl, i);
                if (com_google_android_gms_internal_zzyl.zzamd != null) {
                    this.mHandler.post(new Runnable(this) {
                        public void run() {
                            com_google_android_gms_internal_zzyl.zzamd.onApplicationDisconnected(i);
                        }
                    });
                }
            }
        }

        public void zza(ApplicationMetadata applicationMetadata, String str, String str2, boolean z) {
            zzyl com_google_android_gms_internal_zzyl = (zzyl) this.zzavm.get();
            if (com_google_android_gms_internal_zzyl != null) {
                com_google_android_gms_internal_zzyl.zzauQ = applicationMetadata;
                com_google_android_gms_internal_zzyl.zzavb = applicationMetadata.getApplicationId();
                com_google_android_gms_internal_zzyl.zzavc = str2;
                com_google_android_gms_internal_zzyl.zzauU = str;
                synchronized (zzyl.zzavh) {
                    if (com_google_android_gms_internal_zzyl.zzavf != null) {
                        com_google_android_gms_internal_zzyl.zzavf.setResult(new zza(new Status(0), applicationMetadata, str, str2, z));
                        com_google_android_gms_internal_zzyl.zzavf = null;
                    }
                }
            }
        }

        public void zza(String str, double d, boolean z) {
            zzyl.zzamu.zzb("Deprecated callback: \"onStatusreceived\"", new Object[0]);
        }

        public void zza(String str, long j, int i) {
            zzyl com_google_android_gms_internal_zzyl = (zzyl) this.zzavm.get();
            if (com_google_android_gms_internal_zzyl != null) {
                zza(com_google_android_gms_internal_zzyl, j, i);
            }
        }

        public void zzb(final zzyg com_google_android_gms_internal_zzyg) {
            final zzyl com_google_android_gms_internal_zzyl = (zzyl) this.zzavm.get();
            if (com_google_android_gms_internal_zzyl != null) {
                zzyl.zzamu.zzb("onApplicationStatusChanged", new Object[0]);
                this.mHandler.post(new Runnable(this) {
                    public void run() {
                        com_google_android_gms_internal_zzyl.zza(com_google_android_gms_internal_zzyg);
                    }
                });
            }
        }

        public void zzb(final zzyn com_google_android_gms_internal_zzyn) {
            final zzyl com_google_android_gms_internal_zzyl = (zzyl) this.zzavm.get();
            if (com_google_android_gms_internal_zzyl != null) {
                zzyl.zzamu.zzb("onDeviceStatusChanged", new Object[0]);
                this.mHandler.post(new Runnable(this) {
                    public void run() {
                        com_google_android_gms_internal_zzyl.zza(com_google_android_gms_internal_zzyn);
                    }
                });
            }
        }

        public void zzb(String str, byte[] bArr) {
            if (((zzyl) this.zzavm.get()) != null) {
                zzyl.zzamu.zzb("IGNORING: Receive (type=binary, ns=%s) <%d bytes>", str, Integer.valueOf(bArr.length));
            }
        }

        public void zzbW(int i) {
            zzyl com_google_android_gms_internal_zzyl = (zzyl) this.zzavm.get();
            if (com_google_android_gms_internal_zzyl != null) {
                synchronized (zzyl.zzavh) {
                    if (com_google_android_gms_internal_zzyl.zzavf != null) {
                        com_google_android_gms_internal_zzyl.zzavf.setResult(new zza(new Status(i)));
                        com_google_android_gms_internal_zzyl.zzavf = null;
                    }
                }
            }
        }

        public void zzc(String str, long j) {
            zzyl com_google_android_gms_internal_zzyl = (zzyl) this.zzavm.get();
            if (com_google_android_gms_internal_zzyl != null) {
                zza(com_google_android_gms_internal_zzyl, j, 0);
            }
        }

        public void zzci(int i) {
            zzyl zzuk = zzuk();
            if (zzuk != null) {
                zzyl.zzamu.zzb("ICastDeviceControllerListener.onDisconnected: %d", Integer.valueOf(i));
                if (i != 0) {
                    zzuk.zzcM(2);
                }
            }
        }

        public void zzcj(int i) {
            zzyl com_google_android_gms_internal_zzyl = (zzyl) this.zzavm.get();
            if (com_google_android_gms_internal_zzyl != null) {
                zza(com_google_android_gms_internal_zzyl, i);
            }
        }

        public void zzck(int i) {
            zzyl com_google_android_gms_internal_zzyl = (zzyl) this.zzavm.get();
            if (com_google_android_gms_internal_zzyl != null) {
                zza(com_google_android_gms_internal_zzyl, i);
            }
        }

        public zzyl zzuk() {
            zzyl com_google_android_gms_internal_zzyl = (zzyl) this.zzavm.getAndSet(null);
            if (com_google_android_gms_internal_zzyl == null) {
                return null;
            }
            com_google_android_gms_internal_zzyl.zzuc();
            return com_google_android_gms_internal_zzyl;
        }

        public void zzz(final String str, final String str2) {
            final zzyl com_google_android_gms_internal_zzyl = (zzyl) this.zzavm.get();
            if (com_google_android_gms_internal_zzyl != null) {
                zzyl.zzamu.zzb("Receive (type=text, ns=%s) %s", str, str2);
                this.mHandler.post(new Runnable(this) {
                    public void run() {
                        synchronized (com_google_android_gms_internal_zzyl.zzauR) {
                            MessageReceivedCallback messageReceivedCallback = (MessageReceivedCallback) com_google_android_gms_internal_zzyl.zzauR.get(str);
                        }
                        if (messageReceivedCallback != null) {
                            messageReceivedCallback.onMessageReceived(com_google_android_gms_internal_zzyl.zzapl, str, str2);
                            return;
                        }
                        zzyl.zzamu.zzb("Discarded message for unknown namespace '%s'", str);
                    }
                });
            }
        }
    }

    public zzyl(Context context, Looper looper, zzg com_google_android_gms_common_internal_zzg, CastDevice castDevice, long j, Listener listener, Bundle bundle, ConnectionCallbacks connectionCallbacks, OnConnectionFailedListener onConnectionFailedListener) {
        super(context, looper, 10, com_google_android_gms_common_internal_zzg, connectionCallbacks, onConnectionFailedListener);
        this.zzapl = castDevice;
        this.zzamd = listener;
        this.zzauS = j;
        this.mExtras = bundle;
        zzuc();
    }

    private void zza(zzyg com_google_android_gms_internal_zzyg) {
        boolean z;
        String zztZ = com_google_android_gms_internal_zzyg.zztZ();
        if (zzym.zza(zztZ, this.zzauU)) {
            z = false;
        } else {
            this.zzauU = zztZ;
            z = true;
        }
        zzamu.zzb("hasChanged=%b, mFirstApplicationStatusUpdate=%b", Boolean.valueOf(z), Boolean.valueOf(this.zzauV));
        if (this.zzamd != null && (z || this.zzauV)) {
            this.zzamd.onApplicationStatusChanged();
        }
        this.zzauV = false;
    }

    private void zza(zzyn com_google_android_gms_internal_zzyn) {
        boolean z;
        ApplicationMetadata applicationMetadata = com_google_android_gms_internal_zzyn.getApplicationMetadata();
        if (!zzym.zza(applicationMetadata, this.zzauQ)) {
            this.zzauQ = applicationMetadata;
            this.zzamd.onApplicationMetadataChanged(this.zzauQ);
        }
        double volume = com_google_android_gms_internal_zzyn.getVolume();
        if (Double.isNaN(volume) || Math.abs(volume - this.zzanH) <= 1.0E-7d) {
            z = false;
        } else {
            this.zzanH = volume;
            z = true;
        }
        boolean zzul = com_google_android_gms_internal_zzyn.zzul();
        if (zzul != this.zzanI) {
            this.zzanI = zzul;
            z = true;
        }
        zzamu.zzb("hasVolumeChanged=%b, mFirstDeviceStatusUpdate=%b", Boolean.valueOf(z), Boolean.valueOf(this.zzauW));
        if (this.zzamd != null && (z || this.zzauW)) {
            this.zzamd.onVolumeChanged();
        }
        int activeInputState = com_google_android_gms_internal_zzyn.getActiveInputState();
        if (activeInputState != this.zzauY) {
            this.zzauY = activeInputState;
            z = true;
        } else {
            z = false;
        }
        zzamu.zzb("hasActiveInputChanged=%b, mFirstDeviceStatusUpdate=%b", Boolean.valueOf(z), Boolean.valueOf(this.zzauW));
        if (this.zzamd != null && (z || this.zzauW)) {
            this.zzamd.onActiveInputStateChanged(this.zzauY);
        }
        activeInputState = com_google_android_gms_internal_zzyn.getStandbyState();
        if (activeInputState != this.zzauZ) {
            this.zzauZ = activeInputState;
            z = true;
        } else {
            z = false;
        }
        zzamu.zzb("hasStandbyStateChanged=%b, mFirstDeviceStatusUpdate=%b", Boolean.valueOf(z), Boolean.valueOf(this.zzauW));
        if (this.zzamd != null && (z || this.zzauW)) {
            this.zzamd.onStandbyStateChanged(this.zzauZ);
        }
        this.zzauW = false;
    }

    private void zza(com.google.android.gms.internal.zzzv.zzb<ApplicationConnectionResult> com_google_android_gms_internal_zzzv_zzb_com_google_android_gms_cast_Cast_ApplicationConnectionResult) {
        synchronized (zzavh) {
            if (this.zzavf != null) {
                this.zzavf.setResult(new zza(new Status(2002)));
            }
            this.zzavf = com_google_android_gms_internal_zzzv_zzb_com_google_android_gms_cast_Cast_ApplicationConnectionResult;
        }
    }

    private void zzc(com.google.android.gms.internal.zzzv.zzb<Status> com_google_android_gms_internal_zzzv_zzb_com_google_android_gms_common_api_Status) {
        synchronized (zzavi) {
            if (this.zzavg != null) {
                com_google_android_gms_internal_zzzv_zzb_com_google_android_gms_common_api_Status.setResult(new Status(2001));
                return;
            }
            this.zzavg = com_google_android_gms_internal_zzzv_zzb_com_google_android_gms_common_api_Status;
        }
    }

    private void zzuc() {
        this.zzauX = false;
        this.zzauY = -1;
        this.zzauZ = -1;
        this.zzauQ = null;
        this.zzauU = null;
        this.zzanH = 0.0d;
        this.zzanI = false;
    }

    private void zzuf() {
        zzamu.zzb("removing all MessageReceivedCallbacks", new Object[0]);
        synchronized (this.zzauR) {
            this.zzauR.clear();
        }
    }

    public void disconnect() {
        Throwable e;
        zzamu.zzb("disconnect(); ServiceListener=%s, isConnected=%b", this.zzauT, Boolean.valueOf(isConnected()));
        zzb com_google_android_gms_internal_zzyl_zzb = this.zzauT;
        this.zzauT = null;
        if (com_google_android_gms_internal_zzyl_zzb == null || com_google_android_gms_internal_zzyl_zzb.zzuk() == null) {
            zzamu.zzb("already disposed, so short-circuiting", new Object[0]);
            return;
        }
        zzuf();
        try {
            zzue().disconnect();
            super.disconnect();
        } catch (RemoteException e2) {
            e = e2;
            try {
                zzamu.zzb(e, "Error while disconnecting the controller interface: %s", e.getMessage());
            } finally {
                super.disconnect();
            }
        } catch (IllegalStateException e3) {
            e = e3;
            zzamu.zzb(e, "Error while disconnecting the controller interface: %s", e.getMessage());
        }
    }

    public boolean isMute() throws IllegalStateException {
        zzug();
        return this.zzanI;
    }

    public void onConnectionFailed(ConnectionResult connectionResult) {
        super.onConnectionFailed(connectionResult);
        zzuf();
    }

    public void removeMessageReceivedCallbacks(String str) throws IllegalArgumentException, RemoteException {
        if (TextUtils.isEmpty(str)) {
            throw new IllegalArgumentException("Channel namespace cannot be null or empty");
        }
        synchronized (this.zzauR) {
            MessageReceivedCallback messageReceivedCallback = (MessageReceivedCallback) this.zzauR.remove(str);
        }
        if (messageReceivedCallback != null) {
            try {
                zzue().zzcT(str);
            } catch (Throwable e) {
                zzamu.zzb(e, "Error unregistering namespace (%s): %s", str, e.getMessage());
            }
        }
    }

    public void setMessageReceivedCallbacks(String str, MessageReceivedCallback messageReceivedCallback) throws IllegalArgumentException, IllegalStateException, RemoteException {
        zzym.zzcP(str);
        removeMessageReceivedCallbacks(str);
        if (messageReceivedCallback != null) {
            synchronized (this.zzauR) {
                this.zzauR.put(str, messageReceivedCallback);
            }
            zzue().zzcS(str);
        }
    }

    public void setMute(boolean z) throws IllegalStateException, RemoteException {
        zzue().zza(z, this.zzanH, this.zzanI);
    }

    protected void zza(int i, IBinder iBinder, Bundle bundle, int i2) {
        zzamu.zzb("in onPostInitHandler; statusCode=%d", Integer.valueOf(i));
        if (i == 0 || i == 1001) {
            this.zzauX = true;
            this.zzauV = true;
            this.zzauW = true;
        } else {
            this.zzauX = false;
        }
        if (i == 1001) {
            this.zzavd = new Bundle();
            this.zzavd.putBoolean("com.google.android.gms.cast.EXTRA_APP_NO_LONGER_RUNNING", true);
            i = 0;
        }
        super.zza(i, iBinder, bundle, i2);
    }

    public void zza(String str, LaunchOptions launchOptions, com.google.android.gms.internal.zzzv.zzb<ApplicationConnectionResult> com_google_android_gms_internal_zzzv_zzb_com_google_android_gms_cast_Cast_ApplicationConnectionResult) throws IllegalStateException, RemoteException {
        zza((com.google.android.gms.internal.zzzv.zzb) com_google_android_gms_internal_zzzv_zzb_com_google_android_gms_cast_Cast_ApplicationConnectionResult);
        zzue().zzb(str, launchOptions);
    }

    public void zza(String str, com.google.android.gms.internal.zzzv.zzb<Status> com_google_android_gms_internal_zzzv_zzb_com_google_android_gms_common_api_Status) throws IllegalStateException, RemoteException {
        zzc((com.google.android.gms.internal.zzzv.zzb) com_google_android_gms_internal_zzzv_zzb_com_google_android_gms_common_api_Status);
        zzue().zzcJ(str);
    }

    public void zza(String str, String str2, zzf com_google_android_gms_cast_zzf, com.google.android.gms.internal.zzzv.zzb<ApplicationConnectionResult> com_google_android_gms_internal_zzzv_zzb_com_google_android_gms_cast_Cast_ApplicationConnectionResult) throws IllegalStateException, RemoteException {
        zza((com.google.android.gms.internal.zzzv.zzb) com_google_android_gms_internal_zzzv_zzb_com_google_android_gms_cast_Cast_ApplicationConnectionResult);
        if (com_google_android_gms_cast_zzf == null) {
            com_google_android_gms_cast_zzf = new zzf();
        }
        zzue().zza(str, str2, com_google_android_gms_cast_zzf);
    }

    public void zza(String str, String str2, com.google.android.gms.internal.zzzv.zzb<Status> com_google_android_gms_internal_zzzv_zzb_com_google_android_gms_common_api_Status) throws IllegalArgumentException, IllegalStateException, RemoteException {
        if (TextUtils.isEmpty(str2)) {
            throw new IllegalArgumentException("The message payload cannot be null or empty");
        } else if (str2.length() > 65536) {
            throw new IllegalArgumentException("Message exceeds maximum size");
        } else {
            zzym.zzcP(str);
            zzug();
            long incrementAndGet = this.zzava.incrementAndGet();
            try {
                this.zzave.put(Long.valueOf(incrementAndGet), com_google_android_gms_internal_zzzv_zzb_com_google_android_gms_common_api_Status);
                zzue().zzb(str, str2, incrementAndGet);
            } catch (Throwable th) {
                this.zzave.remove(Long.valueOf(incrementAndGet));
            }
        }
    }

    protected zzyr zzbg(IBinder iBinder) {
        return com.google.android.gms.internal.zzyr.zza.zzbh(iBinder);
    }

    protected String zzeu() {
        return "com.google.android.gms.cast.service.BIND_CAST_DEVICE_CONTROLLER_SERVICE";
    }

    protected String zzev() {
        return "com.google.android.gms.cast.internal.ICastDeviceController";
    }

    protected /* synthetic */ IInterface zzh(IBinder iBinder) {
        return zzbg(iBinder);
    }

    protected Bundle zzql() {
        Bundle bundle = new Bundle();
        zzamu.zzb("getRemoteService(): mLastApplicationId=%s, mLastSessionId=%s", this.zzavb, this.zzavc);
        this.zzapl.putInBundle(bundle);
        bundle.putLong("com.google.android.gms.cast.EXTRA_CAST_FLAGS", this.zzauS);
        if (this.mExtras != null) {
            bundle.putAll(this.mExtras);
        }
        this.zzauT = new zzb(this);
        bundle.putParcelable("listener", new BinderWrapper(this.zzauT.asBinder()));
        if (this.zzavb != null) {
            bundle.putString("last_application_id", this.zzavb);
            if (this.zzavc != null) {
                bundle.putString("last_session_id", this.zzavc);
            }
        }
        return bundle;
    }

    public Bundle zzud() {
        if (this.zzavd == null) {
            return super.zzud();
        }
        Bundle bundle = this.zzavd;
        this.zzavd = null;
        return bundle;
    }

    zzyr zzue() throws DeadObjectException {
        return (zzyr) super.zzwW();
    }

    void zzug() throws IllegalStateException {
        if (!this.zzauX || this.zzauT == null || this.zzauT.isDisposed()) {
            throw new IllegalStateException("Not connected to a device");
        }
    }
}
