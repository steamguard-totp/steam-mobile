package com.google.android.gms.internal;

import android.annotation.TargetApi;
import android.app.Service;
import android.content.ComponentCallbacks2;
import android.content.ComponentName;
import android.content.Context;
import android.content.pm.PackageManager.NameNotFoundException;
import android.content.pm.ServiceInfo;
import android.content.res.Configuration;
import android.net.Uri;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.os.RemoteException;
import android.util.Pair;
import com.google.android.gms.common.internal.zzac;
import com.google.android.gms.tagmanager.TagManagerService;
import com.google.android.gms.tagmanager.zzay;
import com.google.android.gms.tagmanager.zzbb;
import java.io.File;
import java.io.IOException;
import java.util.LinkedList;
import java.util.Queue;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public final class zzazm {
    private static final Pattern zzbIG = Pattern.compile("(gtm-[a-z0-9]{1,10})\\.json", 2);
    private static volatile zzazm zzbIH;
    private static zzc zzbIQ = new zzc() {
        public zzazm zzb(Context context, zzbb com_google_android_gms_tagmanager_zzbb, zzay com_google_android_gms_tagmanager_zzay) {
            return new zzazm(context, com_google_android_gms_tagmanager_zzbb, com_google_android_gms_tagmanager_zzay, new zzazp(context), zzazo.zzQR(), zzazo.zzQS(), zzazc.zzQB(), new zza(context));
        }
    };
    private final Context mContext;
    private String zzbCS;
    private final ExecutorService zzbHn;
    private final ScheduledExecutorService zzbHo;
    private final zzbb zzbHp;
    private final zzay zzbHy;
    private final zzazp zzbII;
    private final zzazc zzbIJ;
    private final zza zzbIK;
    private final Object zzbIL = new Object();
    private String zzbIM;
    private int zzbIN = 1;
    private final Queue<Runnable> zzbIO = new LinkedList();
    private volatile boolean zzbIP = false;
    private volatile boolean zztW = false;

    public interface zzc {
        zzazm zzb(Context context, zzbb com_google_android_gms_tagmanager_zzbb, zzay com_google_android_gms_tagmanager_zzay);
    }

    protected static class zza {
        private final Context mContext;

        public zza(Context context) {
            this.mContext = context;
        }

        public String[] zzQQ() throws IOException {
            return this.mContext.getAssets().list("");
        }

        public String[] zzhQ(String str) throws IOException {
            return this.mContext.getAssets().list(str);
        }
    }

    private class zzb extends com.google.android.gms.internal.zzayu.zza {
        final /* synthetic */ zzazm zzbIR;

        private zzb(zzazm com_google_android_gms_internal_zzazm) {
            this.zzbIR = com_google_android_gms_internal_zzazm;
        }

        public void zza(final boolean z, final String str) throws RemoteException {
            this.zzbIR.zzbHn.submit(new Runnable(this) {
                final /* synthetic */ zzb zzbJf;

                public void run() {
                    if (this.zzbJf.zzbIR.zzbIN == 2) {
                        String str;
                        if (z) {
                            this.zzbJf.zzbIR.zzbIN = 3;
                            str = str;
                            zzayx.v(new StringBuilder(String.valueOf(str).length() + 18).append("Container ").append(str).append(" loaded.").toString());
                        } else {
                            this.zzbJf.zzbIR.zzbIN = 4;
                            String str2 = "Error loading container:";
                            str = String.valueOf(str);
                            zzayx.e(str.length() != 0 ? str2.concat(str) : new String(str2));
                        }
                        while (!this.zzbJf.zzbIR.zzbIO.isEmpty()) {
                            this.zzbJf.zzbIR.zzbHn.submit((Runnable) this.zzbJf.zzbIR.zzbIO.remove());
                        }
                        return;
                    }
                    zzayx.zzbe("Container load callback completed after timeout");
                }
            });
        }
    }

    zzazm(Context context, zzbb com_google_android_gms_tagmanager_zzbb, zzay com_google_android_gms_tagmanager_zzay, zzazp com_google_android_gms_internal_zzazp, ExecutorService executorService, ScheduledExecutorService scheduledExecutorService, zzazc com_google_android_gms_internal_zzazc, zza com_google_android_gms_internal_zzazm_zza) {
        zzac.zzw(context);
        zzac.zzw(com_google_android_gms_tagmanager_zzbb);
        this.mContext = context;
        this.zzbHp = com_google_android_gms_tagmanager_zzbb;
        this.zzbHy = com_google_android_gms_tagmanager_zzay;
        this.zzbII = com_google_android_gms_internal_zzazp;
        this.zzbHn = executorService;
        this.zzbHo = scheduledExecutorService;
        this.zzbIJ = com_google_android_gms_internal_zzazc;
        this.zzbIK = com_google_android_gms_internal_zzazm_zza;
    }

    @TargetApi(14)
    private void zzPZ() {
        if (VERSION.SDK_INT >= 14) {
            this.mContext.registerComponentCallbacks(new ComponentCallbacks2(this) {
                final /* synthetic */ zzazm zzbIR;

                {
                    this.zzbIR = r1;
                }

                public void onConfigurationChanged(Configuration configuration) {
                }

                public void onLowMemory() {
                }

                public void onTrimMemory(int i) {
                    if (i == 20) {
                        this.zzbIR.zzbHn.submit(new Runnable(this) {
                            final /* synthetic */ AnonymousClass6 zzbJc;

                            {
                                this.zzbJc = r1;
                            }

                            public void run() {
                                zzayx.v("App's UI deactivated. Dispatching hits.");
                                this.zzbJc.zzbIR.zzbII.dispatch();
                            }
                        });
                    }
                }
            });
        }
    }

    private zza zzQO() {
        return this.zzbIK;
    }

    private void zzQP() {
        try {
            this.zzbHp.zza(new com.google.android.gms.tagmanager.zzba.zza(this) {
                final /* synthetic */ zzazm zzbIR;

                {
                    this.zzbIR = r1;
                }

                public void zzb(String str, String str2, Bundle bundle, long j) throws RemoteException {
                    final String stringBuilder = new StringBuilder(String.valueOf(str).length() + 4).append(str).append("+").append("gtm").toString();
                    final String str3 = str2;
                    final Bundle bundle2 = bundle;
                    final long j2 = j;
                    final String str4 = str;
                    this.zzbIR.zzbHn.submit(new Runnable(this) {
                        private boolean zzbIS = false;
                        final /* synthetic */ AnonymousClass2 zzbIW;

                        public void run() {
                            if (this.zzbIW.zzbIR.zzbIN == 3) {
                                this.zzbIW.zzbIR.zzbII.zza(str3, bundle2, stringBuilder, j2, true);
                            } else if (this.zzbIW.zzbIR.zzbIN == 4) {
                                zzayx.v(String.format("Container failed to load: skipping  event interceptor by logging event back to Firebase directly: name = %s, origin = %s, params = %s.", new Object[]{str3, stringBuilder, bundle2}));
                                try {
                                    this.zzbIW.zzbIR.zzbHp.zza(stringBuilder, str3, bundle2, j2);
                                } catch (RemoteException e) {
                                    String str = "Error logging event on measurement proxy";
                                    String valueOf = String.valueOf(e.getMessage());
                                    zzayx.e(valueOf.length() != 0 ? str.concat(valueOf) : new String(str));
                                }
                            } else if (this.zzbIW.zzbIR.zzbIN != 1 && this.zzbIW.zzbIR.zzbIN != 2) {
                                zzayx.zzbe("Unexpected state:" + this.zzbIW.zzbIR.zzbIN);
                            } else if (this.zzbIS) {
                                zzayx.zzbe("Invalid state - not expecting to see a deferred eventduring container loading.");
                            } else {
                                zzayx.v(String.format("Container not loaded yet: deferring event interceptor by enqueuing the event: name = %s, origin = %s, params = %s.", new Object[]{str3, str4, bundle2}));
                                this.zzbIS = true;
                                this.zzbIW.zzbIR.zzbIO.add(this);
                            }
                        }
                    });
                }
            });
        } catch (RemoteException e) {
            String str = "Error communicating with measurement proxy:";
            String valueOf = String.valueOf(e.getMessage());
            zzayx.e(valueOf.length() != 0 ? str.concat(valueOf) : new String(str));
        }
        try {
            this.zzbHp.zza(new com.google.android.gms.tagmanager.zzaz.zza(this) {
                final /* synthetic */ zzazm zzbIR;

                {
                    this.zzbIR = r1;
                }

                public void zzc(String str, String str2, Bundle bundle, long j) {
                    if (!str.endsWith("+gtm")) {
                        final String stringBuilder = new StringBuilder(String.valueOf(str).length() + 4).append(str).append("+").append("gtm").toString();
                        final String str3 = str2;
                        final Bundle bundle2 = bundle;
                        final long j2 = j;
                        final String str4 = str;
                        this.zzbIR.zzbHn.submit(new Runnable(this) {
                            private boolean zzbIS = false;
                            final /* synthetic */ AnonymousClass3 zzbIX;

                            public void run() {
                                if (this.zzbIX.zzbIR.zzbIN == 3) {
                                    this.zzbIX.zzbIR.zzbII.zza(str3, bundle2, stringBuilder, j2, false);
                                } else if (this.zzbIX.zzbIR.zzbIN == 1 || this.zzbIX.zzbIR.zzbIN == 2) {
                                    if (this.zzbIS) {
                                        zzayx.zzbe("Invalid state - not expecting to see a deferred event during container loading.");
                                        return;
                                    }
                                    zzayx.v(String.format("Container not loaded yet: deferring event listener by enqueuing the event: name = %s, origin = %s, params = %s.", new Object[]{str3, str4, bundle2}));
                                    this.zzbIS = true;
                                    this.zzbIX.zzbIR.zzbIO.add(this);
                                } else if (this.zzbIX.zzbIR.zzbIN == 4) {
                                    zzayx.v(String.format("Container failed to load: skipping event listener by ignoring the event: name = %s, origin = %s, params = %s.", new Object[]{str3, str4, bundle2}));
                                } else {
                                    zzayx.zzbe("Unexpected state:" + this.zzbIX.zzbIR.zzbIN);
                                }
                            }
                        });
                    }
                }
            });
        } catch (RemoteException e2) {
            str = "Error communicating with measurement proxy:";
            valueOf = String.valueOf(e2.getMessage());
            zzayx.e(valueOf.length() != 0 ? str.concat(valueOf) : new String(str));
        }
    }

    public static zzazm zza(Context context, zzbb com_google_android_gms_tagmanager_zzbb, zzay com_google_android_gms_tagmanager_zzay) {
        zzac.zzw(context);
        zzac.zzw(context);
        zzazm com_google_android_gms_internal_zzazm = zzbIH;
        if (com_google_android_gms_internal_zzazm == null) {
            synchronized (zzazm.class) {
                com_google_android_gms_internal_zzazm = zzbIH;
                if (com_google_android_gms_internal_zzazm == null) {
                    com_google_android_gms_internal_zzazm = zzbIQ.zzb(context, com_google_android_gms_tagmanager_zzbb, com_google_android_gms_tagmanager_zzay);
                    zzbIH = com_google_android_gms_internal_zzazm;
                }
            }
        }
        return com_google_android_gms_internal_zzazm;
    }

    private static boolean zzb(Context context, Class<? extends Service> cls) {
        try {
            ServiceInfo serviceInfo = context.getPackageManager().getServiceInfo(new ComponentName(context, cls), 4);
            if (serviceInfo != null && serviceInfo.enabled) {
                return true;
            }
        } catch (NameNotFoundException e) {
        }
        return false;
    }

    private Pair<String, String> zzj(String[] strArr) {
        int i = 0;
        zzayx.v("Looking up container asset.");
        if (this.zzbCS != null && this.zzbIM != null) {
            return Pair.create(this.zzbCS, this.zzbIM);
        }
        String valueOf;
        if (strArr == null) {
            try {
                strArr = zzQO().zzhQ("containers");
            } catch (Throwable e) {
                zzayx.zzb(String.format("Failed to enumerate assets in folder %s", new Object[]{"containers"}), e);
                return Pair.create(null, null);
            }
        }
        int i2 = 0;
        for (int i3 = 0; i3 < strArr.length; i3++) {
            Matcher matcher = zzbIG.matcher(strArr[i3]);
            if (!matcher.matches()) {
                zzayx.zzbe(String.format("Ignoring container asset %s (does not match %s)", new Object[]{strArr[i3], zzbIG.pattern()}));
            } else if (i2 == 0) {
                this.zzbCS = matcher.group(1);
                String valueOf2 = String.valueOf("containers");
                r3 = String.valueOf(File.separator);
                valueOf = String.valueOf(strArr[i3]);
                this.zzbIM = new StringBuilder(((String.valueOf(valueOf2).length() + 0) + String.valueOf(r3).length()) + String.valueOf(valueOf).length()).append(valueOf2).append(r3).append(valueOf).toString();
                r3 = "Asset found for container ";
                valueOf2 = String.valueOf(this.zzbCS);
                zzayx.v(valueOf2.length() != 0 ? r3.concat(valueOf2) : new String(r3));
                i2 = 1;
            } else {
                valueOf = "Extra container asset found, will not be loaded: ";
                r3 = String.valueOf(strArr[i3]);
                zzayx.zzbe(r3.length() != 0 ? valueOf.concat(r3) : new String(valueOf));
            }
        }
        if (i2 == 0) {
            zzayx.zzbe("No container asset found in /assets/containers. Checking top level /assets directory for container assets.");
            try {
                String[] zzQQ = zzQO().zzQQ();
                while (i < zzQQ.length) {
                    Matcher matcher2 = zzbIG.matcher(zzQQ[i]);
                    if (matcher2.matches()) {
                        String valueOf3;
                        if (i2 == 0) {
                            this.zzbCS = matcher2.group(1);
                            this.zzbIM = zzQQ[i];
                            valueOf2 = "Asset found for container ";
                            valueOf3 = String.valueOf(this.zzbCS);
                            zzayx.v(valueOf3.length() != 0 ? valueOf2.concat(valueOf3) : new String(valueOf2));
                            zzayx.zzbe("Loading container assets from top level /assets directory. Please move the container asset to /assets/containers");
                            i2 = 1;
                        } else {
                            valueOf = "Extra container asset found, will not be loaded: ";
                            valueOf3 = String.valueOf(zzQQ[i]);
                            zzayx.zzbe(valueOf3.length() != 0 ? valueOf.concat(valueOf3) : new String(valueOf));
                        }
                    }
                    i++;
                }
            } catch (Throwable e2) {
                zzayx.zzb("Failed to enumerate assets.", e2);
                return Pair.create(null, null);
            }
        }
        return Pair.create(this.zzbCS, this.zzbIM);
    }

    public void initialize() {
        zzi(null);
    }

    public void zzai(String str, String str2) {
        zzn(str, str2, null);
    }

    public void zzi(String[] strArr) {
        zzayx.v("Initializing Tag Manager.");
        long currentTimeMillis = System.currentTimeMillis();
        synchronized (this.zzbIL) {
            if (this.zztW) {
                return;
            }
            try {
                if (zzb(this.mContext, TagManagerService.class)) {
                    Pair zzj = zzj(strArr);
                    String str = (String) zzj.first;
                    String str2 = (String) zzj.second;
                    if (str == null || str2 == null) {
                        zzayx.zzbe("Tag Manager's event handler WILL NOT be installed (no container loaded)");
                    } else {
                        String str3 = "Loading container ";
                        String valueOf = String.valueOf(str);
                        zzayx.zzbd(valueOf.length() != 0 ? str3.concat(valueOf) : new String(str3));
                        zzai(str, str2);
                        if (!this.zzbIP) {
                            zzayx.zzbd("Installing Tag Manager event handler.");
                            this.zzbIP = true;
                            zzQP();
                            zzPZ();
                            zzayx.zzbd("Tag Manager event handler installed.");
                        }
                    }
                    this.zztW = true;
                    zzayx.zzbd("Tag Manager initilization took " + (System.currentTimeMillis() - currentTimeMillis) + "ms");
                    return;
                }
                boolean z = "Tag Manager fails to initialize (TagManagerService not enabled in the manifest)";
                zzayx.zzbe(z);
                this.zztW = z;
            } finally {
                this.zztW = true;
            }
        }
    }

    public void zzn(final String str, final String str2, final String str3) {
        this.zzbHn.submit(new Runnable(this) {
            final /* synthetic */ zzazm zzbIR;

            public void run() {
                String str = str;
                zzayx.v(new StringBuilder(String.valueOf(str).length() + 28).append("Starting to load container ").append(str).append(".").toString());
                if (this.zzbIR.zzbIN != 1) {
                    zzayx.zzbe("Unexpected state - container loading already initiated.");
                    return;
                }
                this.zzbIR.zzbIN = 2;
                this.zzbIR.zzbII.zzb(str, str2, str3, new zzb());
            }
        });
        this.zzbHo.schedule(new Runnable(this) {
            final /* synthetic */ zzazm zzbIR;

            {
                this.zzbIR = r1;
            }

            public void run() {
                this.zzbIR.zzbHn.submit(new Runnable(this) {
                    final /* synthetic */ AnonymousClass5 zzbJb;

                    {
                        this.zzbJb = r1;
                    }

                    public void run() {
                        if (this.zzbJb.zzbIR.zzbIN == 1 || this.zzbJb.zzbIR.zzbIN == 2) {
                            this.zzbJb.zzbIR.zzbIN = 4;
                            zzayx.e("Container load timed out after 5000ms.");
                            while (!this.zzbJb.zzbIR.zzbIO.isEmpty()) {
                                this.zzbJb.zzbIR.zzbHn.submit((Runnable) this.zzbJb.zzbIR.zzbIO.remove());
                            }
                        }
                    }
                });
            }
        }, 5000, TimeUnit.MILLISECONDS);
    }

    void zzx(final Uri uri) {
        this.zzbHn.submit(new Runnable(this) {
            final /* synthetic */ zzazm zzbIR;

            public void run() {
                String valueOf = String.valueOf(uri);
                zzayx.v(new StringBuilder(String.valueOf(valueOf).length() + 25).append("Preview requested to uri ").append(valueOf).toString());
                synchronized (this.zzbIR.zzbIL) {
                    if (this.zzbIR.zzbIN == 2) {
                        zzayx.v("Still initializing. Defer preview container loading.");
                        this.zzbIR.zzbIO.add(this);
                        return;
                    }
                    valueOf = (String) this.zzbIR.zzj(null).first;
                    if (valueOf == null) {
                        zzayx.zzbe("Preview failed (no container found)");
                    } else if (!this.zzbIR.zzbIJ.zzc(valueOf, uri)) {
                        valueOf = String.valueOf(uri);
                        zzayx.zzbe(new StringBuilder(String.valueOf(valueOf).length() + 73).append("Cannot preview the app with the uri: ").append(valueOf).append(". Launching current version instead.").toString());
                    } else if (this.zzbIR.zztW) {
                        valueOf = String.valueOf(uri);
                        zzayx.zzbd(new StringBuilder(String.valueOf(valueOf).length() + 36).append("Starting to load preview container: ").append(valueOf).toString());
                        if (this.zzbIR.zzbII.zzQW()) {
                            this.zzbIR.zztW = false;
                            this.zzbIR.zzbIN = 1;
                            this.zzbIR.initialize();
                            return;
                        }
                        zzayx.zzbe("Failed to reset TagManager service for preview");
                    } else {
                        valueOf = String.valueOf(uri);
                        zzayx.v(new StringBuilder(String.valueOf(valueOf).length() + 84).append("Deferring container loading for preview uri: ").append(valueOf).append("(Tag Manager has not been initialized).").toString());
                    }
                }
            }
        });
    }
}
