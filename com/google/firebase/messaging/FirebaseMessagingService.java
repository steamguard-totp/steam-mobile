package com.google.firebase.messaging;

import android.app.PendingIntent;
import android.app.PendingIntent.CanceledException;
import android.content.Intent;
import android.os.Bundle;
import android.util.Log;
import com.google.firebase.iid.zzb;
import com.google.firebase.iid.zzg;
import java.util.Iterator;

public class FirebaseMessagingService extends zzb {
    static void zzD(Bundle bundle) {
        Iterator it = bundle.keySet().iterator();
        while (it.hasNext()) {
            String str = (String) it.next();
            if (str != null && str.startsWith("google.c.")) {
                it.remove();
            }
        }
    }

    private void zzK(Intent intent) {
        PendingIntent pendingIntent = (PendingIntent) intent.getParcelableExtra("pending_intent");
        if (pendingIntent != null) {
            try {
                pendingIntent.send();
            } catch (CanceledException e) {
                Log.e("FirebaseMessaging", "Notification pending intent canceled");
            }
        }
        if (zzW(intent.getExtras())) {
            zzb.zzj(this, intent);
        }
    }

    static boolean zzW(Bundle bundle) {
        return bundle == null ? false : "1".equals(bundle.getString("google.c.a.e"));
    }

    private void zzn(Intent intent) {
        String stringExtra = intent.getStringExtra("message_type");
        if (stringExtra == null) {
            stringExtra = "gcm";
        }
        Object obj = -1;
        switch (stringExtra.hashCode()) {
            case -2062414158:
                if (stringExtra.equals("deleted_messages")) {
                    obj = 1;
                    break;
                }
                break;
            case 102161:
                if (stringExtra.equals("gcm")) {
                    obj = null;
                    break;
                }
                break;
            case 814694033:
                if (stringExtra.equals("send_error")) {
                    obj = 3;
                    break;
                }
                break;
            case 814800675:
                if (stringExtra.equals("send_event")) {
                    obj = 2;
                    break;
                }
                break;
        }
        switch (obj) {
            case null:
                if (zzW(intent.getExtras())) {
                    zzb.zzi(this, intent);
                }
                zzo(intent);
                return;
            case 1:
                return;
            case 2:
                intent.getStringExtra("google.message_id");
                return;
            case 3:
                zzp(intent);
                SendException sendException = new SendException(intent.getStringExtra("error"));
                return;
            default:
                String str = "FirebaseMessaging";
                String str2 = "Received message with unknown type: ";
                stringExtra = String.valueOf(stringExtra);
                Log.w(str, stringExtra.length() != 0 ? str2.concat(stringExtra) : new String(str2));
                return;
        }
    }

    private void zzo(Intent intent) {
        Bundle extras = intent.getExtras();
        extras.remove("android.support.content.wakelockid");
        if (zza.zzE(extras)) {
            if (!zza.zzbc(this)) {
                zza.zzca(this).zzT(extras);
                return;
            } else if (zzW(extras)) {
                zzb.zzl(this, intent);
            }
        }
        RemoteMessage remoteMessage = new RemoteMessage(extras);
    }

    private String zzp(Intent intent) {
        String stringExtra = intent.getStringExtra("google.message_id");
        return stringExtra == null ? intent.getStringExtra("message_id") : stringExtra;
    }

    protected Intent zzF(Intent intent) {
        return zzg.zzaaj().zzaal();
    }

    public boolean zzH(Intent intent) {
        if (!"com.google.firebase.messaging.NOTIFICATION_OPEN".equals(intent.getAction())) {
            return false;
        }
        zzK(intent);
        return true;
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void zzm(android.content.Intent r4) {
        /*
        r3 = this;
        r0 = r4.getAction();
        if (r0 != 0) goto L_0x0008;
    L_0x0006:
        r0 = "";
    L_0x0008:
        r1 = -1;
        r2 = r0.hashCode();
        switch(r2) {
            case 75300319: goto L_0x0032;
            case 366519424: goto L_0x0028;
            default: goto L_0x0010;
        };
    L_0x0010:
        r0 = r1;
    L_0x0011:
        switch(r0) {
            case 0: goto L_0x003c;
            case 1: goto L_0x0040;
            default: goto L_0x0014;
        };
    L_0x0014:
        r0 = "Unknown intent action: ";
        r1 = r4.getAction();
        r1 = java.lang.String.valueOf(r1);
        r2 = r1.length();
        if (r2 == 0) goto L_0x004e;
    L_0x0024:
        r0.concat(r1);
    L_0x0027:
        return;
    L_0x0028:
        r2 = "com.google.android.c2dm.intent.RECEIVE";
        r0 = r0.equals(r2);
        if (r0 == 0) goto L_0x0010;
    L_0x0030:
        r0 = 0;
        goto L_0x0011;
    L_0x0032:
        r2 = "com.google.firebase.messaging.NOTIFICATION_DISMISS";
        r0 = r0.equals(r2);
        if (r0 == 0) goto L_0x0010;
    L_0x003a:
        r0 = 1;
        goto L_0x0011;
    L_0x003c:
        r3.zzn(r4);
        goto L_0x0027;
    L_0x0040:
        r0 = r4.getExtras();
        r0 = zzW(r0);
        if (r0 == 0) goto L_0x0027;
    L_0x004a:
        com.google.firebase.messaging.zzb.zzk(r3, r4);
        goto L_0x0027;
    L_0x004e:
        r1 = new java.lang.String;
        r1.<init>(r0);
        goto L_0x0027;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.firebase.messaging.FirebaseMessagingService.zzm(android.content.Intent):void");
    }
}
