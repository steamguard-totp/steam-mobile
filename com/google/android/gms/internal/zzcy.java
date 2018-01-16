package com.google.android.gms.internal;

import com.google.android.gms.ads.internal.zzv;
import java.util.ArrayList;
import java.util.Iterator;

@zzmb
public class zzcy {
    private final Object zzrN = new Object();
    private final int zzxe;
    private final int zzxf;
    private final int zzxg;
    private final zzde zzxh;
    private final zzdj zzxi;
    private ArrayList<String> zzxj = new ArrayList();
    private ArrayList<String> zzxk = new ArrayList();
    private ArrayList<zzdc> zzxl = new ArrayList();
    private int zzxm = 0;
    private int zzxn = 0;
    private int zzxo = 0;
    private int zzxp;
    private String zzxq = "";
    private String zzxr = "";
    private String zzxs = "";

    public zzcy(int i, int i2, int i3, int i4, int i5, int i6, int i7) {
        this.zzxe = i;
        this.zzxf = i2;
        this.zzxg = i3;
        this.zzxh = new zzde(i4);
        this.zzxi = new zzdj(i5, i6, i7);
    }

    private String zza(ArrayList<String> arrayList, int i) {
        if (arrayList.isEmpty()) {
            return "";
        }
        StringBuffer stringBuffer = new StringBuffer();
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            stringBuffer.append((String) it.next());
            stringBuffer.append(' ');
            if (stringBuffer.length() > i) {
                break;
            }
        }
        stringBuffer.deleteCharAt(stringBuffer.length() - 1);
        String stringBuffer2 = stringBuffer.toString();
        return stringBuffer2.length() >= i ? stringBuffer2.substring(0, i) : stringBuffer2;
    }

    private void zzc(String str, boolean z, float f, float f2, float f3, float f4) {
        if (str != null && str.length() >= this.zzxg) {
            synchronized (this.zzrN) {
                this.zzxj.add(str);
                this.zzxm += str.length();
                if (z) {
                    this.zzxk.add(str);
                    this.zzxl.add(new zzdc(f, f2, f3, f4, this.zzxk.size() - 1));
                }
            }
        }
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof zzcy)) {
            return false;
        }
        if (obj == this) {
            return true;
        }
        zzcy com_google_android_gms_internal_zzcy = (zzcy) obj;
        return com_google_android_gms_internal_zzcy.zzdV() != null && com_google_android_gms_internal_zzcy.zzdV().equals(zzdV());
    }

    public int getScore() {
        return this.zzxp;
    }

    public int hashCode() {
        return zzdV().hashCode();
    }

    public String toString() {
        int i = this.zzxn;
        int i2 = this.zzxp;
        int i3 = this.zzxm;
        String valueOf = String.valueOf(zza(this.zzxj, 100));
        String valueOf2 = String.valueOf(zza(this.zzxk, 100));
        String str = this.zzxq;
        String str2 = this.zzxr;
        String str3 = this.zzxs;
        return new StringBuilder(((((String.valueOf(valueOf).length() + 165) + String.valueOf(valueOf2).length()) + String.valueOf(str).length()) + String.valueOf(str2).length()) + String.valueOf(str3).length()).append("ActivityContent fetchId: ").append(i).append(" score:").append(i2).append(" total_length:").append(i3).append("\n text: ").append(valueOf).append("\n viewableText").append(valueOf2).append("\n signture: ").append(str).append("\n viewableSignture: ").append(str2).append("\n viewableSignatureForVertical: ").append(str3).toString();
    }

    int zza(int i, int i2) {
        return (this.zzxe * i) + (this.zzxf * i2);
    }

    public void zza(String str, boolean z, float f, float f2, float f3, float f4) {
        zzc(str, z, f, f2, f3, f4);
        synchronized (this.zzrN) {
            if (this.zzxo < 0) {
                zzpy.zzbc("ActivityContent: negative number of WebViews.");
            }
            zzeb();
        }
    }

    public void zzb(String str, boolean z, float f, float f2, float f3, float f4) {
        zzc(str, z, f, f2, f3, f4);
    }

    public boolean zzdU() {
        boolean z;
        synchronized (this.zzrN) {
            z = this.zzxo == 0;
        }
        return z;
    }

    public String zzdV() {
        return this.zzxq;
    }

    public String zzdW() {
        return this.zzxr;
    }

    public String zzdX() {
        return this.zzxs;
    }

    public void zzdY() {
        synchronized (this.zzrN) {
            this.zzxp -= 100;
        }
    }

    public void zzdZ() {
        synchronized (this.zzrN) {
            this.zzxo--;
        }
    }

    public void zzea() {
        synchronized (this.zzrN) {
            this.zzxo++;
        }
    }

    public void zzeb() {
        synchronized (this.zzrN) {
            int zza = zza(this.zzxm, this.zzxn);
            if (zza > this.zzxp) {
                this.zzxp = zza;
                if (((Boolean) zzfx.zzBU.get()).booleanValue() && !zzv.zzcN().zzjJ()) {
                    this.zzxq = this.zzxh.zza(this.zzxj);
                    this.zzxr = this.zzxh.zza(this.zzxk);
                }
                if (((Boolean) zzfx.zzBW.get()).booleanValue() && !zzv.zzcN().zzjK()) {
                    this.zzxs = this.zzxi.zza(this.zzxk, this.zzxl);
                }
            }
        }
    }

    int zzec() {
        return this.zzxm;
    }

    public void zzn(int i) {
        this.zzxn = i;
    }
}
