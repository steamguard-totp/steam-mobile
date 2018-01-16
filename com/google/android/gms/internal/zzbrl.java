package com.google.android.gms.internal;

import java.io.IOException;
import java.io.Reader;
import java.io.StringReader;
import java.io.StringWriter;
import java.io.Writer;
import java.lang.reflect.Type;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public final class zzbrl {
    final zzbry zzcmA;
    private final ThreadLocal<Map<zzbth<?>, zza<?>>> zzcmr;
    private final Map<zzbth<?>, zzbsd<?>> zzcms;
    private final List<zzbse> zzcmt;
    private final zzbsl zzcmu;
    private final boolean zzcmv;
    private final boolean zzcmw;
    private final boolean zzcmx;
    private final boolean zzcmy;
    final zzbrp zzcmz;

    static class zza<T> extends zzbsd<T> {
        private zzbsd<T> zzcmC;

        zza() {
        }

        public void zza(zzbsd<T> com_google_android_gms_internal_zzbsd_T) {
            if (this.zzcmC != null) {
                throw new AssertionError();
            }
            this.zzcmC = com_google_android_gms_internal_zzbsd_T;
        }

        public void zza(zzbtk com_google_android_gms_internal_zzbtk, T t) throws IOException {
            if (this.zzcmC == null) {
                throw new IllegalStateException();
            }
            this.zzcmC.zza(com_google_android_gms_internal_zzbtk, t);
        }

        public T zzb(zzbti com_google_android_gms_internal_zzbti) throws IOException {
            if (this.zzcmC != null) {
                return this.zzcmC.zzb(com_google_android_gms_internal_zzbti);
            }
            throw new IllegalStateException();
        }
    }

    public zzbrl() {
        this(zzbsm.zzcnn, zzbrj.IDENTITY, Collections.emptyMap(), false, false, false, true, false, false, zzbsb.DEFAULT, Collections.emptyList());
    }

    zzbrl(zzbsm com_google_android_gms_internal_zzbsm, zzbrk com_google_android_gms_internal_zzbrk, Map<Type, zzbrn<?>> map, boolean z, boolean z2, boolean z3, boolean z4, boolean z5, boolean z6, zzbsb com_google_android_gms_internal_zzbsb, List<zzbse> list) {
        this.zzcmr = new ThreadLocal();
        this.zzcms = Collections.synchronizedMap(new HashMap());
        this.zzcmz = new zzbrp(this) {
            final /* synthetic */ zzbrl zzcmB;

            {
                this.zzcmB = r1;
            }
        };
        this.zzcmA = new zzbry(this) {
            final /* synthetic */ zzbrl zzcmB;

            {
                this.zzcmB = r1;
            }
        };
        this.zzcmu = new zzbsl(map);
        this.zzcmv = z;
        this.zzcmx = z3;
        this.zzcmw = z4;
        this.zzcmy = z5;
        List arrayList = new ArrayList();
        arrayList.add(zzbtg.zzcpq);
        arrayList.add(zzbtb.zzcnX);
        arrayList.add(com_google_android_gms_internal_zzbsm);
        arrayList.addAll(list);
        arrayList.add(zzbtg.zzcoX);
        arrayList.add(zzbtg.zzcoM);
        arrayList.add(zzbtg.zzcoG);
        arrayList.add(zzbtg.zzcoI);
        arrayList.add(zzbtg.zzcoK);
        arrayList.add(zzbtg.zza(Long.TYPE, Long.class, zza(com_google_android_gms_internal_zzbsb)));
        arrayList.add(zzbtg.zza(Double.TYPE, Double.class, zzbe(z6)));
        arrayList.add(zzbtg.zza(Float.TYPE, Float.class, zzbf(z6)));
        arrayList.add(zzbtg.zzcoR);
        arrayList.add(zzbtg.zzcoT);
        arrayList.add(zzbtg.zzcoZ);
        arrayList.add(zzbtg.zzcpb);
        arrayList.add(zzbtg.zza(BigDecimal.class, zzbtg.zzcoV));
        arrayList.add(zzbtg.zza(BigInteger.class, zzbtg.zzcoW));
        arrayList.add(zzbtg.zzcpd);
        arrayList.add(zzbtg.zzcpf);
        arrayList.add(zzbtg.zzcpj);
        arrayList.add(zzbtg.zzcpo);
        arrayList.add(zzbtg.zzcph);
        arrayList.add(zzbtg.zzcoD);
        arrayList.add(zzbsw.zzcnX);
        arrayList.add(zzbtg.zzcpm);
        arrayList.add(zzbte.zzcnX);
        arrayList.add(zzbtd.zzcnX);
        arrayList.add(zzbtg.zzcpk);
        arrayList.add(zzbsu.zzcnX);
        arrayList.add(zzbtg.zzcoB);
        arrayList.add(new zzbsv(this.zzcmu));
        arrayList.add(new zzbta(this.zzcmu, z2));
        arrayList.add(new zzbsx(this.zzcmu));
        arrayList.add(zzbtg.zzcpr);
        arrayList.add(new zzbtc(this.zzcmu, com_google_android_gms_internal_zzbrk, com_google_android_gms_internal_zzbsm));
        this.zzcmt = Collections.unmodifiableList(arrayList);
    }

    private zzbsd<Number> zza(zzbsb com_google_android_gms_internal_zzbsb) {
        return com_google_android_gms_internal_zzbsb == zzbsb.DEFAULT ? zzbtg.zzcoN : new zzbsd<Number>(this) {
            final /* synthetic */ zzbrl zzcmB;

            {
                this.zzcmB = r1;
            }

            public void zza(zzbtk com_google_android_gms_internal_zzbtk, Number number) throws IOException {
                if (number == null) {
                    com_google_android_gms_internal_zzbtk.zzaca();
                } else {
                    com_google_android_gms_internal_zzbtk.zzjX(number.toString());
                }
            }

            public /* synthetic */ Object zzb(zzbti com_google_android_gms_internal_zzbti) throws IOException {
                return zzg(com_google_android_gms_internal_zzbti);
            }

            public Number zzg(zzbti com_google_android_gms_internal_zzbti) throws IOException {
                if (com_google_android_gms_internal_zzbti.zzabQ() != zzbtj.NULL) {
                    return Long.valueOf(com_google_android_gms_internal_zzbti.nextLong());
                }
                com_google_android_gms_internal_zzbti.nextNull();
                return null;
            }
        };
    }

    private static void zza(Object obj, zzbti com_google_android_gms_internal_zzbti) {
        if (obj != null) {
            try {
                if (com_google_android_gms_internal_zzbti.zzabQ() != zzbtj.END_DOCUMENT) {
                    throw new zzbrs("JSON document was not fully consumed.");
                }
            } catch (Throwable e) {
                throw new zzbsa(e);
            } catch (Throwable e2) {
                throw new zzbrs(e2);
            }
        }
    }

    private zzbsd<Number> zzbe(boolean z) {
        return z ? zzbtg.zzcoP : new zzbsd<Number>(this) {
            final /* synthetic */ zzbrl zzcmB;

            {
                this.zzcmB = r1;
            }

            public void zza(zzbtk com_google_android_gms_internal_zzbtk, Number number) throws IOException {
                if (number == null) {
                    com_google_android_gms_internal_zzbtk.zzaca();
                    return;
                }
                this.zzcmB.zzm(number.doubleValue());
                com_google_android_gms_internal_zzbtk.zza(number);
            }

            public /* synthetic */ Object zzb(zzbti com_google_android_gms_internal_zzbti) throws IOException {
                return zze(com_google_android_gms_internal_zzbti);
            }

            public Double zze(zzbti com_google_android_gms_internal_zzbti) throws IOException {
                if (com_google_android_gms_internal_zzbti.zzabQ() != zzbtj.NULL) {
                    return Double.valueOf(com_google_android_gms_internal_zzbti.nextDouble());
                }
                com_google_android_gms_internal_zzbti.nextNull();
                return null;
            }
        };
    }

    private zzbsd<Number> zzbf(boolean z) {
        return z ? zzbtg.zzcoO : new zzbsd<Number>(this) {
            final /* synthetic */ zzbrl zzcmB;

            {
                this.zzcmB = r1;
            }

            public void zza(zzbtk com_google_android_gms_internal_zzbtk, Number number) throws IOException {
                if (number == null) {
                    com_google_android_gms_internal_zzbtk.zzaca();
                    return;
                }
                this.zzcmB.zzm((double) number.floatValue());
                com_google_android_gms_internal_zzbtk.zza(number);
            }

            public /* synthetic */ Object zzb(zzbti com_google_android_gms_internal_zzbti) throws IOException {
                return zzf(com_google_android_gms_internal_zzbti);
            }

            public Float zzf(zzbti com_google_android_gms_internal_zzbti) throws IOException {
                if (com_google_android_gms_internal_zzbti.zzabQ() != zzbtj.NULL) {
                    return Float.valueOf((float) com_google_android_gms_internal_zzbti.nextDouble());
                }
                com_google_android_gms_internal_zzbti.nextNull();
                return null;
            }
        };
    }

    private void zzm(double d) {
        if (Double.isNaN(d) || Double.isInfinite(d)) {
            throw new IllegalArgumentException(d + " is not a valid double value as per JSON specification. To override this" + " behavior, use GsonBuilder.serializeSpecialFloatingPointValues() method.");
        }
    }

    public String toString() {
        return "{serializeNulls:" + this.zzcmv + "factories:" + this.zzcmt + ",instanceCreators:" + this.zzcmu + "}";
    }

    public <T> zzbsd<T> zza(zzbse com_google_android_gms_internal_zzbse, zzbth<T> com_google_android_gms_internal_zzbth_T) {
        Object obj = null;
        if (!this.zzcmt.contains(com_google_android_gms_internal_zzbse)) {
            obj = 1;
        }
        Object obj2 = obj;
        for (zzbse com_google_android_gms_internal_zzbse2 : this.zzcmt) {
            if (obj2 != null) {
                zzbsd<T> zza = com_google_android_gms_internal_zzbse2.zza(this, com_google_android_gms_internal_zzbth_T);
                if (zza != null) {
                    return zza;
                }
            } else if (com_google_android_gms_internal_zzbse2 == com_google_android_gms_internal_zzbse) {
                obj2 = 1;
            }
        }
        String valueOf = String.valueOf(com_google_android_gms_internal_zzbth_T);
        throw new IllegalArgumentException(new StringBuilder(String.valueOf(valueOf).length() + 22).append("GSON cannot serialize ").append(valueOf).toString());
    }

    public <T> zzbsd<T> zza(zzbth<T> com_google_android_gms_internal_zzbth_T) {
        zzbsd<T> com_google_android_gms_internal_zzbsd_T = (zzbsd) this.zzcms.get(com_google_android_gms_internal_zzbth_T);
        if (com_google_android_gms_internal_zzbsd_T == null) {
            Map map;
            Map map2 = (Map) this.zzcmr.get();
            Object obj = null;
            if (map2 == null) {
                HashMap hashMap = new HashMap();
                this.zzcmr.set(hashMap);
                map = hashMap;
                obj = 1;
            } else {
                map = map2;
            }
            zza com_google_android_gms_internal_zzbrl_zza = (zza) map.get(com_google_android_gms_internal_zzbth_T);
            if (com_google_android_gms_internal_zzbrl_zza == null) {
                try {
                    zza com_google_android_gms_internal_zzbrl_zza2 = new zza();
                    map.put(com_google_android_gms_internal_zzbth_T, com_google_android_gms_internal_zzbrl_zza2);
                    for (zzbse zza : this.zzcmt) {
                        com_google_android_gms_internal_zzbsd_T = zza.zza(this, com_google_android_gms_internal_zzbth_T);
                        if (com_google_android_gms_internal_zzbsd_T != null) {
                            com_google_android_gms_internal_zzbrl_zza2.zza(com_google_android_gms_internal_zzbsd_T);
                            this.zzcms.put(com_google_android_gms_internal_zzbth_T, com_google_android_gms_internal_zzbsd_T);
                            map.remove(com_google_android_gms_internal_zzbth_T);
                            if (obj != null) {
                                this.zzcmr.remove();
                            }
                        }
                    }
                    String valueOf = String.valueOf(com_google_android_gms_internal_zzbth_T);
                    throw new IllegalArgumentException(new StringBuilder(String.valueOf(valueOf).length() + 19).append("GSON cannot handle ").append(valueOf).toString());
                } catch (Throwable th) {
                    map.remove(com_google_android_gms_internal_zzbth_T);
                    if (obj != null) {
                        this.zzcmr.remove();
                    }
                }
            }
        }
        return com_google_android_gms_internal_zzbsd_T;
    }

    public zzbtk zza(Writer writer) throws IOException {
        if (this.zzcmx) {
            writer.write(")]}'\n");
        }
        zzbtk com_google_android_gms_internal_zzbtk = new zzbtk(writer);
        if (this.zzcmy) {
            com_google_android_gms_internal_zzbtk.setIndent("  ");
        }
        com_google_android_gms_internal_zzbtk.zzbj(this.zzcmv);
        return com_google_android_gms_internal_zzbtk;
    }

    public <T> T zza(zzbrr com_google_android_gms_internal_zzbrr, Class<T> cls) throws zzbsa {
        return zzbsr.zzo(cls).cast(zza(com_google_android_gms_internal_zzbrr, (Type) cls));
    }

    public <T> T zza(zzbrr com_google_android_gms_internal_zzbrr, Type type) throws zzbsa {
        return com_google_android_gms_internal_zzbrr == null ? null : zza(new zzbsy(com_google_android_gms_internal_zzbrr), type);
    }

    public <T> T zza(zzbti com_google_android_gms_internal_zzbti, Type type) throws zzbrs, zzbsa {
        boolean z = true;
        boolean isLenient = com_google_android_gms_internal_zzbti.isLenient();
        com_google_android_gms_internal_zzbti.setLenient(true);
        try {
            com_google_android_gms_internal_zzbti.zzabQ();
            z = false;
            T zzb = zza(zzbth.zzl(type)).zzb(com_google_android_gms_internal_zzbti);
            com_google_android_gms_internal_zzbti.setLenient(isLenient);
            return zzb;
        } catch (Throwable e) {
            if (z) {
                com_google_android_gms_internal_zzbti.setLenient(isLenient);
                return null;
            }
            throw new zzbsa(e);
        } catch (Throwable e2) {
            throw new zzbsa(e2);
        } catch (Throwable e22) {
            throw new zzbsa(e22);
        } catch (Throwable th) {
            com_google_android_gms_internal_zzbti.setLenient(isLenient);
        }
    }

    public <T> T zza(Reader reader, Type type) throws zzbrs, zzbsa {
        zzbti com_google_android_gms_internal_zzbti = new zzbti(reader);
        Object zza = zza(com_google_android_gms_internal_zzbti, type);
        zza(zza, com_google_android_gms_internal_zzbti);
        return zza;
    }

    public <T> T zza(String str, Type type) throws zzbsa {
        return str == null ? null : zza(new StringReader(str), type);
    }

    public void zza(zzbrr com_google_android_gms_internal_zzbrr, zzbtk com_google_android_gms_internal_zzbtk) throws zzbrs {
        boolean isLenient = com_google_android_gms_internal_zzbtk.isLenient();
        com_google_android_gms_internal_zzbtk.setLenient(true);
        boolean zzacm = com_google_android_gms_internal_zzbtk.zzacm();
        com_google_android_gms_internal_zzbtk.zzbi(this.zzcmw);
        boolean zzacn = com_google_android_gms_internal_zzbtk.zzacn();
        com_google_android_gms_internal_zzbtk.zzbj(this.zzcmv);
        try {
            zzbss.zzb(com_google_android_gms_internal_zzbrr, com_google_android_gms_internal_zzbtk);
            com_google_android_gms_internal_zzbtk.setLenient(isLenient);
            com_google_android_gms_internal_zzbtk.zzbi(zzacm);
            com_google_android_gms_internal_zzbtk.zzbj(zzacn);
        } catch (Throwable e) {
            throw new zzbrs(e);
        } catch (Throwable th) {
            com_google_android_gms_internal_zzbtk.setLenient(isLenient);
            com_google_android_gms_internal_zzbtk.zzbi(zzacm);
            com_google_android_gms_internal_zzbtk.zzbj(zzacn);
        }
    }

    public void zza(zzbrr com_google_android_gms_internal_zzbrr, Appendable appendable) throws zzbrs {
        try {
            zza(com_google_android_gms_internal_zzbrr, zza(zzbss.zza(appendable)));
        } catch (Throwable e) {
            throw new RuntimeException(e);
        }
    }

    public void zza(Object obj, Type type, zzbtk com_google_android_gms_internal_zzbtk) throws zzbrs {
        zzbsd zza = zza(zzbth.zzl(type));
        boolean isLenient = com_google_android_gms_internal_zzbtk.isLenient();
        com_google_android_gms_internal_zzbtk.setLenient(true);
        boolean zzacm = com_google_android_gms_internal_zzbtk.zzacm();
        com_google_android_gms_internal_zzbtk.zzbi(this.zzcmw);
        boolean zzacn = com_google_android_gms_internal_zzbtk.zzacn();
        com_google_android_gms_internal_zzbtk.zzbj(this.zzcmv);
        try {
            zza.zza(com_google_android_gms_internal_zzbtk, obj);
            com_google_android_gms_internal_zzbtk.setLenient(isLenient);
            com_google_android_gms_internal_zzbtk.zzbi(zzacm);
            com_google_android_gms_internal_zzbtk.zzbj(zzacn);
        } catch (Throwable e) {
            throw new zzbrs(e);
        } catch (Throwable th) {
            com_google_android_gms_internal_zzbtk.setLenient(isLenient);
            com_google_android_gms_internal_zzbtk.zzbi(zzacm);
            com_google_android_gms_internal_zzbtk.zzbj(zzacn);
        }
    }

    public void zza(Object obj, Type type, Appendable appendable) throws zzbrs {
        try {
            zza(obj, type, zza(zzbss.zza(appendable)));
        } catch (Throwable e) {
            throw new zzbrs(e);
        }
    }

    public String zzaI(Object obj) {
        return obj == null ? zzb(zzbrt.zzcmL) : zzc(obj, obj.getClass());
    }

    public String zzb(zzbrr com_google_android_gms_internal_zzbrr) {
        Appendable stringWriter = new StringWriter();
        zza(com_google_android_gms_internal_zzbrr, stringWriter);
        return stringWriter.toString();
    }

    public String zzc(Object obj, Type type) {
        Appendable stringWriter = new StringWriter();
        zza(obj, type, stringWriter);
        return stringWriter.toString();
    }

    public <T> T zzf(String str, Class<T> cls) throws zzbsa {
        return zzbsr.zzo(cls).cast(zza(str, (Type) cls));
    }

    public <T> zzbsd<T> zzj(Class<T> cls) {
        return zza(zzbth.zzq(cls));
    }
}
