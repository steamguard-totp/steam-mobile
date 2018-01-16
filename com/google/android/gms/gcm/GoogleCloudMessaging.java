package com.google.android.gms.gcm;

import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.Messenger;
import android.util.Log;
import com.google.android.gms.iid.InstanceID;
import com.google.android.gms.iid.zzc;
import java.io.IOException;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;

public class GoogleCloudMessaging {
    public static int zzbfW = 5000000;
    public static int zzbfX = 6500000;
    public static int zzbfY = 7000000;
    static GoogleCloudMessaging zzbfZ;
    private static final AtomicInteger zzbgc = new AtomicInteger(1);
    private PendingIntent zzbga;
    private Map<String, Handler> zzbgb = Collections.synchronizedMap(new HashMap());
    private final BlockingQueue<Intent> zzbgd = new LinkedBlockingQueue();
    final Messenger zzbge = new Messenger(new Handler(this, Looper.getMainLooper()) {
        final /* synthetic */ GoogleCloudMessaging zzbgf;

        public void handleMessage(Message message) {
            if (message == null || !(message.obj instanceof Intent)) {
                Log.w("GCM", "Dropping invalid message");
            }
            Intent intent = (Intent) message.obj;
            if ("com.google.android.c2dm.intent.REGISTRATION".equals(intent.getAction())) {
                this.zzbgf.zzbgd.add(intent);
            } else if (!this.zzbgf.zzq(intent)) {
                intent.setPackage(this.zzbgf.zzqr.getPackageName());
                this.zzbgf.zzqr.sendBroadcast(intent);
            }
        }
    });
    private Context zzqr;

    public static synchronized GoogleCloudMessaging getInstance(Context context) {
        GoogleCloudMessaging googleCloudMessaging;
        synchronized (GoogleCloudMessaging.class) {
            if (zzbfZ == null) {
                zzbfZ = new GoogleCloudMessaging();
                zzbfZ.zzqr = context.getApplicationContext();
            }
            googleCloudMessaging = zzbfZ;
        }
        return googleCloudMessaging;
    }

    private String zzGe() {
        String valueOf = String.valueOf("google.rpc");
        String valueOf2 = String.valueOf(String.valueOf(zzbgc.getAndIncrement()));
        return valueOf2.length() != 0 ? valueOf.concat(valueOf2) : new String(valueOf);
    }

    static String zza(Intent intent, String str) throws IOException {
        if (intent == null) {
            throw new IOException("SERVICE_NOT_AVAILABLE");
        }
        String stringExtra = intent.getStringExtra(str);
        if (stringExtra != null) {
            return stringExtra;
        }
        stringExtra = intent.getStringExtra("error");
        if (stringExtra != null) {
            throw new IOException(stringExtra);
        }
        throw new IOException("SERVICE_NOT_AVAILABLE");
    }

    public static String zzbd(Context context) {
        return zzc.zzbi(context);
    }

    public static int zzbe(Context context) {
        PackageManager packageManager = context.getPackageManager();
        String zzbd = zzbd(context);
        if (zzbd != null) {
            try {
                PackageInfo packageInfo = packageManager.getPackageInfo(zzbd, 0);
                if (packageInfo != null) {
                    return packageInfo.versionCode;
                }
            } catch (NameNotFoundException e) {
            }
        }
        return -1;
    }

    private boolean zzq(Intent intent) {
        Object stringExtra = intent.getStringExtra("In-Reply-To");
        if (stringExtra == null && intent.hasExtra("error")) {
            stringExtra = intent.getStringExtra("google.message_id");
        }
        if (stringExtra != null) {
            Handler handler = (Handler) this.zzbgb.remove(stringExtra);
            if (handler != null) {
                Message obtain = Message.obtain();
                obtain.obj = intent;
                return handler.sendMessage(obtain);
            }
        }
        return false;
    }

    @Deprecated
    public synchronized String register(String... strArr) throws IOException {
        String zzbd;
        zzbd = zzbd(this.zzqr);
        if (zzbd == null) {
            throw new IOException("SERVICE_NOT_AVAILABLE");
        }
        String zzf = zzf(strArr);
        Bundle bundle = new Bundle();
        if (zzbd.contains(".gsf")) {
            bundle.putString("legacy.sender", zzf);
            zzbd = InstanceID.getInstance(this.zzqr).getToken(zzf, "GCM", bundle);
        } else {
            bundle.putString("sender", zzf);
            zzbd = zza(zzJ(bundle), "registration_id");
        }
        return zzbd;
    }

    @Deprecated
    public synchronized void unregister() throws IOException {
        if (Looper.getMainLooper() == Looper.myLooper()) {
            throw new IOException("MAIN_THREAD");
        }
        InstanceID.getInstance(this.zzqr).deleteInstanceID();
    }

    @Deprecated
    Intent zzJ(Bundle bundle) throws IOException {
        if (Looper.getMainLooper() == Looper.myLooper()) {
            throw new IOException("MAIN_THREAD");
        } else if (zzbe(this.zzqr) < 0) {
            throw new IOException("Google Play Services missing");
        } else {
            if (bundle == null) {
                bundle = new Bundle();
            }
            Intent intent = new Intent("com.google.android.c2dm.intent.REGISTER");
            intent.setPackage(zzbd(this.zzqr));
            zzr(intent);
            intent.putExtra("google.message_id", zzGe());
            intent.putExtras(bundle);
            intent.putExtra("google.messenger", this.zzbge);
            this.zzqr.startService(intent);
            try {
                return (Intent) this.zzbgd.poll(30000, TimeUnit.MILLISECONDS);
            } catch (InterruptedException e) {
                throw new IOException(e.getMessage());
            }
        }
    }

    String zzf(String... strArr) {
        if (strArr == null || strArr.length == 0) {
            throw new IllegalArgumentException("No senderIds");
        }
        StringBuilder stringBuilder = new StringBuilder(strArr[0]);
        for (int i = 1; i < strArr.length; i++) {
            stringBuilder.append(',').append(strArr[i]);
        }
        return stringBuilder.toString();
    }

    synchronized void zzr(Intent intent) {
        if (this.zzbga == null) {
            Intent intent2 = new Intent();
            intent2.setPackage("com.google.example.invalidpackage");
            this.zzbga = PendingIntent.getBroadcast(this.zzqr, 0, intent2, 0);
        }
        intent.putExtra("app", this.zzbga);
    }
}
