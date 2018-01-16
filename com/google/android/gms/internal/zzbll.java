package com.google.android.gms.internal;

import java.util.HashMap;
import java.util.Map;

class zzbll implements com.google.android.gms.internal.zzblv.zza {
    private static long zzbZj = 0;
    private final zzbop zzbYx;
    private zzblp zzbZk;
    private zzblv zzbZl;
    private zza zzbZm;
    private zzc zzbZn = zzc.REALTIME_CONNECTING;

    public interface zza {
        void zzat(Map<String, Object> map);

        void zzb(zzb com_google_android_gms_internal_zzbll_zzb);

        void zziK(String str);

        void zziL(String str);

        void zzj(long j, String str);
    }

    public enum zzb {
        SERVER_RESET,
        OTHER
    }

    private enum zzc {
        REALTIME_CONNECTING,
        REALTIME_CONNECTED,
        REALTIME_DISCONNECTED
    }

    public zzbll(zzbln com_google_android_gms_internal_zzbln, zzblp com_google_android_gms_internal_zzblp, String str, zza com_google_android_gms_internal_zzbll_zza, String str2) {
        long j = zzbZj;
        zzbZj = 1 + j;
        this.zzbZk = com_google_android_gms_internal_zzblp;
        this.zzbZm = com_google_android_gms_internal_zzbll_zza;
        this.zzbYx = new zzbop(com_google_android_gms_internal_zzbln.zzVH(), "Connection", "conn_" + j);
        this.zzbZl = new zzblv(com_google_android_gms_internal_zzbln, com_google_android_gms_internal_zzblp, str, this, str2);
    }

    private void zzat(Map<String, Object> map) {
        if (this.zzbYx.zzYT()) {
            zzbop com_google_android_gms_internal_zzbop = this.zzbYx;
            String str = "received data message: ";
            String valueOf = String.valueOf(map.toString());
            com_google_android_gms_internal_zzbop.zzi(valueOf.length() != 0 ? str.concat(valueOf) : new String(str), new Object[0]);
        }
        this.zzbZm.zzat(map);
    }

    private void zzau(Map<String, Object> map) {
        if (this.zzbYx.zzYT()) {
            zzbop com_google_android_gms_internal_zzbop = this.zzbYx;
            String str = "Got control message: ";
            String valueOf = String.valueOf(map.toString());
            com_google_android_gms_internal_zzbop.zzi(valueOf.length() != 0 ? str.concat(valueOf) : new String(str), new Object[0]);
        }
        try {
            valueOf = (String) map.get("t");
            if (valueOf == null) {
                if (this.zzbYx.zzYT()) {
                    com_google_android_gms_internal_zzbop = this.zzbYx;
                    str = "Got invalid control message: ";
                    valueOf = String.valueOf(map.toString());
                    com_google_android_gms_internal_zzbop.zzi(valueOf.length() != 0 ? str.concat(valueOf) : new String(str), new Object[0]);
                }
                close();
            } else if (valueOf.equals("s")) {
                zziI((String) map.get("d"));
            } else if (valueOf.equals("r")) {
                zziJ((String) map.get("d"));
            } else if (valueOf.equals("h")) {
                zzav((Map) map.get("d"));
            } else if (this.zzbYx.zzYT()) {
                com_google_android_gms_internal_zzbop = this.zzbYx;
                str = "Ignoring unknown control message: ";
                valueOf = String.valueOf(valueOf);
                com_google_android_gms_internal_zzbop.zzi(valueOf.length() != 0 ? str.concat(valueOf) : new String(str), new Object[0]);
            }
        } catch (ClassCastException e) {
            if (this.zzbYx.zzYT()) {
                com_google_android_gms_internal_zzbop = this.zzbYx;
                str = "Failed to parse control message: ";
                valueOf = String.valueOf(e.toString());
                com_google_android_gms_internal_zzbop.zzi(valueOf.length() != 0 ? str.concat(valueOf) : new String(str), new Object[0]);
            }
            close();
        }
    }

    private void zzav(Map<String, Object> map) {
        long longValue = ((Long) map.get("ts")).longValue();
        this.zzbZm.zziK((String) map.get("h"));
        String str = (String) map.get("s");
        if (this.zzbZn == zzc.REALTIME_CONNECTING) {
            zzi(longValue, str);
        }
    }

    private void zzb(Map<String, Object> map, boolean z) {
        if (this.zzbZn != zzc.REALTIME_CONNECTED) {
            this.zzbYx.zzi("Tried to send on an unconnected connection", new Object[0]);
            return;
        }
        if (z) {
            this.zzbYx.zzi("Sending data (contents hidden)", new Object[0]);
        } else {
            this.zzbYx.zzi("Sending data: %s", map);
        }
        this.zzbZl.send(map);
    }

    private void zzi(long j, String str) {
        if (this.zzbYx.zzYT()) {
            this.zzbYx.zzi("realtime connection established", new Object[0]);
        }
        this.zzbZn = zzc.REALTIME_CONNECTED;
        this.zzbZm.zzj(j, str);
    }

    private void zziI(String str) {
        if (this.zzbYx.zzYT()) {
            this.zzbYx.zzi("Connection shutdown command received. Shutting down...", new Object[0]);
        }
        this.zzbZm.zziL(str);
        close();
    }

    private void zziJ(String str) {
        if (this.zzbYx.zzYT()) {
            zzbop com_google_android_gms_internal_zzbop = this.zzbYx;
            String valueOf = String.valueOf(this.zzbZk.getHost());
            com_google_android_gms_internal_zzbop.zzi(new StringBuilder((String.valueOf(valueOf).length() + 62) + String.valueOf(str).length()).append("Got a reset; killing connection to ").append(valueOf).append("; Updating internalHost to ").append(str).toString(), new Object[0]);
        }
        this.zzbZm.zziK(str);
        zza(zzb.SERVER_RESET);
    }

    public void close() {
        zza(zzb.OTHER);
    }

    public void open() {
        if (this.zzbYx.zzYT()) {
            this.zzbYx.zzi("Opening a connection", new Object[0]);
        }
        this.zzbZl.open();
    }

    public void zza(zzb com_google_android_gms_internal_zzbll_zzb) {
        if (this.zzbZn != zzc.REALTIME_DISCONNECTED) {
            if (this.zzbYx.zzYT()) {
                this.zzbYx.zzi("closing realtime connection", new Object[0]);
            }
            this.zzbZn = zzc.REALTIME_DISCONNECTED;
            if (this.zzbZl != null) {
                this.zzbZl.close();
                this.zzbZl = null;
            }
            this.zzbZm.zzb(com_google_android_gms_internal_zzbll_zzb);
        }
    }

    public void zza(Map<String, Object> map, boolean z) {
        Map hashMap = new HashMap();
        hashMap.put("t", "d");
        hashMap.put("d", map);
        zzb(hashMap, z);
    }

    public void zzaV(boolean z) {
        this.zzbZl = null;
        if (z || this.zzbZn != zzc.REALTIME_CONNECTING) {
            if (this.zzbYx.zzYT()) {
                this.zzbYx.zzi("Realtime connection lost", new Object[0]);
            }
        } else if (this.zzbYx.zzYT()) {
            this.zzbYx.zzi("Realtime connection failed", new Object[0]);
        }
        close();
    }

    public void zzas(Map<String, Object> map) {
        String str;
        zzbop com_google_android_gms_internal_zzbop;
        String str2;
        try {
            str = (String) map.get("t");
            if (str == null) {
                if (this.zzbYx.zzYT()) {
                    com_google_android_gms_internal_zzbop = this.zzbYx;
                    str2 = "Failed to parse server message: missing message type:";
                    str = String.valueOf(map.toString());
                    com_google_android_gms_internal_zzbop.zzi(str.length() != 0 ? str2.concat(str) : new String(str2), new Object[0]);
                }
                close();
            } else if (str.equals("d")) {
                zzat((Map) map.get("d"));
            } else if (str.equals("c")) {
                zzau((Map) map.get("d"));
            } else if (this.zzbYx.zzYT()) {
                com_google_android_gms_internal_zzbop = this.zzbYx;
                str2 = "Ignoring unknown server message type: ";
                str = String.valueOf(str);
                com_google_android_gms_internal_zzbop.zzi(str.length() != 0 ? str2.concat(str) : new String(str2), new Object[0]);
            }
        } catch (ClassCastException e) {
            if (this.zzbYx.zzYT()) {
                com_google_android_gms_internal_zzbop = this.zzbYx;
                str2 = "Failed to parse server message: ";
                str = String.valueOf(e.toString());
                com_google_android_gms_internal_zzbop.zzi(str.length() != 0 ? str2.concat(str) : new String(str2), new Object[0]);
            }
            close();
        }
    }
}
