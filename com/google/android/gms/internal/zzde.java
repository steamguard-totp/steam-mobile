package com.google.android.gms.internal;

import android.util.Base64OutputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.Iterator;
import java.util.Locale;
import java.util.PriorityQueue;

@zzmb
public class zzde {
    private final int zzyc;
    private final int zzyd;
    private final int zzye;
    private final zzdd zzyf = new zzdg();

    static class zza {
        ByteArrayOutputStream zzyg = new ByteArrayOutputStream(4096);
        Base64OutputStream zzyh = new Base64OutputStream(this.zzyg, 10);

        public String toString() {
            String byteArrayOutputStream;
            try {
                this.zzyh.close();
            } catch (Throwable e) {
                zzpy.zzb("HashManager: Unable to convert to Base64.", e);
            }
            try {
                this.zzyg.close();
                byteArrayOutputStream = this.zzyg.toString();
            } catch (Throwable e2) {
                zzpy.zzb("HashManager: Unable to convert to Base64.", e2);
                byteArrayOutputStream = "";
            } finally {
                this.zzyg = null;
                this.zzyh = null;
            }
            return byteArrayOutputStream;
        }

        public void write(byte[] bArr) throws IOException {
            this.zzyh.write(bArr);
        }
    }

    public zzde(int i) {
        this.zzyd = i;
        this.zzyc = 6;
        this.zzye = 0;
    }

    String zzG(String str) {
        String[] split = str.split("\n");
        if (split.length == 0) {
            return "";
        }
        zza zzep = zzep();
        PriorityQueue priorityQueue = new PriorityQueue(this.zzyd, new Comparator<com.google.android.gms.internal.zzdh.zza>(this) {
            public /* synthetic */ int compare(Object obj, Object obj2) {
                return zza((com.google.android.gms.internal.zzdh.zza) obj, (com.google.android.gms.internal.zzdh.zza) obj2);
            }

            public int zza(com.google.android.gms.internal.zzdh.zza com_google_android_gms_internal_zzdh_zza, com.google.android.gms.internal.zzdh.zza com_google_android_gms_internal_zzdh_zza2) {
                int i = com_google_android_gms_internal_zzdh_zza.zzyk - com_google_android_gms_internal_zzdh_zza2.zzyk;
                return i != 0 ? i : (int) (com_google_android_gms_internal_zzdh_zza.value - com_google_android_gms_internal_zzdh_zza2.value);
            }
        });
        for (String zzI : split) {
            String[] zzI2 = zzdf.zzI(zzI);
            if (zzI2.length != 0) {
                zzdh.zza(zzI2, this.zzyd, this.zzyc, priorityQueue);
            }
        }
        Iterator it = priorityQueue.iterator();
        while (it.hasNext()) {
            try {
                zzep.write(this.zzyf.zzF(((com.google.android.gms.internal.zzdh.zza) it.next()).zzyj));
            } catch (Throwable e) {
                zzpy.zzb("Error while writing hash to byteStream", e);
            }
        }
        return zzep.toString();
    }

    public String zza(ArrayList<String> arrayList) {
        StringBuffer stringBuffer = new StringBuffer();
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            stringBuffer.append(((String) it.next()).toLowerCase(Locale.US));
            stringBuffer.append('\n');
        }
        return zzG(stringBuffer.toString());
    }

    zza zzep() {
        return new zza();
    }
}
