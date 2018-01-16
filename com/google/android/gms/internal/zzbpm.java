package com.google.android.gms.internal;

import java.nio.ByteBuffer;
import java.nio.charset.CharacterCodingException;
import java.nio.charset.Charset;
import java.nio.charset.CharsetDecoder;
import java.nio.charset.CharsetEncoder;
import java.nio.charset.CodingErrorAction;
import java.util.ArrayList;
import java.util.List;

class zzbpm {

    interface zzb {
        boolean zzU(byte[] bArr);

        zzbps zzZD();
    }

    static class zza implements zzb {
        private List<byte[]> zzchE = new ArrayList();
        private int zzchF = 0;

        zza() {
        }

        public boolean zzU(byte[] bArr) {
            this.zzchE.add(bArr);
            this.zzchF += bArr.length;
            return true;
        }

        public zzbps zzZD() {
            byte[] bArr = new byte[this.zzchF];
            int i = 0;
            for (int i2 = 0; i2 < this.zzchE.size(); i2++) {
                byte[] bArr2 = (byte[]) this.zzchE.get(i2);
                System.arraycopy(bArr2, 0, bArr, i, bArr2.length);
                i += bArr2.length;
            }
            return new zzbps(bArr);
        }
    }

    static class zzc implements zzb {
        private static ThreadLocal<CharsetDecoder> zzchG = new ThreadLocal<CharsetDecoder>() {
            protected /* synthetic */ Object initialValue() {
                return zzZE();
            }

            protected CharsetDecoder zzZE() {
                CharsetDecoder newDecoder = Charset.forName("UTF8").newDecoder();
                newDecoder.onMalformedInput(CodingErrorAction.REPORT);
                newDecoder.onUnmappableCharacter(CodingErrorAction.REPORT);
                return newDecoder;
            }
        };
        private static ThreadLocal<CharsetEncoder> zzchH = new ThreadLocal<CharsetEncoder>() {
            protected /* synthetic */ Object initialValue() {
                return zzZF();
            }

            protected CharsetEncoder zzZF() {
                CharsetEncoder newEncoder = Charset.forName("UTF8").newEncoder();
                newEncoder.onMalformedInput(CodingErrorAction.REPORT);
                newEncoder.onUnmappableCharacter(CodingErrorAction.REPORT);
                return newEncoder;
            }
        };
        private StringBuilder zzchI = new StringBuilder();

        zzc() {
        }

        private String zzV(byte[] bArr) {
            try {
                return ((CharsetDecoder) zzchG.get()).decode(ByteBuffer.wrap(bArr)).toString();
            } catch (CharacterCodingException e) {
                return null;
            }
        }

        public boolean zzU(byte[] bArr) {
            String zzV = zzV(bArr);
            if (zzV == null) {
                return false;
            }
            this.zzchI.append(zzV);
            return true;
        }

        public zzbps zzZD() {
            return new zzbps(this.zzchI.toString());
        }
    }

    static zzb zzb(byte b) {
        return b == (byte) 2 ? new zza() : new zzc();
    }
}
