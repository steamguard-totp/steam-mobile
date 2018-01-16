package com.google.android.gms.analytics;

import android.net.Uri;
import android.net.Uri.Builder;
import android.text.TextUtils;
import com.google.android.gms.analytics.ecommerce.Product;
import com.google.android.gms.analytics.ecommerce.ProductAction;
import com.google.android.gms.analytics.ecommerce.Promotion;
import com.google.android.gms.common.internal.zzac;
import com.google.android.gms.internal.zzre;
import com.google.android.gms.internal.zzrf;
import com.google.android.gms.internal.zzrg;
import com.google.android.gms.internal.zzrh;
import com.google.android.gms.internal.zzri;
import com.google.android.gms.internal.zzrj;
import com.google.android.gms.internal.zzrk;
import com.google.android.gms.internal.zzrl;
import com.google.android.gms.internal.zzrm;
import com.google.android.gms.internal.zzrn;
import com.google.android.gms.internal.zzro;
import com.google.android.gms.internal.zzrp;
import com.google.android.gms.internal.zzrq;
import com.google.android.gms.internal.zzrt;
import com.google.android.gms.internal.zzrv;
import com.google.android.gms.internal.zzrw;
import com.google.android.gms.internal.zzry;
import com.google.android.gms.internal.zzst;
import com.google.android.gms.internal.zztg;
import java.text.DecimalFormat;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;

public class zzb extends zzrt implements zzi {
    private static DecimalFormat zzaaq;
    private final zzrw zzaam;
    private final String zzaar;
    private final Uri zzaas;
    private final boolean zzaat;
    private final boolean zzaau;

    public zzb(zzrw com_google_android_gms_internal_zzrw, String str) {
        this(com_google_android_gms_internal_zzrw, str, true, false);
    }

    public zzb(zzrw com_google_android_gms_internal_zzrw, String str, boolean z, boolean z2) {
        super(com_google_android_gms_internal_zzrw);
        zzac.zzdv(str);
        this.zzaam = com_google_android_gms_internal_zzrw;
        this.zzaar = str;
        this.zzaat = z;
        this.zzaau = z2;
        this.zzaas = zzbp(this.zzaar);
    }

    private static String zzQ(Map<String, String> map) {
        StringBuilder stringBuilder = new StringBuilder();
        for (Entry entry : map.entrySet()) {
            if (stringBuilder.length() != 0) {
                stringBuilder.append(", ");
            }
            stringBuilder.append((String) entry.getKey());
            stringBuilder.append("=");
            stringBuilder.append((String) entry.getValue());
        }
        return stringBuilder.toString();
    }

    private static void zza(Map<String, String> map, String str, double d) {
        if (d != 0.0d) {
            map.put(str, zzb(d));
        }
    }

    private static void zza(Map<String, String> map, String str, int i, int i2) {
        if (i > 0 && i2 > 0) {
            map.put(str, i + "x" + i2);
        }
    }

    private static void zza(Map<String, String> map, String str, boolean z) {
        if (z) {
            map.put(str, "1");
        }
    }

    static String zzb(double d) {
        if (zzaaq == null) {
            zzaaq = new DecimalFormat("0.######");
        }
        return zzaaq.format(d);
    }

    private static void zzb(Map<String, String> map, String str, String str2) {
        if (!TextUtils.isEmpty(str2)) {
            map.put(str, str2);
        }
    }

    static Uri zzbp(String str) {
        zzac.zzdv(str);
        Builder builder = new Builder();
        builder.scheme("uri");
        builder.authority("google-analytics.com");
        builder.path(str);
        return builder.build();
    }

    public static Map<String, String> zzc(zze com_google_android_gms_analytics_zze) {
        CharSequence zzam;
        Map hashMap = new HashMap();
        zzri com_google_android_gms_internal_zzri = (zzri) com_google_android_gms_analytics_zze.zza(zzri.class);
        if (com_google_android_gms_internal_zzri != null) {
            for (Entry entry : com_google_android_gms_internal_zzri.zzmI().entrySet()) {
                String zzi = zzi(entry.getValue());
                if (zzi != null) {
                    hashMap.put((String) entry.getKey(), zzi);
                }
            }
        }
        zzrn com_google_android_gms_internal_zzrn = (zzrn) com_google_android_gms_analytics_zze.zza(zzrn.class);
        if (com_google_android_gms_internal_zzrn != null) {
            zzb(hashMap, "t", com_google_android_gms_internal_zzrn.zzmT());
            zzb(hashMap, "cid", com_google_android_gms_internal_zzrn.zzlX());
            zzb(hashMap, "uid", com_google_android_gms_internal_zzrn.getUserId());
            zzb(hashMap, "sc", com_google_android_gms_internal_zzrn.zzmW());
            zza(hashMap, "sf", com_google_android_gms_internal_zzrn.zzmY());
            zza(hashMap, "ni", com_google_android_gms_internal_zzrn.zzmX());
            zzb(hashMap, "adid", com_google_android_gms_internal_zzrn.zzmU());
            zza(hashMap, "ate", com_google_android_gms_internal_zzrn.zzmV());
        }
        zzro com_google_android_gms_internal_zzro = (zzro) com_google_android_gms_analytics_zze.zza(zzro.class);
        if (com_google_android_gms_internal_zzro != null) {
            zzb(hashMap, "cd", com_google_android_gms_internal_zzro.zzna());
            zza(hashMap, "a", (double) com_google_android_gms_internal_zzro.zznb());
            zzb(hashMap, "dr", com_google_android_gms_internal_zzro.zznc());
        }
        zzrl com_google_android_gms_internal_zzrl = (zzrl) com_google_android_gms_analytics_zze.zza(zzrl.class);
        if (com_google_android_gms_internal_zzrl != null) {
            zzb(hashMap, "ec", com_google_android_gms_internal_zzrl.getCategory());
            zzb(hashMap, "ea", com_google_android_gms_internal_zzrl.getAction());
            zzb(hashMap, "el", com_google_android_gms_internal_zzrl.getLabel());
            zza(hashMap, "ev", (double) com_google_android_gms_internal_zzrl.getValue());
        }
        zzrf com_google_android_gms_internal_zzrf = (zzrf) com_google_android_gms_analytics_zze.zza(zzrf.class);
        if (com_google_android_gms_internal_zzrf != null) {
            zzb(hashMap, "cn", com_google_android_gms_internal_zzrf.getName());
            zzb(hashMap, "cs", com_google_android_gms_internal_zzrf.getSource());
            zzb(hashMap, "cm", com_google_android_gms_internal_zzrf.zzmA());
            zzb(hashMap, "ck", com_google_android_gms_internal_zzrf.zzmB());
            zzb(hashMap, "cc", com_google_android_gms_internal_zzrf.getContent());
            zzb(hashMap, "ci", com_google_android_gms_internal_zzrf.getId());
            zzb(hashMap, "anid", com_google_android_gms_internal_zzrf.zzmC());
            zzb(hashMap, "gclid", com_google_android_gms_internal_zzrf.zzmD());
            zzb(hashMap, "dclid", com_google_android_gms_internal_zzrf.zzmE());
            zzb(hashMap, "aclid", com_google_android_gms_internal_zzrf.zzmF());
        }
        zzrm com_google_android_gms_internal_zzrm = (zzrm) com_google_android_gms_analytics_zze.zza(zzrm.class);
        if (com_google_android_gms_internal_zzrm != null) {
            zzb(hashMap, "exd", com_google_android_gms_internal_zzrm.getDescription());
            zza(hashMap, "exf", com_google_android_gms_internal_zzrm.zzmS());
        }
        zzrp com_google_android_gms_internal_zzrp = (zzrp) com_google_android_gms_analytics_zze.zza(zzrp.class);
        if (com_google_android_gms_internal_zzrp != null) {
            zzb(hashMap, "sn", com_google_android_gms_internal_zzrp.zznd());
            zzb(hashMap, "sa", com_google_android_gms_internal_zzrp.getAction());
            zzb(hashMap, "st", com_google_android_gms_internal_zzrp.getTarget());
        }
        zzrq com_google_android_gms_internal_zzrq = (zzrq) com_google_android_gms_analytics_zze.zza(zzrq.class);
        if (com_google_android_gms_internal_zzrq != null) {
            zzb(hashMap, "utv", com_google_android_gms_internal_zzrq.zzne());
            zza(hashMap, "utt", (double) com_google_android_gms_internal_zzrq.getTimeInMillis());
            zzb(hashMap, "utc", com_google_android_gms_internal_zzrq.getCategory());
            zzb(hashMap, "utl", com_google_android_gms_internal_zzrq.getLabel());
        }
        zzrg com_google_android_gms_internal_zzrg = (zzrg) com_google_android_gms_analytics_zze.zza(zzrg.class);
        if (com_google_android_gms_internal_zzrg != null) {
            for (Entry entry2 : com_google_android_gms_internal_zzrg.zzmG().entrySet()) {
                zzam = zzc.zzam(((Integer) entry2.getKey()).intValue());
                if (!TextUtils.isEmpty(zzam)) {
                    hashMap.put(zzam, (String) entry2.getValue());
                }
            }
        }
        zzrh com_google_android_gms_internal_zzrh = (zzrh) com_google_android_gms_analytics_zze.zza(zzrh.class);
        if (com_google_android_gms_internal_zzrh != null) {
            for (Entry entry22 : com_google_android_gms_internal_zzrh.zzmH().entrySet()) {
                zzam = zzc.zzao(((Integer) entry22.getKey()).intValue());
                if (!TextUtils.isEmpty(zzam)) {
                    hashMap.put(zzam, zzb(((Double) entry22.getValue()).doubleValue()));
                }
            }
        }
        zzrk com_google_android_gms_internal_zzrk = (zzrk) com_google_android_gms_analytics_zze.zza(zzrk.class);
        if (com_google_android_gms_internal_zzrk != null) {
            ProductAction zzmO = com_google_android_gms_internal_zzrk.zzmO();
            if (zzmO != null) {
                for (Entry entry3 : zzmO.build().entrySet()) {
                    if (((String) entry3.getKey()).startsWith("&")) {
                        hashMap.put(((String) entry3.getKey()).substring(1), (String) entry3.getValue());
                    } else {
                        hashMap.put((String) entry3.getKey(), (String) entry3.getValue());
                    }
                }
            }
            int i = 1;
            for (Promotion zzbL : com_google_android_gms_internal_zzrk.zzmR()) {
                hashMap.putAll(zzbL.zzbL(zzc.zzas(i)));
                i++;
            }
            i = 1;
            for (Product zzbL2 : com_google_android_gms_internal_zzrk.zzmP()) {
                hashMap.putAll(zzbL2.zzbL(zzc.zzaq(i)));
                i++;
            }
            i = 1;
            for (Entry entry222 : com_google_android_gms_internal_zzrk.zzmQ().entrySet()) {
                List<Product> list = (List) entry222.getValue();
                String zzav = zzc.zzav(i);
                int i2 = 1;
                for (Product zzbL22 : list) {
                    String valueOf = String.valueOf(zzav);
                    String valueOf2 = String.valueOf(zzc.zzat(i2));
                    hashMap.putAll(zzbL22.zzbL(valueOf2.length() != 0 ? valueOf.concat(valueOf2) : new String(valueOf)));
                    i2++;
                }
                if (!TextUtils.isEmpty((CharSequence) entry222.getKey())) {
                    String valueOf3 = String.valueOf(zzav);
                    String valueOf4 = String.valueOf("nm");
                    hashMap.put(valueOf4.length() != 0 ? valueOf3.concat(valueOf4) : new String(valueOf3), (String) entry222.getKey());
                }
                i++;
            }
        }
        zzrj com_google_android_gms_internal_zzrj = (zzrj) com_google_android_gms_analytics_zze.zza(zzrj.class);
        if (com_google_android_gms_internal_zzrj != null) {
            zzb(hashMap, "ul", com_google_android_gms_internal_zzrj.getLanguage());
            zza(hashMap, "sd", (double) com_google_android_gms_internal_zzrj.zzmJ());
            zza(hashMap, "sr", com_google_android_gms_internal_zzrj.zzmK(), com_google_android_gms_internal_zzrj.zzmL());
            zza(hashMap, "vp", com_google_android_gms_internal_zzrj.zzmM(), com_google_android_gms_internal_zzrj.zzmN());
        }
        zzre com_google_android_gms_internal_zzre = (zzre) com_google_android_gms_analytics_zze.zza(zzre.class);
        if (com_google_android_gms_internal_zzre != null) {
            zzb(hashMap, "an", com_google_android_gms_internal_zzre.zzmx());
            zzb(hashMap, "aid", com_google_android_gms_internal_zzre.zzjI());
            zzb(hashMap, "aiid", com_google_android_gms_internal_zzre.zzmz());
            zzb(hashMap, "av", com_google_android_gms_internal_zzre.zzmy());
        }
        return hashMap;
    }

    private static String zzi(Object obj) {
        if (obj == null) {
            return null;
        }
        if (obj instanceof String) {
            String str = (String) obj;
            return TextUtils.isEmpty(str) ? null : str;
        } else if (!(obj instanceof Double)) {
            return obj instanceof Boolean ? obj != Boolean.FALSE ? "1" : null : String.valueOf(obj);
        } else {
            Double d = (Double) obj;
            return d.doubleValue() != 0.0d ? zzb(d.doubleValue()) : null;
        }
    }

    public void zzb(zze com_google_android_gms_analytics_zze) {
        zzac.zzw(com_google_android_gms_analytics_zze);
        zzac.zzb(com_google_android_gms_analytics_zze.zzmg(), (Object) "Can't deliver not submitted measurement");
        zzac.zzdo("deliver should be called on worker thread");
        zze zzmb = com_google_android_gms_analytics_zze.zzmb();
        zzrn com_google_android_gms_internal_zzrn = (zzrn) zzmb.zzb(zzrn.class);
        if (TextUtils.isEmpty(com_google_android_gms_internal_zzrn.zzmT())) {
            zznr().zzg(zzc(zzmb), "Ignoring measurement without type");
        } else if (TextUtils.isEmpty(com_google_android_gms_internal_zzrn.zzlX())) {
            zznr().zzg(zzc(zzmb), "Ignoring measurement without client id");
        } else if (!this.zzaam.zznE().getAppOptOut()) {
            double zzmY = com_google_android_gms_internal_zzrn.zzmY();
            if (zztg.zza(zzmY, com_google_android_gms_internal_zzrn.zzlX())) {
                zzb("Sampling enabled. Hit sampled out. sampling rate", Double.valueOf(zzmY));
                return;
            }
            Map zzc = zzc(zzmb);
            zzc.put("v", "1");
            zzc.put("_v", zzrv.zzacP);
            zzc.put("tid", this.zzaar);
            if (this.zzaam.zznE().isDryRunEnabled()) {
                zzc("Dry run is enabled. GoogleAnalytics would have sent", zzQ(zzc));
                return;
            }
            Map hashMap = new HashMap();
            zztg.zzc(hashMap, "uid", com_google_android_gms_internal_zzrn.getUserId());
            zzre com_google_android_gms_internal_zzre = (zzre) com_google_android_gms_analytics_zze.zza(zzre.class);
            if (com_google_android_gms_internal_zzre != null) {
                zztg.zzc(hashMap, "an", com_google_android_gms_internal_zzre.zzmx());
                zztg.zzc(hashMap, "aid", com_google_android_gms_internal_zzre.zzjI());
                zztg.zzc(hashMap, "av", com_google_android_gms_internal_zzre.zzmy());
                zztg.zzc(hashMap, "aiid", com_google_android_gms_internal_zzre.zzmz());
            }
            zzc.put("_s", String.valueOf(zzlZ().zza(new zzry(0, com_google_android_gms_internal_zzrn.zzlX(), this.zzaar, !TextUtils.isEmpty(com_google_android_gms_internal_zzrn.zzmU()), 0, hashMap))));
            zzlZ().zza(new zzst(zznr(), zzc, com_google_android_gms_analytics_zze.zzme(), true));
        }
    }

    public Uri zzlQ() {
        return this.zzaas;
    }
}
