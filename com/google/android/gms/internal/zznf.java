package com.google.android.gms.internal;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.content.pm.ResolveInfo;
import android.content.res.Resources;
import android.media.AudioManager;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.Uri;
import android.os.Build;
import android.os.Build.VERSION;
import android.telephony.TelephonyManager;
import android.util.DisplayMetrics;
import com.google.android.gms.ads.internal.zzv;
import com.google.android.gms.common.util.zzi;
import java.util.Locale;

@zzmb
public final class zznf {
    public final int zzRn;
    public final int zzRo;
    public final int zzUa;
    public final boolean zzUb;
    public final boolean zzUc;
    public final String zzUd;
    public final String zzUe;
    public final boolean zzUf;
    public final boolean zzUg;
    public final boolean zzUh;
    public final boolean zzUi;
    public final String zzUj;
    public final String zzUk;
    public final int zzUl;
    public final int zzUm;
    public final int zzUn;
    public final int zzUo;
    public final int zzUp;
    public final int zzUq;
    public final double zzUr;
    public final boolean zzUs;
    public final boolean zzUt;
    public final int zzUu;
    public final String zzUv;
    public final boolean zzUw;
    public final float zzxa;

    public static final class zza {
        private int zzRn;
        private int zzRo;
        private int zzUa;
        private boolean zzUb;
        private boolean zzUc;
        private String zzUd;
        private String zzUe;
        private boolean zzUf;
        private boolean zzUg;
        private boolean zzUh;
        private boolean zzUi;
        private String zzUj;
        private String zzUk;
        private int zzUl;
        private int zzUm;
        private int zzUn;
        private int zzUo;
        private int zzUp;
        private int zzUq;
        private double zzUr;
        private boolean zzUs;
        private boolean zzUt;
        private int zzUu;
        private String zzUv;
        private boolean zzUw;
        private float zzxa;

        public zza(Context context) {
            boolean z = true;
            PackageManager packageManager = context.getPackageManager();
            zzs(context);
            zza(context, packageManager);
            zzt(context);
            Locale locale = Locale.getDefault();
            this.zzUb = zza(packageManager, "geo:0,0?q=donuts") != null;
            if (zza(packageManager, "http://www.google.com") == null) {
                z = false;
            }
            this.zzUc = z;
            this.zzUe = locale.getCountry();
            this.zzUf = zzeh.zzeO().zzkI();
            this.zzUg = zzi.zzaK(context);
            this.zzUj = locale.getLanguage();
            this.zzUk = zza(packageManager);
            Resources resources = context.getResources();
            if (resources != null) {
                DisplayMetrics displayMetrics = resources.getDisplayMetrics();
                if (displayMetrics != null) {
                    this.zzxa = displayMetrics.density;
                    this.zzRn = displayMetrics.widthPixels;
                    this.zzRo = displayMetrics.heightPixels;
                }
            }
        }

        public zza(Context context, zznf com_google_android_gms_internal_zznf) {
            PackageManager packageManager = context.getPackageManager();
            zzs(context);
            zza(context, packageManager);
            zzt(context);
            zzu(context);
            this.zzUb = com_google_android_gms_internal_zznf.zzUb;
            this.zzUc = com_google_android_gms_internal_zznf.zzUc;
            this.zzUe = com_google_android_gms_internal_zznf.zzUe;
            this.zzUf = com_google_android_gms_internal_zznf.zzUf;
            this.zzUg = com_google_android_gms_internal_zznf.zzUg;
            this.zzUj = com_google_android_gms_internal_zznf.zzUj;
            this.zzUk = com_google_android_gms_internal_zznf.zzUk;
            this.zzxa = com_google_android_gms_internal_zznf.zzxa;
            this.zzRn = com_google_android_gms_internal_zznf.zzRn;
            this.zzRo = com_google_android_gms_internal_zznf.zzRo;
        }

        private static ResolveInfo zza(PackageManager packageManager, String str) {
            return packageManager.resolveActivity(new Intent("android.intent.action.VIEW", Uri.parse(str)), 65536);
        }

        private static String zza(PackageManager packageManager) {
            String str = null;
            ResolveInfo zza = zza(packageManager, "market://details?id=com.google.android.gms.ads");
            if (zza != null) {
                ActivityInfo activityInfo = zza.activityInfo;
                if (activityInfo != null) {
                    try {
                        PackageInfo packageInfo = packageManager.getPackageInfo(activityInfo.packageName, 0);
                        if (packageInfo != null) {
                            int i = packageInfo.versionCode;
                            String valueOf = String.valueOf(activityInfo.packageName);
                            str = new StringBuilder(String.valueOf(valueOf).length() + 12).append(i).append(".").append(valueOf).toString();
                        }
                    } catch (NameNotFoundException e) {
                    }
                }
            }
            return str;
        }

        @TargetApi(16)
        private void zza(Context context, PackageManager packageManager) {
            TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService("phone");
            ConnectivityManager connectivityManager = (ConnectivityManager) context.getSystemService("connectivity");
            this.zzUd = telephonyManager.getNetworkOperator();
            this.zzUn = telephonyManager.getNetworkType();
            this.zzUo = telephonyManager.getPhoneType();
            this.zzUm = -2;
            this.zzUt = false;
            this.zzUu = -1;
            if (zzv.zzcJ().zza(packageManager, context.getPackageName(), "android.permission.ACCESS_NETWORK_STATE")) {
                NetworkInfo activeNetworkInfo = connectivityManager.getActiveNetworkInfo();
                if (activeNetworkInfo != null) {
                    this.zzUm = activeNetworkInfo.getType();
                    this.zzUu = activeNetworkInfo.getDetailedState().ordinal();
                } else {
                    this.zzUm = -1;
                }
                if (VERSION.SDK_INT >= 16) {
                    this.zzUt = connectivityManager.isActiveNetworkMetered();
                }
            }
        }

        private void zzs(Context context) {
            AudioManager zzG = zzv.zzcJ().zzG(context);
            if (zzG != null) {
                try {
                    this.zzUa = zzG.getMode();
                    this.zzUh = zzG.isMusicActive();
                    this.zzUi = zzG.isSpeakerphoneOn();
                    this.zzUl = zzG.getStreamVolume(3);
                    this.zzUp = zzG.getRingerMode();
                    this.zzUq = zzG.getStreamVolume(2);
                    return;
                } catch (Throwable th) {
                    zzv.zzcN().zza(th, "DeviceInfo.gatherAudioInfo");
                }
            }
            this.zzUa = -2;
            this.zzUh = false;
            this.zzUi = false;
            this.zzUl = 0;
            this.zzUp = 0;
            this.zzUq = 0;
        }

        private void zzt(Context context) {
            boolean z = false;
            Intent registerReceiver = context.registerReceiver(null, new IntentFilter("android.intent.action.BATTERY_CHANGED"));
            if (registerReceiver != null) {
                int intExtra = registerReceiver.getIntExtra("status", -1);
                this.zzUr = (double) (((float) registerReceiver.getIntExtra("level", -1)) / ((float) registerReceiver.getIntExtra("scale", -1)));
                if (intExtra == 2 || intExtra == 5) {
                    z = true;
                }
                this.zzUs = z;
                return;
            }
            this.zzUr = -1.0d;
            this.zzUs = false;
        }

        private void zzu(Context context) {
            this.zzUv = Build.FINGERPRINT;
            this.zzUw = zzgl.zzn(context);
        }

        public zznf zzjn() {
            return new zznf(this.zzUa, this.zzUb, this.zzUc, this.zzUd, this.zzUe, this.zzUf, this.zzUg, this.zzUh, this.zzUi, this.zzUj, this.zzUk, this.zzUl, this.zzUm, this.zzUn, this.zzUo, this.zzUp, this.zzUq, this.zzxa, this.zzRn, this.zzRo, this.zzUr, this.zzUs, this.zzUt, this.zzUu, this.zzUv, this.zzUw);
        }
    }

    zznf(int i, boolean z, boolean z2, String str, String str2, boolean z3, boolean z4, boolean z5, boolean z6, String str3, String str4, int i2, int i3, int i4, int i5, int i6, int i7, float f, int i8, int i9, double d, boolean z7, boolean z8, int i10, String str5, boolean z9) {
        this.zzUa = i;
        this.zzUb = z;
        this.zzUc = z2;
        this.zzUd = str;
        this.zzUe = str2;
        this.zzUf = z3;
        this.zzUg = z4;
        this.zzUh = z5;
        this.zzUi = z6;
        this.zzUj = str3;
        this.zzUk = str4;
        this.zzUl = i2;
        this.zzUm = i3;
        this.zzUn = i4;
        this.zzUo = i5;
        this.zzUp = i6;
        this.zzUq = i7;
        this.zzxa = f;
        this.zzRn = i8;
        this.zzRo = i9;
        this.zzUr = d;
        this.zzUs = z7;
        this.zzUt = z8;
        this.zzUu = i10;
        this.zzUv = str5;
        this.zzUw = z9;
    }
}
