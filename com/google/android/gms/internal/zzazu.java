package com.google.android.gms.internal;

import android.text.TextUtils;
import com.google.android.gms.common.internal.zzac;
import java.util.ArrayList;
import java.util.List;

public class zzazu {
    public static double zza(zzbfw<?> com_google_android_gms_internal_zzbfw_, zzbfw<?> com_google_android_gms_internal_zzbfw_2) {
        boolean z = true;
        zzac.zzas(com_google_android_gms_internal_zzbfw_ != null);
        if (com_google_android_gms_internal_zzbfw_2 == null) {
            z = false;
        }
        zzac.zzas(z);
        double zzb = zzb(com_google_android_gms_internal_zzbfw_);
        double zzb2 = zzb(com_google_android_gms_internal_zzbfw_2);
        return (Double.isNaN(zzb) || Double.isNaN(zzb2)) ? Double.NaN : ((zzb == Double.POSITIVE_INFINITY && zzb2 == Double.NEGATIVE_INFINITY) || (zzb == Double.NEGATIVE_INFINITY && zzb2 == Double.POSITIVE_INFINITY)) ? Double.NaN : (!Double.isInfinite(zzb) || Double.isInfinite(zzb2)) ? (Double.isInfinite(zzb) || !Double.isInfinite(zzb2)) ? zzb + zzb2 : zzb2 : zzb;
    }

    public static boolean zza(zzbfw<?> com_google_android_gms_internal_zzbfw_) {
        zzac.zzas(com_google_android_gms_internal_zzbfw_ != null);
        if (com_google_android_gms_internal_zzbfw_ == zzbga.zzbKV || com_google_android_gms_internal_zzbfw_ == zzbga.zzbKU) {
            return false;
        }
        if (com_google_android_gms_internal_zzbfw_ instanceof zzbfx) {
            return ((Boolean) ((zzbfx) com_google_android_gms_internal_zzbfw_).zzRF()).booleanValue();
        }
        if (com_google_android_gms_internal_zzbfw_ instanceof zzbfy) {
            if (((Double) ((zzbfy) com_google_android_gms_internal_zzbfw_).zzRF()).doubleValue() == 0.0d || ((Double) ((zzbfy) com_google_android_gms_internal_zzbfw_).zzRF()).doubleValue() == -0.0d || Double.isNaN(((Double) ((zzbfy) com_google_android_gms_internal_zzbfw_).zzRF()).doubleValue())) {
                return false;
            }
        } else if (com_google_android_gms_internal_zzbfw_ instanceof zzbge) {
            if (((String) ((zzbge) com_google_android_gms_internal_zzbfw_).zzRF()).isEmpty()) {
                return false;
            }
        } else if (zzf(com_google_android_gms_internal_zzbfw_)) {
            String valueOf = String.valueOf(com_google_android_gms_internal_zzbfw_.toString());
            throw new IllegalArgumentException(new StringBuilder(String.valueOf(valueOf).length() + 33).append("Illegal type given to isTruthy: ").append(valueOf).append(".").toString());
        }
        return true;
    }

    public static double zzb(zzbfw<?> com_google_android_gms_internal_zzbfw_) {
        zzac.zzas(com_google_android_gms_internal_zzbfw_ != null);
        if (com_google_android_gms_internal_zzbfw_ == zzbga.zzbKV) {
            return Double.NaN;
        }
        if (com_google_android_gms_internal_zzbfw_ == zzbga.zzbKU) {
            return 0.0d;
        }
        if (com_google_android_gms_internal_zzbfw_ instanceof zzbfx) {
            return ((Boolean) ((zzbfx) com_google_android_gms_internal_zzbfw_).zzRF()).booleanValue() ? 1.0d : 0.0d;
        } else {
            if (com_google_android_gms_internal_zzbfw_ instanceof zzbfy) {
                return ((Double) ((zzbfy) com_google_android_gms_internal_zzbfw_).zzRF()).doubleValue();
            }
            if (com_google_android_gms_internal_zzbfw_ instanceof zzbgb) {
                zzbgb com_google_android_gms_internal_zzbgb = (zzbgb) com_google_android_gms_internal_zzbfw_;
                if (((List) com_google_android_gms_internal_zzbgb.zzRF()).isEmpty()) {
                    return 0.0d;
                }
                if (((List) com_google_android_gms_internal_zzbgb.zzRF()).size() == 1) {
                    return zzb(new zzbge(zzd(com_google_android_gms_internal_zzbgb.zzna(0))));
                }
            } else if (com_google_android_gms_internal_zzbfw_ instanceof zzbge) {
                zzbge com_google_android_gms_internal_zzbge = (zzbge) com_google_android_gms_internal_zzbfw_;
                if (((String) com_google_android_gms_internal_zzbge.zzRF()).isEmpty()) {
                    return 0.0d;
                }
                try {
                    return Double.parseDouble((String) com_google_android_gms_internal_zzbge.zzRF());
                } catch (NumberFormatException e) {
                    return Double.NaN;
                }
            }
            if (!zzf(com_google_android_gms_internal_zzbfw_)) {
                return Double.NaN;
            }
            String valueOf = String.valueOf(com_google_android_gms_internal_zzbfw_.toString());
            throw new IllegalArgumentException(new StringBuilder(String.valueOf(valueOf).length() + 41).append("Illegal type given to numberEquivalent: ").append(valueOf).append(".").toString());
        }
    }

    public static boolean zzb(zzbfw<?> com_google_android_gms_internal_zzbfw_, zzbfw<?> com_google_android_gms_internal_zzbfw_2) {
        zzac.zzas(com_google_android_gms_internal_zzbfw_ != null);
        zzac.zzas(com_google_android_gms_internal_zzbfw_2 != null);
        String valueOf;
        if (zzf(com_google_android_gms_internal_zzbfw_)) {
            valueOf = String.valueOf(com_google_android_gms_internal_zzbfw_.toString());
            throw new IllegalArgumentException(new StringBuilder(String.valueOf(valueOf).length() + 50).append("Illegal type given to abstractRelationalCompare: ").append(valueOf).append(".").toString());
        } else if (zzf(com_google_android_gms_internal_zzbfw_2)) {
            valueOf = String.valueOf(com_google_android_gms_internal_zzbfw_2.toString());
            throw new IllegalArgumentException(new StringBuilder(String.valueOf(valueOf).length() + 50).append("Illegal type given to abstractRelationalCompare: ").append(valueOf).append(".").toString());
        } else {
            zzbfw com_google_android_gms_internal_zzbge;
            zzbfw com_google_android_gms_internal_zzbge2;
            if ((com_google_android_gms_internal_zzbfw_ instanceof zzbgc) || (com_google_android_gms_internal_zzbfw_ instanceof zzbgb) || (com_google_android_gms_internal_zzbfw_ instanceof zzbfz)) {
                com_google_android_gms_internal_zzbge = new zzbge(zzd(com_google_android_gms_internal_zzbfw_));
            } else {
                zzbfw<?> com_google_android_gms_internal_zzbfw_3 = com_google_android_gms_internal_zzbfw_;
            }
            if ((com_google_android_gms_internal_zzbfw_2 instanceof zzbgc) || (com_google_android_gms_internal_zzbfw_2 instanceof zzbgb) || (com_google_android_gms_internal_zzbfw_2 instanceof zzbfz)) {
                com_google_android_gms_internal_zzbge2 = new zzbge(zzd(com_google_android_gms_internal_zzbfw_2));
            } else {
                zzbfw<?> com_google_android_gms_internal_zzbfw_4 = com_google_android_gms_internal_zzbfw_2;
            }
            if ((com_google_android_gms_internal_zzbge instanceof zzbge) && (com_google_android_gms_internal_zzbge2 instanceof zzbge)) {
                return ((String) ((zzbge) com_google_android_gms_internal_zzbge).zzRF()).compareTo((String) ((zzbge) com_google_android_gms_internal_zzbge2).zzRF()) < 0;
            } else {
                double zzb = zzb(com_google_android_gms_internal_zzbge);
                double zzb2 = zzb(com_google_android_gms_internal_zzbge2);
                return (Double.isNaN(zzb) || Double.isNaN(zzb2)) ? false : (zzb == 0.0d && zzb2 == -0.0d) ? false : ((zzb == -0.0d && zzb2 == 0.0d) || zzb == Double.POSITIVE_INFINITY) ? false : zzb2 == Double.POSITIVE_INFINITY ? true : zzb2 != Double.NEGATIVE_INFINITY ? zzb == Double.NEGATIVE_INFINITY ? true : Double.compare(zzb, zzb2) < 0 : false;
            }
        }
    }

    public static double zzc(zzbfw<?> com_google_android_gms_internal_zzbfw_) {
        double zzb = zzb(com_google_android_gms_internal_zzbfw_);
        return Double.isNaN(zzb) ? 0.0d : (zzb == 0.0d || zzb == -0.0d || Double.isInfinite(zzb)) ? zzb : Math.signum(zzb) * Math.floor(Math.abs(zzb));
    }

    public static boolean zzc(zzbfw<?> com_google_android_gms_internal_zzbfw_, zzbfw<?> com_google_android_gms_internal_zzbfw_2) {
        zzac.zzas(com_google_android_gms_internal_zzbfw_ != null);
        zzac.zzas(com_google_android_gms_internal_zzbfw_2 != null);
        String valueOf;
        if (zzf(com_google_android_gms_internal_zzbfw_)) {
            valueOf = String.valueOf(com_google_android_gms_internal_zzbfw_.toString());
            throw new IllegalArgumentException(new StringBuilder(String.valueOf(valueOf).length() + 48).append("Illegal type given to abstractEqualityCompare: ").append(valueOf).append(".").toString());
        } else if (zzf(com_google_android_gms_internal_zzbfw_2)) {
            valueOf = String.valueOf(com_google_android_gms_internal_zzbfw_2.toString());
            throw new IllegalArgumentException(new StringBuilder(String.valueOf(valueOf).length() + 48).append("Illegal type given to abstractEqualityCompare: ").append(valueOf).append(".").toString());
        } else {
            valueOf = zze(com_google_android_gms_internal_zzbfw_);
            String zze = zze(com_google_android_gms_internal_zzbfw_2);
            if (!valueOf.equals(zze)) {
                return ((com_google_android_gms_internal_zzbfw_ == zzbga.zzbKV || com_google_android_gms_internal_zzbfw_ == zzbga.zzbKU) && (com_google_android_gms_internal_zzbfw_2 == zzbga.zzbKV || com_google_android_gms_internal_zzbfw_2 == zzbga.zzbKU)) ? true : (valueOf.equals("Number") && zze.equals("String")) ? zzc(com_google_android_gms_internal_zzbfw_, new zzbfy(Double.valueOf(zzb(com_google_android_gms_internal_zzbfw_2)))) : (valueOf.equals("String") && zze.equals("Number")) ? zzc(new zzbfy(Double.valueOf(zzb(com_google_android_gms_internal_zzbfw_))), com_google_android_gms_internal_zzbfw_2) : valueOf.equals("Boolean") ? zzc(new zzbfy(Double.valueOf(zzb(com_google_android_gms_internal_zzbfw_))), com_google_android_gms_internal_zzbfw_2) : zze.equals("Boolean") ? zzc(com_google_android_gms_internal_zzbfw_, new zzbfy(Double.valueOf(zzb(com_google_android_gms_internal_zzbfw_2)))) : ((valueOf.equals("String") || valueOf.equals("Number")) && zze.equals("Object")) ? zzc(com_google_android_gms_internal_zzbfw_, new zzbge(zzd(com_google_android_gms_internal_zzbfw_2))) : (valueOf.equals("Object") && (zze.equals("String") || zze.equals("Number"))) ? zzc(new zzbge(zzd(com_google_android_gms_internal_zzbfw_)), com_google_android_gms_internal_zzbfw_2) : false;
            } else {
                boolean z = true;
                switch (valueOf.hashCode()) {
                    case -1950496919:
                        if (valueOf.equals("Number")) {
                            z = true;
                            break;
                        }
                        break;
                    case -1939501217:
                        if (valueOf.equals("Object")) {
                            z = true;
                            break;
                        }
                        break;
                    case -1808118735:
                        if (valueOf.equals("String")) {
                            z = true;
                            break;
                        }
                        break;
                    case 2439591:
                        if (valueOf.equals("Null")) {
                            z = true;
                            break;
                        }
                        break;
                    case 965837104:
                        if (valueOf.equals("Undefined")) {
                            z = false;
                            break;
                        }
                        break;
                    case 1729365000:
                        if (valueOf.equals("Boolean")) {
                            z = true;
                            break;
                        }
                        break;
                }
                switch (z) {
                    case false:
                    case true:
                        return true;
                    case true:
                        double doubleValue = ((Double) ((zzbfy) com_google_android_gms_internal_zzbfw_).zzRF()).doubleValue();
                        double doubleValue2 = ((Double) ((zzbfy) com_google_android_gms_internal_zzbfw_2).zzRF()).doubleValue();
                        return (Double.isNaN(doubleValue) || Double.isNaN(doubleValue2)) ? false : doubleValue == doubleValue2;
                    case true:
                        return ((String) ((zzbge) com_google_android_gms_internal_zzbfw_).zzRF()).equals((String) ((zzbge) com_google_android_gms_internal_zzbfw_2).zzRF());
                    case true:
                        return ((Boolean) ((zzbfx) com_google_android_gms_internal_zzbfw_).zzRF()) == ((Boolean) ((zzbfx) com_google_android_gms_internal_zzbfw_2).zzRF());
                    case true:
                        return com_google_android_gms_internal_zzbfw_ == com_google_android_gms_internal_zzbfw_2;
                    default:
                        return false;
                }
            }
        }
    }

    public static String zzd(zzbfw<?> com_google_android_gms_internal_zzbfw_) {
        int i = 1;
        zzac.zzas(com_google_android_gms_internal_zzbfw_ != null);
        if (com_google_android_gms_internal_zzbfw_ == zzbga.zzbKV) {
            return "undefined";
        }
        if (com_google_android_gms_internal_zzbfw_ == zzbga.zzbKU) {
            return "null";
        }
        if (com_google_android_gms_internal_zzbfw_ instanceof zzbfx) {
            return ((Boolean) ((zzbfx) com_google_android_gms_internal_zzbfw_).zzRF()).booleanValue() ? "true" : "false";
        } else {
            String d;
            if (com_google_android_gms_internal_zzbfw_ instanceof zzbfy) {
                d = Double.toString(((Double) ((zzbfy) com_google_android_gms_internal_zzbfw_).zzRF()).doubleValue());
                int indexOf = d.indexOf("E");
                if (indexOf > 0) {
                    int parseInt = Integer.parseInt(d.substring(indexOf + 1, d.length()));
                    int i2;
                    if (parseInt < 0) {
                        if (parseInt <= -7) {
                            return d.replace("E", "e");
                        }
                        String replace = d.substring(0, indexOf).replace(".", "");
                        StringBuilder stringBuilder = new StringBuilder();
                        stringBuilder.append("0.");
                        for (i2 = parseInt; i2 + 1 < 0; i2++) {
                            stringBuilder.append("0");
                        }
                        stringBuilder.append(replace);
                        return stringBuilder.toString();
                    } else if (parseInt >= 21) {
                        return d.replace("E", "e+");
                    } else {
                        String replace2 = d.substring(0, indexOf).replace(".", "");
                        i2 = parseInt + 1;
                        parseInt = replace2.length();
                        if (!replace2.startsWith("-")) {
                            i = 0;
                        }
                        i2 -= parseInt - i;
                        StringBuilder stringBuilder2 = new StringBuilder();
                        if (i2 < 0) {
                            i2 += replace2.length();
                            stringBuilder2.append(replace2.substring(0, i2));
                            stringBuilder2.append(".");
                            stringBuilder2.append(replace2.substring(i2, replace2.length()));
                        } else {
                            stringBuilder2.append(replace2);
                            while (i2 > 0) {
                                stringBuilder2.append("0");
                                i2--;
                            }
                        }
                        return stringBuilder2.toString();
                    }
                } else if (!d.endsWith(".0")) {
                    return d;
                } else {
                    d = d.substring(0, d.length() - 2);
                    return d.equals("-0") ? "0" : d;
                }
            } else {
                if (com_google_android_gms_internal_zzbfw_ instanceof zzbfz) {
                    zzazt com_google_android_gms_internal_zzazt = (zzazt) ((zzbfz) com_google_android_gms_internal_zzbfw_).zzRF();
                    if (com_google_android_gms_internal_zzazt instanceof zzazs) {
                        return ((zzazs) com_google_android_gms_internal_zzazt).getName();
                    }
                } else if (com_google_android_gms_internal_zzbfw_ instanceof zzbgb) {
                    Iterable arrayList = new ArrayList();
                    for (zzbfw com_google_android_gms_internal_zzbfw : (List) ((zzbgb) com_google_android_gms_internal_zzbfw_).zzRF()) {
                        if (com_google_android_gms_internal_zzbfw == zzbga.zzbKU || com_google_android_gms_internal_zzbfw == zzbga.zzbKV) {
                            arrayList.add("");
                        } else {
                            arrayList.add(zzd(com_google_android_gms_internal_zzbfw));
                        }
                    }
                    return TextUtils.join(",", arrayList);
                } else if (com_google_android_gms_internal_zzbfw_ instanceof zzbgc) {
                    return "[object Object]";
                } else {
                    if (com_google_android_gms_internal_zzbfw_ instanceof zzbge) {
                        return (String) ((zzbge) com_google_android_gms_internal_zzbfw_).zzRF();
                    }
                }
                if (zzf(com_google_android_gms_internal_zzbfw_)) {
                    d = String.valueOf(com_google_android_gms_internal_zzbfw_.toString());
                    d = new StringBuilder(String.valueOf(d).length() + 41).append("Illegal type given to stringEquivalent: ").append(d).append(".").toString();
                } else {
                    d = "Unknown type in stringEquivalent.";
                }
                throw new IllegalArgumentException(d);
            }
        }
    }

    public static boolean zzd(zzbfw<?> com_google_android_gms_internal_zzbfw_, zzbfw<?> com_google_android_gms_internal_zzbfw_2) {
        zzac.zzas(com_google_android_gms_internal_zzbfw_ != null);
        zzac.zzas(com_google_android_gms_internal_zzbfw_2 != null);
        String valueOf;
        if (zzf(com_google_android_gms_internal_zzbfw_)) {
            valueOf = String.valueOf(com_google_android_gms_internal_zzbfw_.toString());
            throw new IllegalArgumentException(new StringBuilder(String.valueOf(valueOf).length() + 46).append("Illegal type given to strictEqualityCompare: ").append(valueOf).append(".").toString());
        } else if (zzf(com_google_android_gms_internal_zzbfw_2)) {
            valueOf = String.valueOf(com_google_android_gms_internal_zzbfw_2.toString());
            throw new IllegalArgumentException(new StringBuilder(String.valueOf(valueOf).length() + 46).append("Illegal type given to strictEqualityCompare: ").append(valueOf).append(".").toString());
        } else {
            valueOf = zze(com_google_android_gms_internal_zzbfw_);
            if (!valueOf.equals(zze(com_google_android_gms_internal_zzbfw_2))) {
                return false;
            }
            boolean z = true;
            switch (valueOf.hashCode()) {
                case -1950496919:
                    if (valueOf.equals("Number")) {
                        z = true;
                        break;
                    }
                    break;
                case -1808118735:
                    if (valueOf.equals("String")) {
                        z = true;
                        break;
                    }
                    break;
                case 2439591:
                    if (valueOf.equals("Null")) {
                        z = true;
                        break;
                    }
                    break;
                case 965837104:
                    if (valueOf.equals("Undefined")) {
                        z = false;
                        break;
                    }
                    break;
                case 1729365000:
                    if (valueOf.equals("Boolean")) {
                        z = true;
                        break;
                    }
                    break;
            }
            switch (z) {
                case false:
                case true:
                    return true;
                case true:
                    double doubleValue = ((Double) ((zzbfy) com_google_android_gms_internal_zzbfw_).zzRF()).doubleValue();
                    double doubleValue2 = ((Double) ((zzbfy) com_google_android_gms_internal_zzbfw_2).zzRF()).doubleValue();
                    return (Double.isNaN(doubleValue) || Double.isNaN(doubleValue2)) ? false : doubleValue == doubleValue2;
                case true:
                    return ((String) ((zzbge) com_google_android_gms_internal_zzbfw_).zzRF()).equals((String) ((zzbge) com_google_android_gms_internal_zzbfw_2).zzRF());
                case true:
                    return ((Boolean) ((zzbfx) com_google_android_gms_internal_zzbfw_).zzRF()) == ((Boolean) ((zzbfx) com_google_android_gms_internal_zzbfw_2).zzRF());
                default:
                    return com_google_android_gms_internal_zzbfw_ == com_google_android_gms_internal_zzbfw_2;
            }
        }
    }

    private static String zze(zzbfw<?> com_google_android_gms_internal_zzbfw_) {
        return com_google_android_gms_internal_zzbfw_ == zzbga.zzbKV ? "Undefined" : com_google_android_gms_internal_zzbfw_ == zzbga.zzbKU ? "Null" : com_google_android_gms_internal_zzbfw_ instanceof zzbfx ? "Boolean" : com_google_android_gms_internal_zzbfw_ instanceof zzbfy ? "Number" : com_google_android_gms_internal_zzbfw_ instanceof zzbge ? "String" : "Object";
    }

    private static boolean zzf(zzbfw<?> com_google_android_gms_internal_zzbfw_) {
        return (com_google_android_gms_internal_zzbfw_ instanceof zzbgd) || !(!(com_google_android_gms_internal_zzbfw_ instanceof zzbga) || com_google_android_gms_internal_zzbfw_ == zzbga.zzbKV || com_google_android_gms_internal_zzbfw_ == zzbga.zzbKU);
    }
}
