package com.google.android.gms.internal;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Build.VERSION;
import com.google.android.gms.common.internal.zzac;

class zzsy extends BroadcastReceiver {
    static final String zzafu = zzsy.class.getName();
    private final zzrw zzacN;
    private boolean zzafv;
    private boolean zzafw;

    zzsy(zzrw com_google_android_gms_internal_zzrw) {
        zzac.zzw(com_google_android_gms_internal_zzrw);
        this.zzacN = com_google_android_gms_internal_zzrw;
    }

    private Context getContext() {
        return this.zzacN.getContext();
    }

    private zzrs zzlZ() {
        return this.zzacN.zzlZ();
    }

    private zzsx zznr() {
        return this.zzacN.zznr();
    }

    private void zzpy() {
        zznr();
        zzlZ();
    }

    public boolean isConnected() {
        if (!this.zzafv) {
            this.zzacN.zznr().zzbR("Connectivity unknown. Receiver not registered");
        }
        return this.zzafw;
    }

    public boolean isRegistered() {
        return this.zzafv;
    }

    public void onReceive(Context context, Intent intent) {
        zzpy();
        String action = intent.getAction();
        this.zzacN.zznr().zza("NetworkBroadcastReceiver received action", action);
        if ("android.net.conn.CONNECTIVITY_CHANGE".equals(action)) {
            boolean zzpA = zzpA();
            if (this.zzafw != zzpA) {
                this.zzafw = zzpA;
                zzlZ().zzV(zzpA);
            }
        } else if (!"com.google.analytics.RADIO_POWERED".equals(action)) {
            this.zzacN.zznr().zzd("NetworkBroadcastReceiver received unknown action", action);
        } else if (!intent.hasExtra(zzafu)) {
            zzlZ().zznn();
        }
    }

    public void unregister() {
        if (isRegistered()) {
            this.zzacN.zznr().zzbO("Unregistering connectivity change receiver");
            this.zzafv = false;
            this.zzafw = false;
            try {
                getContext().unregisterReceiver(this);
            } catch (IllegalArgumentException e) {
                zznr().zze("Failed to unregister the network broadcast receiver", e);
            }
        }
    }

    protected boolean zzpA() {
        try {
            NetworkInfo activeNetworkInfo = ((ConnectivityManager) getContext().getSystemService("connectivity")).getActiveNetworkInfo();
            return activeNetworkInfo != null && activeNetworkInfo.isConnected();
        } catch (SecurityException e) {
            return false;
        }
    }

    public void zzpx() {
        zzpy();
        if (!this.zzafv) {
            Context context = getContext();
            context.registerReceiver(this, new IntentFilter("android.net.conn.CONNECTIVITY_CHANGE"));
            IntentFilter intentFilter = new IntentFilter("com.google.analytics.RADIO_POWERED");
            intentFilter.addCategory(context.getPackageName());
            context.registerReceiver(this, intentFilter);
            this.zzafw = zzpA();
            this.zzacN.zznr().zza("Registering connectivity change receiver. Network connected", Boolean.valueOf(this.zzafw));
            this.zzafv = true;
        }
    }

    public void zzpz() {
        if (VERSION.SDK_INT > 10) {
            Context context = getContext();
            Intent intent = new Intent("com.google.analytics.RADIO_POWERED");
            intent.addCategory(context.getPackageName());
            intent.putExtra(zzafu, true);
            context.sendOrderedBroadcast(intent, null);
        }
    }
}
