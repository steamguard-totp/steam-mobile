package com.google.android.gms.internal;

import java.io.IOException;
import java.io.Writer;

public final class zzbss {

    private static final class zza extends Writer {
        private final Appendable zzcnQ;
        private final zza zzcnR;

        static class zza implements CharSequence {
            char[] zzcnS;

            zza() {
            }

            public char charAt(int i) {
                return this.zzcnS[i];
            }

            public int length() {
                return this.zzcnS.length;
            }

            public CharSequence subSequence(int i, int i2) {
                return new String(this.zzcnS, i, i2 - i);
            }
        }

        private zza(Appendable appendable) {
            this.zzcnR = new zza();
            this.zzcnQ = appendable;
        }

        public void close() {
        }

        public void flush() {
        }

        public void write(int i) throws IOException {
            this.zzcnQ.append((char) i);
        }

        public void write(char[] cArr, int i, int i2) throws IOException {
            this.zzcnR.zzcnS = cArr;
            this.zzcnQ.append(this.zzcnR, i, i + i2);
        }
    }

    public static Writer zza(Appendable appendable) {
        return appendable instanceof Writer ? (Writer) appendable : new zza(appendable);
    }

    public static void zzb(zzbrr com_google_android_gms_internal_zzbrr, zzbtk com_google_android_gms_internal_zzbtk) throws IOException {
        zzbtg.zzcpp.zza(com_google_android_gms_internal_zzbtk, com_google_android_gms_internal_zzbrr);
    }

    public static zzbrr zzh(zzbti com_google_android_gms_internal_zzbti) throws zzbrv {
        Object obj = 1;
        try {
            com_google_android_gms_internal_zzbti.zzabQ();
            obj = null;
            return (zzbrr) zzbtg.zzcpp.zzb(com_google_android_gms_internal_zzbti);
        } catch (Throwable e) {
            if (obj != null) {
                return zzbrt.zzcmL;
            }
            throw new zzbsa(e);
        } catch (Throwable e2) {
            throw new zzbsa(e2);
        } catch (Throwable e22) {
            throw new zzbrs(e22);
        } catch (Throwable e222) {
            throw new zzbsa(e222);
        }
    }
}
