package com.google.firebase.iid;

import android.app.AlarmManager;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Bundle;
import android.os.SystemClock;
import android.util.Log;
import java.io.IOException;

public class FirebaseInstanceIdService extends zzb {
    private static BroadcastReceiver zzciU;
    static final Object zzciV = new Object();
    static boolean zzciW = false;
    private boolean zzciX = false;

    private String zzJ(Intent intent) {
        String stringExtra = intent.getStringExtra("subtype");
        return stringExtra == null ? "" : stringExtra;
    }

    private int zza(Intent intent, boolean z) {
        int intExtra = intent == null ? 10 : intent.getIntExtra("next_retry_delay_in_seconds", 0);
        return (intExtra >= 10 || z) ? intExtra >= 10 ? intExtra > 28800 ? 28800 : intExtra : 10 : 30;
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    static void zza(android.content.Context r2, com.google.firebase.iid.FirebaseInstanceId r3) {
        /*
        r1 = zzciV;
        monitor-enter(r1);
        r0 = zzciW;	 Catch:{ all -> 0x0026 }
        if (r0 == 0) goto L_0x0009;
    L_0x0007:
        monitor-exit(r1);	 Catch:{ all -> 0x0026 }
    L_0x0008:
        return;
    L_0x0009:
        monitor-exit(r1);	 Catch:{ all -> 0x0026 }
        r0 = r3.zzaad();
        if (r0 == 0) goto L_0x0022;
    L_0x0010:
        r1 = com.google.firebase.iid.zzd.zzbhg;
        r0 = r0.zzjC(r1);
        if (r0 != 0) goto L_0x0022;
    L_0x0018:
        r0 = r3.zzaaf();
        r0 = r0.zzaai();
        if (r0 == 0) goto L_0x0008;
    L_0x0022:
        zzbV(r2);
        goto L_0x0008;
    L_0x0026:
        r0 = move-exception;
        monitor-exit(r1);	 Catch:{ all -> 0x0026 }
        throw r0;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.firebase.iid.FirebaseInstanceIdService.zza(android.content.Context, com.google.firebase.iid.FirebaseInstanceId):void");
    }

    private void zza(Intent intent, boolean z, boolean z2) {
        synchronized (zzciV) {
            zzciW = false;
        }
        if (zzf.zzbi(this) != null) {
            FirebaseInstanceId instance = FirebaseInstanceId.getInstance();
            zza zzaad = instance.zzaad();
            if (zzaad == null || zzaad.zzjC(zzd.zzbhg)) {
                try {
                    String zzaae = instance.zzaae();
                    if (zzaae != null) {
                        zza((Context) this, instance);
                        if (!z2 && zzaad != null && zzaad != null) {
                            zzaae.equals(zzaad.zzbwP);
                            return;
                        }
                        return;
                    }
                    zzd(intent, "returned token is null");
                    return;
                } catch (IOException e) {
                    zzd(intent, e.getMessage());
                    return;
                } catch (Throwable e2) {
                    Log.e("FirebaseInstanceId", "Unable to get master token", e2);
                    return;
                }
            }
            zze zzaaf = instance.zzaaf();
            for (String zzaai = zzaaf.zzaai(); zzaai != null; zzaai = zzaaf.zzaai()) {
                String[] split = zzaai.split("!");
                if (split.length == 2) {
                    String str = split[0];
                    String str2 = split[1];
                    int i = -1;
                    try {
                        switch (str.hashCode()) {
                            case 83:
                                if (str.equals("S")) {
                                    i = 0;
                                    break;
                                }
                                break;
                            case 85:
                                if (str.equals("U")) {
                                    i = 1;
                                    break;
                                }
                                break;
                        }
                        switch (i) {
                            case 0:
                                FirebaseInstanceId.getInstance().zzjv(str2);
                                if (!this.zzciX) {
                                    break;
                                }
                                break;
                            case 1:
                                FirebaseInstanceId.getInstance().zzjw(str2);
                                break;
                            default:
                                break;
                        }
                    } catch (IOException e3) {
                        zzd(intent, e3.getMessage());
                        return;
                    }
                }
                zzaaf.zzjy(zzaai);
            }
        }
    }

    private void zza(zzf com_google_firebase_iid_zzf, Bundle bundle) {
        String zzbi = zzf.zzbi(this);
        if (zzbi == null) {
            Log.w("FirebaseInstanceId", "Unable to respond to ping due to missing target package");
            return;
        }
        Intent intent = new Intent("com.google.android.gcm.intent.SEND");
        intent.setPackage(zzbi);
        intent.putExtras(bundle);
        com_google_firebase_iid_zzf.zzs(intent);
        intent.putExtra("google.to", "google.com/iid");
        intent.putExtra("google.message_id", zzf.zzGz());
        sendOrderedBroadcast(intent, "com.google.android.gtalkservice.permission.GTALK_SERVICE");
    }

    static void zzbV(Context context) {
        if (zzf.zzbi(context) != null) {
            synchronized (zzciV) {
                if (!zzciW) {
                    zzg.zzaaj().zzf(context, zzpR(0));
                    zzciW = true;
                }
            }
        }
    }

    private static boolean zzbW(Context context) {
        NetworkInfo activeNetworkInfo = ((ConnectivityManager) context.getSystemService("connectivity")).getActiveNetworkInfo();
        return activeNetworkInfo != null && activeNetworkInfo.isConnected();
    }

    private void zzd(Intent intent, String str) {
        boolean zzbW = zzbW(this);
        final int zza = zza(intent, zzbW);
        new StringBuilder(String.valueOf(str).length() + 47).append("background sync failed: ").append(str).append(", retry in ").append(zza).append("s").toString();
        synchronized (zzciV) {
            zzpS(zza);
            zzciW = true;
        }
        if (!zzbW) {
            if (zzciU == null) {
                zzciU = new BroadcastReceiver(this) {
                    final /* synthetic */ FirebaseInstanceIdService zzciZ;

                    public void onReceive(Context context, Intent intent) {
                        if (FirebaseInstanceIdService.zzbW(context)) {
                            this.zzciZ.zzciX;
                            this.zzciZ.getApplicationContext().unregisterReceiver(this);
                            zzg.zzaaj().zzf(context, FirebaseInstanceIdService.zzpR(zza));
                        }
                    }
                };
            }
            getApplicationContext().registerReceiver(zzciU, new IntentFilter("android.net.conn.CONNECTIVITY_CHANGE"));
        }
    }

    private zzd zzjx(String str) {
        if (str == null) {
            return zzd.zzb(this, null);
        }
        Bundle bundle = new Bundle();
        bundle.putString("subtype", str);
        return zzd.zzb(this, bundle);
    }

    private static Intent zzpR(int i) {
        Intent intent = new Intent("ACTION_TOKEN_REFRESH_RETRY");
        intent.putExtra("next_retry_delay_in_seconds", i);
        return intent;
    }

    private void zzpS(int i) {
        ((AlarmManager) getSystemService("alarm")).set(3, SystemClock.elapsedRealtime() + ((long) (i * 1000)), zzg.zza(this, 0, zzpR(i * 2), 134217728));
    }

    protected Intent zzF(Intent intent) {
        return zzg.zzaaj().zzaak();
    }

    public boolean zzH(Intent intent) {
        this.zzciX = Log.isLoggable("FirebaseInstanceId", 3);
        if (intent.getStringExtra("error") == null && intent.getStringExtra("registration_id") == null) {
            return false;
        }
        String zzJ = zzJ(intent);
        if (this.zzciX) {
            String str = "Register result in service ";
            String valueOf = String.valueOf(zzJ);
            if (valueOf.length() != 0) {
                str.concat(valueOf);
            } else {
                valueOf = new String(str);
            }
        }
        zzjx(zzJ).zzaah().zzv(intent);
        return true;
    }

    public void zzI(Intent intent) {
        String zzJ = zzJ(intent);
        zzd zzjx = zzjx(zzJ);
        String stringExtra = intent.getStringExtra("CMD");
        if (this.zzciX) {
            String valueOf = String.valueOf(intent.getExtras());
            new StringBuilder(((String.valueOf(zzJ).length() + 18) + String.valueOf(stringExtra).length()) + String.valueOf(valueOf).length()).append("Service command ").append(zzJ).append(" ").append(stringExtra).append(" ").append(valueOf).toString();
        }
        if (intent.getStringExtra("unregistered") != null) {
            zzh zzaag = zzjx.zzaag();
            if (zzJ == null) {
                zzJ = "";
            }
            zzaag.zzeO(zzJ);
            zzjx.zzaah().zzv(intent);
        } else if ("gcm.googleapis.com/refresh".equals(intent.getStringExtra("from"))) {
            zzjx.zzaag().zzeO(zzJ);
            zza(intent, false, true);
        } else if ("RST".equals(stringExtra)) {
            zzjx.zzGu();
            zza(intent, true, true);
        } else if ("RST_FULL".equals(stringExtra)) {
            if (!zzjx.zzaag().isEmpty()) {
                zzjx.zzGu();
                zzjx.zzaag().zzGA();
                zza(intent, true, true);
            }
        } else if ("SYNC".equals(stringExtra)) {
            zzjx.zzaag().zzeO(zzJ);
            zza(intent, false, true);
        } else if ("PING".equals(stringExtra)) {
            zza(zzjx.zzaah(), intent.getExtras());
        }
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void zzm(android.content.Intent r5) {
        /*
        r4 = this;
        r1 = 0;
        r0 = r5.getAction();
        if (r0 != 0) goto L_0x0009;
    L_0x0007:
        r0 = "";
    L_0x0009:
        r2 = -1;
        r3 = r0.hashCode();
        switch(r3) {
            case -1737547627: goto L_0x0019;
            default: goto L_0x0011;
        };
    L_0x0011:
        r0 = r2;
    L_0x0012:
        switch(r0) {
            case 0: goto L_0x0023;
            default: goto L_0x0015;
        };
    L_0x0015:
        r4.zzI(r5);
    L_0x0018:
        return;
    L_0x0019:
        r3 = "ACTION_TOKEN_REFRESH_RETRY";
        r0 = r0.equals(r3);
        if (r0 == 0) goto L_0x0011;
    L_0x0021:
        r0 = r1;
        goto L_0x0012;
    L_0x0023:
        r4.zza(r5, r1, r1);
        goto L_0x0018;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.firebase.iid.FirebaseInstanceIdService.zzm(android.content.Intent):void");
    }
}
