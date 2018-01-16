package com.google.android.gms.internal;

import android.content.Context;
import android.net.Uri;
import android.net.Uri.Builder;
import android.text.TextUtils;
import com.google.android.gms.ads.internal.zzv;
import com.google.android.gms.common.util.zzo;
import com.google.android.gms.internal.zzpp.zza;
import java.io.InputStream;
import java.util.concurrent.TimeUnit;

@zzmb
public class zzpm {
    private String zzXi = "";
    private String zzXj = "";
    private boolean zzXk = false;
    private final Object zzrN = new Object();

    private Uri zze(Context context, String str, String str2) {
        Builder buildUpon = Uri.parse(str).buildUpon();
        buildUpon.appendQueryParameter("linkedDeviceId", zzM(context));
        buildUpon.appendQueryParameter("adSlotPath", str2);
        return buildUpon.build();
    }

    private void zzo(Context context, String str) {
        zzv.zzcJ().zza(context, zze(context, (String) zzfx.zzES.get(), str));
    }

    public void zzI(boolean z) {
        synchronized (this.zzrN) {
            this.zzXk = z;
        }
    }

    public String zzM(Context context) {
        String str;
        synchronized (this.zzrN) {
            if (TextUtils.isEmpty(this.zzXi)) {
                this.zzXi = zzv.zzcJ().zzi(context, "debug_signals_id.txt");
                if (TextUtils.isEmpty(this.zzXi)) {
                    this.zzXi = zzv.zzcJ().zzkk();
                    zzv.zzcJ().zzd(context, "debug_signals_id.txt", this.zzXi);
                }
            }
            str = this.zzXi;
        }
        return str;
    }

    public void zza(Context context, String str, String str2, String str3) {
        Builder buildUpon = zze(context, (String) zzfx.zzEV.get(), str3).buildUpon();
        buildUpon.appendQueryParameter("debugData", str2);
        zzv.zzcJ().zzc(context, str, buildUpon.build().toString());
    }

    public void zzba(String str) {
        synchronized (this.zzrN) {
            this.zzXj = str;
        }
    }

    public void zzj(Context context, String str) {
        if (zzl(context, str)) {
            zzpy.zzbc("Device is linked for in app preview.");
        } else {
            zzo(context, str);
        }
    }

    public void zzk(Context context, String str) {
        if (zzm(context, str)) {
            zzpy.zzbc("Device is linked for debug signals.");
        } else {
            zzo(context, str);
        }
    }

    public String zzky() {
        String str;
        synchronized (this.zzrN) {
            str = this.zzXj;
        }
        return str;
    }

    public boolean zzkz() {
        boolean z;
        synchronized (this.zzrN) {
            z = this.zzXk;
        }
        return z;
    }

    boolean zzl(Context context, String str) {
        Object zzn = zzn(context, zze(context, (String) zzfx.zzET.get(), str).toString());
        if (TextUtils.isEmpty(zzn)) {
            zzpy.zzbc("Not linked for in app preview.");
            return false;
        }
        zzba(zzn.trim());
        return true;
    }

    boolean zzm(Context context, String str) {
        Object zzn = zzn(context, zze(context, (String) zzfx.zzEU.get(), str).toString());
        if (TextUtils.isEmpty(zzn)) {
            zzpy.zzbc("Not linked for debug signals.");
            return false;
        }
        boolean parseBoolean = Boolean.parseBoolean(zzn.trim());
        zzI(parseBoolean);
        return parseBoolean;
    }

    protected String zzn(Context context, final String str) {
        Throwable th;
        String str2;
        String valueOf;
        zzqf zza = new zzpp(context).zza(str, new zza<String>(this) {
            public /* synthetic */ Object zzh(InputStream inputStream) {
                return zzi(inputStream);
            }

            public String zzi(InputStream inputStream) {
                String str;
                try {
                    str = new String(zzo.zza(inputStream, true), "UTF-8");
                    String str2 = str;
                    zzpy.zzbc(new StringBuilder((String.valueOf(str2).length() + 49) + String.valueOf(str).length()).append("Response received from server. \nURL: ").append(str2).append("\n Response: ").append(str).toString());
                    return str;
                } catch (Throwable e) {
                    Throwable th = e;
                    String str3 = "Error connecting to url: ";
                    str = String.valueOf(str);
                    zzpy.zzc(str.length() != 0 ? str3.concat(str) : new String(str3), th);
                    return null;
                }
            }

            public /* synthetic */ Object zziT() {
                return zzkA();
            }

            public String zzkA() {
                String str = "Error getting a response from: ";
                String valueOf = String.valueOf(str);
                zzpy.zzbe(valueOf.length() != 0 ? str.concat(valueOf) : new String(str));
                return null;
            }
        });
        try {
            return (String) zza.get((long) ((Integer) zzfx.zzEW.get()).intValue(), TimeUnit.MILLISECONDS);
        } catch (Throwable e) {
            th = e;
            str2 = "Timeout while retriving a response from: ";
            valueOf = String.valueOf(str);
            zzpy.zzb(valueOf.length() != 0 ? str2.concat(valueOf) : new String(str2), th);
            zza.cancel(true);
        } catch (Throwable e2) {
            th = e2;
            str2 = "Interrupted while retriving a response from: ";
            valueOf = String.valueOf(str);
            zzpy.zzb(valueOf.length() != 0 ? str2.concat(valueOf) : new String(str2), th);
            zza.cancel(true);
        } catch (Throwable e22) {
            th = e22;
            String str3 = "Error retriving a response from: ";
            valueOf = String.valueOf(str);
            zzpy.zzb(valueOf.length() != 0 ? str3.concat(valueOf) : new String(str3), th);
        }
        return null;
    }
}
