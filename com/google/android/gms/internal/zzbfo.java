package com.google.android.gms.internal;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import com.google.android.gms.common.internal.zzac;
import com.google.android.gms.common.util.zzo;
import java.io.ByteArrayOutputStream;
import java.io.FileNotFoundException;
import java.io.InputStream;
import java.io.OutputStream;

public class zzbfo implements Runnable {
    private final Context mContext;
    private final zzbfh zzbJV;
    private final zzbfd zzbKu;
    private final zzbfn zzbKv;
    private final zzbfk zzbKw;

    public zzbfo(Context context, zzbfh com_google_android_gms_internal_zzbfh, zzbfd com_google_android_gms_internal_zzbfd) {
        this(context, com_google_android_gms_internal_zzbfh, com_google_android_gms_internal_zzbfd, new zzbfn(), new zzbfk());
    }

    zzbfo(Context context, zzbfh com_google_android_gms_internal_zzbfh, zzbfd com_google_android_gms_internal_zzbfd, zzbfn com_google_android_gms_internal_zzbfn, zzbfk com_google_android_gms_internal_zzbfk) {
        this.mContext = (Context) zzac.zzw(context);
        this.zzbKu = (zzbfd) zzac.zzw(com_google_android_gms_internal_zzbfd);
        this.zzbJV = com_google_android_gms_internal_zzbfh;
        this.zzbKv = com_google_android_gms_internal_zzbfn;
        this.zzbKw = com_google_android_gms_internal_zzbfk;
    }

    public void run() {
        zzgq();
    }

    boolean zzRq() {
        if (!zzbV("android.permission.INTERNET")) {
            zzayx.e("Missing android.permission.INTERNET. Please add the following declaration to your AndroidManifest.xml: <uses-permission android:name=\"android.permission.INTERNET\" />");
            return false;
        } else if (zzbV("android.permission.ACCESS_NETWORK_STATE")) {
            NetworkInfo activeNetworkInfo = ((ConnectivityManager) this.mContext.getSystemService("connectivity")).getActiveNetworkInfo();
            if (activeNetworkInfo != null && activeNetworkInfo.isConnected()) {
                return true;
            }
            zzayx.zzbe("No network connectivity - Offline");
            return false;
        } else {
            zzayx.e("Missing android.permission.ACCESS_NETWORK_STATE. Please add the following declaration to your AndroidManifest.xml: <uses-permission android:name=\"android.permission.ACCESS_NETWORK_STATE\" />");
            return false;
        }
    }

    boolean zzbV(String str) {
        return this.mContext.getPackageManager().checkPermission(str, this.mContext.getPackageName()) == 0;
    }

    void zzgq() {
        if (zzRq()) {
            String zzb;
            String valueOf;
            zzayx.v("Starting to load resource from Network.");
            zzbfm zzRp = this.zzbKv.zzRp();
            InputStream inputStream = null;
            String str;
            try {
                zzb = this.zzbKw.zzb(this.zzbJV.zzRh());
                str = "Loading resource from ";
                valueOf = String.valueOf(zzb);
                zzayx.v(valueOf.length() != 0 ? str.concat(valueOf) : new String(str));
                inputStream = zzRp.zzia(zzb);
            } catch (FileNotFoundException e) {
                valueOf = "NetworkLoader: No data was retrieved from the given url: ";
                String valueOf2 = String.valueOf(zzb);
                zzayx.e(valueOf2.length() != 0 ? valueOf.concat(valueOf2) : new String(valueOf));
                this.zzbKu.zzw(2, 0);
                zzRp.close();
                return;
            } catch (zzbfq e2) {
                str = "NetworkLoader: Error when loading resource for url: ";
                valueOf = String.valueOf(zzb);
                zzayx.e(valueOf.length() != 0 ? str.concat(valueOf) : new String(str));
                this.zzbKu.zzw(3, 0);
            } catch (Throwable e3) {
                valueOf = String.valueOf(e3.getMessage());
                zzayx.zzb(new StringBuilder((String.valueOf(zzb).length() + 54) + String.valueOf(valueOf).length()).append("NetworkLoader: Error when loading resource from url: ").append(zzb).append(" ").append(valueOf).toString(), e3);
                this.zzbKu.zzw(1, 0);
                zzRp.close();
                return;
            } catch (Throwable th) {
                zzRp.close();
            }
            try {
                OutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                zzo.zza(inputStream, byteArrayOutputStream);
                this.zzbKu.zzM(byteArrayOutputStream.toByteArray());
                zzRp.close();
                return;
            } catch (Throwable e32) {
                valueOf = String.valueOf(e32.getMessage());
                zzayx.zzb(new StringBuilder((String.valueOf(zzb).length() + 66) + String.valueOf(valueOf).length()).append("NetworkLoader: Error when parsing downloaded resources from url: ").append(zzb).append(" ").append(valueOf).toString(), e32);
                this.zzbKu.zzw(2, 0);
                zzRp.close();
                return;
            }
        }
        this.zzbKu.zzw(0, 0);
    }
}
