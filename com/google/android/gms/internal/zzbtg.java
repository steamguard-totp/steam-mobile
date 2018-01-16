package com.google.android.gms.internal;

import java.io.IOException;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.net.InetAddress;
import java.net.URI;
import java.net.URL;
import java.sql.Timestamp;
import java.util.BitSet;
import java.util.Calendar;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Locale;
import java.util.Map;
import java.util.Map.Entry;
import java.util.StringTokenizer;
import java.util.UUID;

public final class zzbtg {
    public static final zzbsd<Class> zzcoA = new zzbsd<Class>() {
        public void zza(zzbtk com_google_android_gms_internal_zzbtk, Class cls) throws IOException {
            if (cls == null) {
                com_google_android_gms_internal_zzbtk.zzaca();
            } else {
                String valueOf = String.valueOf(cls.getName());
                throw new UnsupportedOperationException(new StringBuilder(String.valueOf(valueOf).length() + 76).append("Attempted to serialize java.lang.Class: ").append(valueOf).append(". Forgot to register a type adapter?").toString());
            }
        }

        public /* synthetic */ Object zzb(zzbti com_google_android_gms_internal_zzbti) throws IOException {
            return zzo(com_google_android_gms_internal_zzbti);
        }

        public Class zzo(zzbti com_google_android_gms_internal_zzbti) throws IOException {
            if (com_google_android_gms_internal_zzbti.zzabQ() == zzbtj.NULL) {
                com_google_android_gms_internal_zzbti.nextNull();
                return null;
            }
            throw new UnsupportedOperationException("Attempted to deserialize a java.lang.Class. Forgot to register a type adapter?");
        }
    };
    public static final zzbse zzcoB = zza(Class.class, zzcoA);
    public static final zzbsd<BitSet> zzcoC = new zzbsd<BitSet>() {
        public void zza(zzbtk com_google_android_gms_internal_zzbtk, BitSet bitSet) throws IOException {
            if (bitSet == null) {
                com_google_android_gms_internal_zzbtk.zzaca();
                return;
            }
            com_google_android_gms_internal_zzbtk.zzabW();
            for (int i = 0; i < bitSet.length(); i++) {
                com_google_android_gms_internal_zzbtk.zzaU((long) (bitSet.get(i) ? 1 : 0));
            }
            com_google_android_gms_internal_zzbtk.zzabX();
        }

        public /* synthetic */ Object zzb(zzbti com_google_android_gms_internal_zzbti) throws IOException {
            return zzx(com_google_android_gms_internal_zzbti);
        }

        public BitSet zzx(zzbti com_google_android_gms_internal_zzbti) throws IOException {
            String valueOf;
            if (com_google_android_gms_internal_zzbti.zzabQ() == zzbtj.NULL) {
                com_google_android_gms_internal_zzbti.nextNull();
                return null;
            }
            BitSet bitSet = new BitSet();
            com_google_android_gms_internal_zzbti.beginArray();
            zzbtj zzabQ = com_google_android_gms_internal_zzbti.zzabQ();
            int i = 0;
            while (zzabQ != zzbtj.END_ARRAY) {
                boolean z;
                switch (zzabQ) {
                    case NUMBER:
                        if (com_google_android_gms_internal_zzbti.nextInt() == 0) {
                            z = false;
                            break;
                        }
                        z = true;
                        break;
                    case BOOLEAN:
                        z = com_google_android_gms_internal_zzbti.nextBoolean();
                        break;
                    case STRING:
                        Object nextString = com_google_android_gms_internal_zzbti.nextString();
                        try {
                            if (Integer.parseInt(nextString) == 0) {
                                z = false;
                                break;
                            }
                            z = true;
                            break;
                        } catch (NumberFormatException e) {
                            String str = "Error: Expecting: bitset number value (1, 0), Found: ";
                            valueOf = String.valueOf(nextString);
                            throw new zzbsa(valueOf.length() != 0 ? str.concat(valueOf) : new String(str));
                        }
                    default:
                        valueOf = String.valueOf(zzabQ);
                        throw new zzbsa(new StringBuilder(String.valueOf(valueOf).length() + 27).append("Invalid bitset value type: ").append(valueOf).toString());
                }
                if (z) {
                    bitSet.set(i);
                }
                i++;
                zzabQ = com_google_android_gms_internal_zzbti.zzabQ();
            }
            com_google_android_gms_internal_zzbti.endArray();
            return bitSet;
        }
    };
    public static final zzbse zzcoD = zza(BitSet.class, zzcoC);
    public static final zzbsd<Boolean> zzcoE = new zzbsd<Boolean>() {
        public Boolean zzE(zzbti com_google_android_gms_internal_zzbti) throws IOException {
            if (com_google_android_gms_internal_zzbti.zzabQ() != zzbtj.NULL) {
                return com_google_android_gms_internal_zzbti.zzabQ() == zzbtj.STRING ? Boolean.valueOf(Boolean.parseBoolean(com_google_android_gms_internal_zzbti.nextString())) : Boolean.valueOf(com_google_android_gms_internal_zzbti.nextBoolean());
            } else {
                com_google_android_gms_internal_zzbti.nextNull();
                return null;
            }
        }

        public void zza(zzbtk com_google_android_gms_internal_zzbtk, Boolean bool) throws IOException {
            if (bool == null) {
                com_google_android_gms_internal_zzbtk.zzaca();
            } else {
                com_google_android_gms_internal_zzbtk.zzbg(bool.booleanValue());
            }
        }

        public /* synthetic */ Object zzb(zzbti com_google_android_gms_internal_zzbti) throws IOException {
            return zzE(com_google_android_gms_internal_zzbti);
        }
    };
    public static final zzbsd<Boolean> zzcoF = new zzbsd<Boolean>() {
        public Boolean zzE(zzbti com_google_android_gms_internal_zzbti) throws IOException {
            if (com_google_android_gms_internal_zzbti.zzabQ() != zzbtj.NULL) {
                return Boolean.valueOf(com_google_android_gms_internal_zzbti.nextString());
            }
            com_google_android_gms_internal_zzbti.nextNull();
            return null;
        }

        public void zza(zzbtk com_google_android_gms_internal_zzbtk, Boolean bool) throws IOException {
            com_google_android_gms_internal_zzbtk.zzjX(bool == null ? "null" : bool.toString());
        }

        public /* synthetic */ Object zzb(zzbti com_google_android_gms_internal_zzbti) throws IOException {
            return zzE(com_google_android_gms_internal_zzbti);
        }
    };
    public static final zzbse zzcoG = zza(Boolean.TYPE, Boolean.class, zzcoE);
    public static final zzbsd<Number> zzcoH = new zzbsd<Number>() {
        public void zza(zzbtk com_google_android_gms_internal_zzbtk, Number number) throws IOException {
            com_google_android_gms_internal_zzbtk.zza(number);
        }

        public /* synthetic */ Object zzb(zzbti com_google_android_gms_internal_zzbti) throws IOException {
            return zzg(com_google_android_gms_internal_zzbti);
        }

        public Number zzg(zzbti com_google_android_gms_internal_zzbti) throws IOException {
            if (com_google_android_gms_internal_zzbti.zzabQ() == zzbtj.NULL) {
                com_google_android_gms_internal_zzbti.nextNull();
                return null;
            }
            try {
                return Byte.valueOf((byte) com_google_android_gms_internal_zzbti.nextInt());
            } catch (Throwable e) {
                throw new zzbsa(e);
            }
        }
    };
    public static final zzbse zzcoI = zza(Byte.TYPE, Byte.class, zzcoH);
    public static final zzbsd<Number> zzcoJ = new zzbsd<Number>() {
        public void zza(zzbtk com_google_android_gms_internal_zzbtk, Number number) throws IOException {
            com_google_android_gms_internal_zzbtk.zza(number);
        }

        public /* synthetic */ Object zzb(zzbti com_google_android_gms_internal_zzbti) throws IOException {
            return zzg(com_google_android_gms_internal_zzbti);
        }

        public Number zzg(zzbti com_google_android_gms_internal_zzbti) throws IOException {
            if (com_google_android_gms_internal_zzbti.zzabQ() == zzbtj.NULL) {
                com_google_android_gms_internal_zzbti.nextNull();
                return null;
            }
            try {
                return Short.valueOf((short) com_google_android_gms_internal_zzbti.nextInt());
            } catch (Throwable e) {
                throw new zzbsa(e);
            }
        }
    };
    public static final zzbse zzcoK = zza(Short.TYPE, Short.class, zzcoJ);
    public static final zzbsd<Number> zzcoL = new zzbsd<Number>() {
        public void zza(zzbtk com_google_android_gms_internal_zzbtk, Number number) throws IOException {
            com_google_android_gms_internal_zzbtk.zza(number);
        }

        public /* synthetic */ Object zzb(zzbti com_google_android_gms_internal_zzbti) throws IOException {
            return zzg(com_google_android_gms_internal_zzbti);
        }

        public Number zzg(zzbti com_google_android_gms_internal_zzbti) throws IOException {
            if (com_google_android_gms_internal_zzbti.zzabQ() == zzbtj.NULL) {
                com_google_android_gms_internal_zzbti.nextNull();
                return null;
            }
            try {
                return Integer.valueOf(com_google_android_gms_internal_zzbti.nextInt());
            } catch (Throwable e) {
                throw new zzbsa(e);
            }
        }
    };
    public static final zzbse zzcoM = zza(Integer.TYPE, Integer.class, zzcoL);
    public static final zzbsd<Number> zzcoN = new zzbsd<Number>() {
        public void zza(zzbtk com_google_android_gms_internal_zzbtk, Number number) throws IOException {
            com_google_android_gms_internal_zzbtk.zza(number);
        }

        public /* synthetic */ Object zzb(zzbti com_google_android_gms_internal_zzbti) throws IOException {
            return zzg(com_google_android_gms_internal_zzbti);
        }

        public Number zzg(zzbti com_google_android_gms_internal_zzbti) throws IOException {
            if (com_google_android_gms_internal_zzbti.zzabQ() == zzbtj.NULL) {
                com_google_android_gms_internal_zzbti.nextNull();
                return null;
            }
            try {
                return Long.valueOf(com_google_android_gms_internal_zzbti.nextLong());
            } catch (Throwable e) {
                throw new zzbsa(e);
            }
        }
    };
    public static final zzbsd<Number> zzcoO = new zzbsd<Number>() {
        public void zza(zzbtk com_google_android_gms_internal_zzbtk, Number number) throws IOException {
            com_google_android_gms_internal_zzbtk.zza(number);
        }

        public /* synthetic */ Object zzb(zzbti com_google_android_gms_internal_zzbti) throws IOException {
            return zzg(com_google_android_gms_internal_zzbti);
        }

        public Number zzg(zzbti com_google_android_gms_internal_zzbti) throws IOException {
            if (com_google_android_gms_internal_zzbti.zzabQ() != zzbtj.NULL) {
                return Float.valueOf((float) com_google_android_gms_internal_zzbti.nextDouble());
            }
            com_google_android_gms_internal_zzbti.nextNull();
            return null;
        }
    };
    public static final zzbsd<Number> zzcoP = new zzbsd<Number>() {
        public void zza(zzbtk com_google_android_gms_internal_zzbtk, Number number) throws IOException {
            com_google_android_gms_internal_zzbtk.zza(number);
        }

        public /* synthetic */ Object zzb(zzbti com_google_android_gms_internal_zzbti) throws IOException {
            return zzg(com_google_android_gms_internal_zzbti);
        }

        public Number zzg(zzbti com_google_android_gms_internal_zzbti) throws IOException {
            if (com_google_android_gms_internal_zzbti.zzabQ() != zzbtj.NULL) {
                return Double.valueOf(com_google_android_gms_internal_zzbti.nextDouble());
            }
            com_google_android_gms_internal_zzbti.nextNull();
            return null;
        }
    };
    public static final zzbsd<Number> zzcoQ = new zzbsd<Number>() {
        public void zza(zzbtk com_google_android_gms_internal_zzbtk, Number number) throws IOException {
            com_google_android_gms_internal_zzbtk.zza(number);
        }

        public /* synthetic */ Object zzb(zzbti com_google_android_gms_internal_zzbti) throws IOException {
            return zzg(com_google_android_gms_internal_zzbti);
        }

        public Number zzg(zzbti com_google_android_gms_internal_zzbti) throws IOException {
            zzbtj zzabQ = com_google_android_gms_internal_zzbti.zzabQ();
            switch (zzabQ) {
                case NUMBER:
                    return new zzbso(com_google_android_gms_internal_zzbti.nextString());
                case NULL:
                    com_google_android_gms_internal_zzbti.nextNull();
                    return null;
                default:
                    String valueOf = String.valueOf(zzabQ);
                    throw new zzbsa(new StringBuilder(String.valueOf(valueOf).length() + 23).append("Expecting number, got: ").append(valueOf).toString());
            }
        }
    };
    public static final zzbse zzcoR = zza(Number.class, zzcoQ);
    public static final zzbsd<Character> zzcoS = new zzbsd<Character>() {
        public void zza(zzbtk com_google_android_gms_internal_zzbtk, Character ch) throws IOException {
            com_google_android_gms_internal_zzbtk.zzjX(ch == null ? null : String.valueOf(ch));
        }

        public /* synthetic */ Object zzb(zzbti com_google_android_gms_internal_zzbti) throws IOException {
            return zzp(com_google_android_gms_internal_zzbti);
        }

        public Character zzp(zzbti com_google_android_gms_internal_zzbti) throws IOException {
            if (com_google_android_gms_internal_zzbti.zzabQ() == zzbtj.NULL) {
                com_google_android_gms_internal_zzbti.nextNull();
                return null;
            }
            String nextString = com_google_android_gms_internal_zzbti.nextString();
            if (nextString.length() == 1) {
                return Character.valueOf(nextString.charAt(0));
            }
            String str = "Expecting character, got: ";
            nextString = String.valueOf(nextString);
            throw new zzbsa(nextString.length() != 0 ? str.concat(nextString) : new String(str));
        }
    };
    public static final zzbse zzcoT = zza(Character.TYPE, Character.class, zzcoS);
    public static final zzbsd<String> zzcoU = new zzbsd<String>() {
        public void zza(zzbtk com_google_android_gms_internal_zzbtk, String str) throws IOException {
            com_google_android_gms_internal_zzbtk.zzjX(str);
        }

        public /* synthetic */ Object zzb(zzbti com_google_android_gms_internal_zzbti) throws IOException {
            return zzq(com_google_android_gms_internal_zzbti);
        }

        public String zzq(zzbti com_google_android_gms_internal_zzbti) throws IOException {
            zzbtj zzabQ = com_google_android_gms_internal_zzbti.zzabQ();
            if (zzabQ != zzbtj.NULL) {
                return zzabQ == zzbtj.BOOLEAN ? Boolean.toString(com_google_android_gms_internal_zzbti.nextBoolean()) : com_google_android_gms_internal_zzbti.nextString();
            } else {
                com_google_android_gms_internal_zzbti.nextNull();
                return null;
            }
        }
    };
    public static final zzbsd<BigDecimal> zzcoV = new zzbsd<BigDecimal>() {
        public void zza(zzbtk com_google_android_gms_internal_zzbtk, BigDecimal bigDecimal) throws IOException {
            com_google_android_gms_internal_zzbtk.zza(bigDecimal);
        }

        public /* synthetic */ Object zzb(zzbti com_google_android_gms_internal_zzbti) throws IOException {
            return zzr(com_google_android_gms_internal_zzbti);
        }

        public BigDecimal zzr(zzbti com_google_android_gms_internal_zzbti) throws IOException {
            if (com_google_android_gms_internal_zzbti.zzabQ() == zzbtj.NULL) {
                com_google_android_gms_internal_zzbti.nextNull();
                return null;
            }
            try {
                return new BigDecimal(com_google_android_gms_internal_zzbti.nextString());
            } catch (Throwable e) {
                throw new zzbsa(e);
            }
        }
    };
    public static final zzbsd<BigInteger> zzcoW = new zzbsd<BigInteger>() {
        public void zza(zzbtk com_google_android_gms_internal_zzbtk, BigInteger bigInteger) throws IOException {
            com_google_android_gms_internal_zzbtk.zza(bigInteger);
        }

        public /* synthetic */ Object zzb(zzbti com_google_android_gms_internal_zzbti) throws IOException {
            return zzs(com_google_android_gms_internal_zzbti);
        }

        public BigInteger zzs(zzbti com_google_android_gms_internal_zzbti) throws IOException {
            if (com_google_android_gms_internal_zzbti.zzabQ() == zzbtj.NULL) {
                com_google_android_gms_internal_zzbti.nextNull();
                return null;
            }
            try {
                return new BigInteger(com_google_android_gms_internal_zzbti.nextString());
            } catch (Throwable e) {
                throw new zzbsa(e);
            }
        }
    };
    public static final zzbse zzcoX = zza(String.class, zzcoU);
    public static final zzbsd<StringBuilder> zzcoY = new zzbsd<StringBuilder>() {
        public void zza(zzbtk com_google_android_gms_internal_zzbtk, StringBuilder stringBuilder) throws IOException {
            com_google_android_gms_internal_zzbtk.zzjX(stringBuilder == null ? null : stringBuilder.toString());
        }

        public /* synthetic */ Object zzb(zzbti com_google_android_gms_internal_zzbti) throws IOException {
            return zzt(com_google_android_gms_internal_zzbti);
        }

        public StringBuilder zzt(zzbti com_google_android_gms_internal_zzbti) throws IOException {
            if (com_google_android_gms_internal_zzbti.zzabQ() != zzbtj.NULL) {
                return new StringBuilder(com_google_android_gms_internal_zzbti.nextString());
            }
            com_google_android_gms_internal_zzbti.nextNull();
            return null;
        }
    };
    public static final zzbse zzcoZ = zza(StringBuilder.class, zzcoY);
    public static final zzbsd<StringBuffer> zzcpa = new zzbsd<StringBuffer>() {
        public void zza(zzbtk com_google_android_gms_internal_zzbtk, StringBuffer stringBuffer) throws IOException {
            com_google_android_gms_internal_zzbtk.zzjX(stringBuffer == null ? null : stringBuffer.toString());
        }

        public /* synthetic */ Object zzb(zzbti com_google_android_gms_internal_zzbti) throws IOException {
            return zzu(com_google_android_gms_internal_zzbti);
        }

        public StringBuffer zzu(zzbti com_google_android_gms_internal_zzbti) throws IOException {
            if (com_google_android_gms_internal_zzbti.zzabQ() != zzbtj.NULL) {
                return new StringBuffer(com_google_android_gms_internal_zzbti.nextString());
            }
            com_google_android_gms_internal_zzbti.nextNull();
            return null;
        }
    };
    public static final zzbse zzcpb = zza(StringBuffer.class, zzcpa);
    public static final zzbsd<URL> zzcpc = new zzbsd<URL>() {
        public void zza(zzbtk com_google_android_gms_internal_zzbtk, URL url) throws IOException {
            com_google_android_gms_internal_zzbtk.zzjX(url == null ? null : url.toExternalForm());
        }

        public /* synthetic */ Object zzb(zzbti com_google_android_gms_internal_zzbti) throws IOException {
            return zzv(com_google_android_gms_internal_zzbti);
        }

        public URL zzv(zzbti com_google_android_gms_internal_zzbti) throws IOException {
            if (com_google_android_gms_internal_zzbti.zzabQ() == zzbtj.NULL) {
                com_google_android_gms_internal_zzbti.nextNull();
                return null;
            }
            String nextString = com_google_android_gms_internal_zzbti.nextString();
            return !"null".equals(nextString) ? new URL(nextString) : null;
        }
    };
    public static final zzbse zzcpd = zza(URL.class, zzcpc);
    public static final zzbsd<URI> zzcpe = new zzbsd<URI>() {
        public void zza(zzbtk com_google_android_gms_internal_zzbtk, URI uri) throws IOException {
            com_google_android_gms_internal_zzbtk.zzjX(uri == null ? null : uri.toASCIIString());
        }

        public /* synthetic */ Object zzb(zzbti com_google_android_gms_internal_zzbti) throws IOException {
            return zzw(com_google_android_gms_internal_zzbti);
        }

        public URI zzw(zzbti com_google_android_gms_internal_zzbti) throws IOException {
            URI uri = null;
            if (com_google_android_gms_internal_zzbti.zzabQ() == zzbtj.NULL) {
                com_google_android_gms_internal_zzbti.nextNull();
            } else {
                try {
                    String nextString = com_google_android_gms_internal_zzbti.nextString();
                    if (!"null".equals(nextString)) {
                        uri = new URI(nextString);
                    }
                } catch (Throwable e) {
                    throw new zzbrs(e);
                }
            }
            return uri;
        }
    };
    public static final zzbse zzcpf = zza(URI.class, zzcpe);
    public static final zzbsd<InetAddress> zzcpg = new zzbsd<InetAddress>() {
        public void zza(zzbtk com_google_android_gms_internal_zzbtk, InetAddress inetAddress) throws IOException {
            com_google_android_gms_internal_zzbtk.zzjX(inetAddress == null ? null : inetAddress.getHostAddress());
        }

        public /* synthetic */ Object zzb(zzbti com_google_android_gms_internal_zzbti) throws IOException {
            return zzy(com_google_android_gms_internal_zzbti);
        }

        public InetAddress zzy(zzbti com_google_android_gms_internal_zzbti) throws IOException {
            if (com_google_android_gms_internal_zzbti.zzabQ() != zzbtj.NULL) {
                return InetAddress.getByName(com_google_android_gms_internal_zzbti.nextString());
            }
            com_google_android_gms_internal_zzbti.nextNull();
            return null;
        }
    };
    public static final zzbse zzcph = zzb(InetAddress.class, zzcpg);
    public static final zzbsd<UUID> zzcpi = new zzbsd<UUID>() {
        public void zza(zzbtk com_google_android_gms_internal_zzbtk, UUID uuid) throws IOException {
            com_google_android_gms_internal_zzbtk.zzjX(uuid == null ? null : uuid.toString());
        }

        public /* synthetic */ Object zzb(zzbti com_google_android_gms_internal_zzbti) throws IOException {
            return zzz(com_google_android_gms_internal_zzbti);
        }

        public UUID zzz(zzbti com_google_android_gms_internal_zzbti) throws IOException {
            if (com_google_android_gms_internal_zzbti.zzabQ() != zzbtj.NULL) {
                return UUID.fromString(com_google_android_gms_internal_zzbti.nextString());
            }
            com_google_android_gms_internal_zzbti.nextNull();
            return null;
        }
    };
    public static final zzbse zzcpj = zza(UUID.class, zzcpi);
    public static final zzbse zzcpk = new zzbse() {
        public <T> zzbsd<T> zza(zzbrl com_google_android_gms_internal_zzbrl, zzbth<T> com_google_android_gms_internal_zzbth_T) {
            if (com_google_android_gms_internal_zzbth_T.zzacb() != Timestamp.class) {
                return null;
            }
            final zzbsd zzj = com_google_android_gms_internal_zzbrl.zzj(Date.class);
            return new zzbsd<Timestamp>(this) {
                final /* synthetic */ AnonymousClass15 zzcpt;

                public Timestamp zzA(zzbti com_google_android_gms_internal_zzbti) throws IOException {
                    Date date = (Date) zzj.zzb(com_google_android_gms_internal_zzbti);
                    return date != null ? new Timestamp(date.getTime()) : null;
                }

                public void zza(zzbtk com_google_android_gms_internal_zzbtk, Timestamp timestamp) throws IOException {
                    zzj.zza(com_google_android_gms_internal_zzbtk, timestamp);
                }

                public /* synthetic */ Object zzb(zzbti com_google_android_gms_internal_zzbti) throws IOException {
                    return zzA(com_google_android_gms_internal_zzbti);
                }
            };
        }
    };
    public static final zzbsd<Calendar> zzcpl = new zzbsd<Calendar>() {
        public Calendar zzB(zzbti com_google_android_gms_internal_zzbti) throws IOException {
            int i = 0;
            if (com_google_android_gms_internal_zzbti.zzabQ() == zzbtj.NULL) {
                com_google_android_gms_internal_zzbti.nextNull();
                return null;
            }
            com_google_android_gms_internal_zzbti.beginObject();
            int i2 = 0;
            int i3 = 0;
            int i4 = 0;
            int i5 = 0;
            int i6 = 0;
            while (com_google_android_gms_internal_zzbti.zzabQ() != zzbtj.END_OBJECT) {
                String nextName = com_google_android_gms_internal_zzbti.nextName();
                int nextInt = com_google_android_gms_internal_zzbti.nextInt();
                if ("year".equals(nextName)) {
                    i6 = nextInt;
                } else if ("month".equals(nextName)) {
                    i5 = nextInt;
                } else if ("dayOfMonth".equals(nextName)) {
                    i4 = nextInt;
                } else if ("hourOfDay".equals(nextName)) {
                    i3 = nextInt;
                } else if ("minute".equals(nextName)) {
                    i2 = nextInt;
                } else if ("second".equals(nextName)) {
                    i = nextInt;
                }
            }
            com_google_android_gms_internal_zzbti.endObject();
            return new GregorianCalendar(i6, i5, i4, i3, i2, i);
        }

        public void zza(zzbtk com_google_android_gms_internal_zzbtk, Calendar calendar) throws IOException {
            if (calendar == null) {
                com_google_android_gms_internal_zzbtk.zzaca();
                return;
            }
            com_google_android_gms_internal_zzbtk.zzabY();
            com_google_android_gms_internal_zzbtk.zzjW("year");
            com_google_android_gms_internal_zzbtk.zzaU((long) calendar.get(1));
            com_google_android_gms_internal_zzbtk.zzjW("month");
            com_google_android_gms_internal_zzbtk.zzaU((long) calendar.get(2));
            com_google_android_gms_internal_zzbtk.zzjW("dayOfMonth");
            com_google_android_gms_internal_zzbtk.zzaU((long) calendar.get(5));
            com_google_android_gms_internal_zzbtk.zzjW("hourOfDay");
            com_google_android_gms_internal_zzbtk.zzaU((long) calendar.get(11));
            com_google_android_gms_internal_zzbtk.zzjW("minute");
            com_google_android_gms_internal_zzbtk.zzaU((long) calendar.get(12));
            com_google_android_gms_internal_zzbtk.zzjW("second");
            com_google_android_gms_internal_zzbtk.zzaU((long) calendar.get(13));
            com_google_android_gms_internal_zzbtk.zzabZ();
        }

        public /* synthetic */ Object zzb(zzbti com_google_android_gms_internal_zzbti) throws IOException {
            return zzB(com_google_android_gms_internal_zzbti);
        }
    };
    public static final zzbse zzcpm = zzb(Calendar.class, GregorianCalendar.class, zzcpl);
    public static final zzbsd<Locale> zzcpn = new zzbsd<Locale>() {
        public Locale zzC(zzbti com_google_android_gms_internal_zzbti) throws IOException {
            if (com_google_android_gms_internal_zzbti.zzabQ() == zzbtj.NULL) {
                com_google_android_gms_internal_zzbti.nextNull();
                return null;
            }
            StringTokenizer stringTokenizer = new StringTokenizer(com_google_android_gms_internal_zzbti.nextString(), "_");
            String nextToken = stringTokenizer.hasMoreElements() ? stringTokenizer.nextToken() : null;
            String nextToken2 = stringTokenizer.hasMoreElements() ? stringTokenizer.nextToken() : null;
            String nextToken3 = stringTokenizer.hasMoreElements() ? stringTokenizer.nextToken() : null;
            return (nextToken2 == null && nextToken3 == null) ? new Locale(nextToken) : nextToken3 == null ? new Locale(nextToken, nextToken2) : new Locale(nextToken, nextToken2, nextToken3);
        }

        public void zza(zzbtk com_google_android_gms_internal_zzbtk, Locale locale) throws IOException {
            com_google_android_gms_internal_zzbtk.zzjX(locale == null ? null : locale.toString());
        }

        public /* synthetic */ Object zzb(zzbti com_google_android_gms_internal_zzbti) throws IOException {
            return zzC(com_google_android_gms_internal_zzbti);
        }
    };
    public static final zzbse zzcpo = zza(Locale.class, zzcpn);
    public static final zzbsd<zzbrr> zzcpp = new zzbsd<zzbrr>() {
        public zzbrr zzD(zzbti com_google_android_gms_internal_zzbti) throws IOException {
            zzbrr com_google_android_gms_internal_zzbro;
            switch (com_google_android_gms_internal_zzbti.zzabQ()) {
                case NUMBER:
                    return new zzbrx(new zzbso(com_google_android_gms_internal_zzbti.nextString()));
                case BOOLEAN:
                    return new zzbrx(Boolean.valueOf(com_google_android_gms_internal_zzbti.nextBoolean()));
                case STRING:
                    return new zzbrx(com_google_android_gms_internal_zzbti.nextString());
                case NULL:
                    com_google_android_gms_internal_zzbti.nextNull();
                    return zzbrt.zzcmL;
                case BEGIN_ARRAY:
                    com_google_android_gms_internal_zzbro = new zzbro();
                    com_google_android_gms_internal_zzbti.beginArray();
                    while (com_google_android_gms_internal_zzbti.hasNext()) {
                        com_google_android_gms_internal_zzbro.zzc((zzbrr) zzb(com_google_android_gms_internal_zzbti));
                    }
                    com_google_android_gms_internal_zzbti.endArray();
                    return com_google_android_gms_internal_zzbro;
                case BEGIN_OBJECT:
                    com_google_android_gms_internal_zzbro = new zzbru();
                    com_google_android_gms_internal_zzbti.beginObject();
                    while (com_google_android_gms_internal_zzbti.hasNext()) {
                        com_google_android_gms_internal_zzbro.zza(com_google_android_gms_internal_zzbti.nextName(), (zzbrr) zzb(com_google_android_gms_internal_zzbti));
                    }
                    com_google_android_gms_internal_zzbti.endObject();
                    return com_google_android_gms_internal_zzbro;
                default:
                    throw new IllegalArgumentException();
            }
        }

        public void zza(zzbtk com_google_android_gms_internal_zzbtk, zzbrr com_google_android_gms_internal_zzbrr) throws IOException {
            if (com_google_android_gms_internal_zzbrr == null || com_google_android_gms_internal_zzbrr.zzaby()) {
                com_google_android_gms_internal_zzbtk.zzaca();
            } else if (com_google_android_gms_internal_zzbrr.zzabx()) {
                zzbrx zzabB = com_google_android_gms_internal_zzbrr.zzabB();
                if (zzabB.zzabE()) {
                    com_google_android_gms_internal_zzbtk.zza(zzabB.zzabt());
                } else if (zzabB.zzabD()) {
                    com_google_android_gms_internal_zzbtk.zzbg(zzabB.getAsBoolean());
                } else {
                    com_google_android_gms_internal_zzbtk.zzjX(zzabB.zzabu());
                }
            } else if (com_google_android_gms_internal_zzbrr.zzabv()) {
                com_google_android_gms_internal_zzbtk.zzabW();
                Iterator it = com_google_android_gms_internal_zzbrr.zzabA().iterator();
                while (it.hasNext()) {
                    zza(com_google_android_gms_internal_zzbtk, (zzbrr) it.next());
                }
                com_google_android_gms_internal_zzbtk.zzabX();
            } else if (com_google_android_gms_internal_zzbrr.zzabw()) {
                com_google_android_gms_internal_zzbtk.zzabY();
                for (Entry entry : com_google_android_gms_internal_zzbrr.zzabz().entrySet()) {
                    com_google_android_gms_internal_zzbtk.zzjW((String) entry.getKey());
                    zza(com_google_android_gms_internal_zzbtk, (zzbrr) entry.getValue());
                }
                com_google_android_gms_internal_zzbtk.zzabZ();
            } else {
                String valueOf = String.valueOf(com_google_android_gms_internal_zzbrr.getClass());
                throw new IllegalArgumentException(new StringBuilder(String.valueOf(valueOf).length() + 15).append("Couldn't write ").append(valueOf).toString());
            }
        }

        public /* synthetic */ Object zzb(zzbti com_google_android_gms_internal_zzbti) throws IOException {
            return zzD(com_google_android_gms_internal_zzbti);
        }
    };
    public static final zzbse zzcpq = zzb(zzbrr.class, zzcpp);
    public static final zzbse zzcpr = new zzbse() {
        public <T> zzbsd<T> zza(zzbrl com_google_android_gms_internal_zzbrl, zzbth<T> com_google_android_gms_internal_zzbth_T) {
            Class zzacb = com_google_android_gms_internal_zzbth_T.zzacb();
            if (!Enum.class.isAssignableFrom(zzacb) || zzacb == Enum.class) {
                return null;
            }
            if (!zzacb.isEnum()) {
                zzacb = zzacb.getSuperclass();
            }
            return new zza(zzacb);
        }
    };

    private static final class zza<T extends Enum<T>> extends zzbsd<T> {
        private final Map<String, T> zzcpB = new HashMap();
        private final Map<T, String> zzcpC = new HashMap();

        public zza(Class<T> cls) {
            try {
                for (Enum enumR : (Enum[]) cls.getEnumConstants()) {
                    String name = enumR.name();
                    zzbsg com_google_android_gms_internal_zzbsg = (zzbsg) cls.getField(name).getAnnotation(zzbsg.class);
                    if (com_google_android_gms_internal_zzbsg != null) {
                        name = com_google_android_gms_internal_zzbsg.value();
                        for (Object put : com_google_android_gms_internal_zzbsg.zzabH()) {
                            this.zzcpB.put(put, enumR);
                        }
                    }
                    String str = name;
                    this.zzcpB.put(str, enumR);
                    this.zzcpC.put(enumR, str);
                }
            } catch (NoSuchFieldException e) {
                throw new AssertionError();
            }
        }

        public T zzF(zzbti com_google_android_gms_internal_zzbti) throws IOException {
            if (com_google_android_gms_internal_zzbti.zzabQ() != zzbtj.NULL) {
                return (Enum) this.zzcpB.get(com_google_android_gms_internal_zzbti.nextString());
            }
            com_google_android_gms_internal_zzbti.nextNull();
            return null;
        }

        public void zza(zzbtk com_google_android_gms_internal_zzbtk, T t) throws IOException {
            com_google_android_gms_internal_zzbtk.zzjX(t == null ? null : (String) this.zzcpC.get(t));
        }

        public /* synthetic */ Object zzb(zzbti com_google_android_gms_internal_zzbti) throws IOException {
            return zzF(com_google_android_gms_internal_zzbti);
        }
    }

    public static <TT> zzbse zza(final zzbth<TT> com_google_android_gms_internal_zzbth_TT, final zzbsd<TT> com_google_android_gms_internal_zzbsd_TT) {
        return new zzbse() {
            public <T> zzbsd<T> zza(zzbrl com_google_android_gms_internal_zzbrl, zzbth<T> com_google_android_gms_internal_zzbth_T) {
                return com_google_android_gms_internal_zzbth_T.equals(com_google_android_gms_internal_zzbth_TT) ? com_google_android_gms_internal_zzbsd_TT : null;
            }
        };
    }

    public static <TT> zzbse zza(final Class<TT> cls, final zzbsd<TT> com_google_android_gms_internal_zzbsd_TT) {
        return new zzbse() {
            public String toString() {
                String valueOf = String.valueOf(cls.getName());
                String valueOf2 = String.valueOf(com_google_android_gms_internal_zzbsd_TT);
                return new StringBuilder((String.valueOf(valueOf).length() + 23) + String.valueOf(valueOf2).length()).append("Factory[type=").append(valueOf).append(",adapter=").append(valueOf2).append("]").toString();
            }

            public <T> zzbsd<T> zza(zzbrl com_google_android_gms_internal_zzbrl, zzbth<T> com_google_android_gms_internal_zzbth_T) {
                return com_google_android_gms_internal_zzbth_T.zzacb() == cls ? com_google_android_gms_internal_zzbsd_TT : null;
            }
        };
    }

    public static <TT> zzbse zza(final Class<TT> cls, final Class<TT> cls2, final zzbsd<? super TT> com_google_android_gms_internal_zzbsd__super_TT) {
        return new zzbse() {
            public String toString() {
                String valueOf = String.valueOf(cls2.getName());
                String valueOf2 = String.valueOf(cls.getName());
                String valueOf3 = String.valueOf(com_google_android_gms_internal_zzbsd__super_TT);
                return new StringBuilder(((String.valueOf(valueOf).length() + 24) + String.valueOf(valueOf2).length()) + String.valueOf(valueOf3).length()).append("Factory[type=").append(valueOf).append("+").append(valueOf2).append(",adapter=").append(valueOf3).append("]").toString();
            }

            public <T> zzbsd<T> zza(zzbrl com_google_android_gms_internal_zzbrl, zzbth<T> com_google_android_gms_internal_zzbth_T) {
                Class zzacb = com_google_android_gms_internal_zzbth_T.zzacb();
                return (zzacb == cls || zzacb == cls2) ? com_google_android_gms_internal_zzbsd__super_TT : null;
            }
        };
    }

    public static <TT> zzbse zzb(final Class<TT> cls, final zzbsd<TT> com_google_android_gms_internal_zzbsd_TT) {
        return new zzbse() {
            public String toString() {
                String valueOf = String.valueOf(cls.getName());
                String valueOf2 = String.valueOf(com_google_android_gms_internal_zzbsd_TT);
                return new StringBuilder((String.valueOf(valueOf).length() + 32) + String.valueOf(valueOf2).length()).append("Factory[typeHierarchy=").append(valueOf).append(",adapter=").append(valueOf2).append("]").toString();
            }

            public <T> zzbsd<T> zza(zzbrl com_google_android_gms_internal_zzbrl, zzbth<T> com_google_android_gms_internal_zzbth_T) {
                return cls.isAssignableFrom(com_google_android_gms_internal_zzbth_T.zzacb()) ? com_google_android_gms_internal_zzbsd_TT : null;
            }
        };
    }

    public static <TT> zzbse zzb(final Class<TT> cls, final Class<? extends TT> cls2, final zzbsd<? super TT> com_google_android_gms_internal_zzbsd__super_TT) {
        return new zzbse() {
            public String toString() {
                String valueOf = String.valueOf(cls.getName());
                String valueOf2 = String.valueOf(cls2.getName());
                String valueOf3 = String.valueOf(com_google_android_gms_internal_zzbsd__super_TT);
                return new StringBuilder(((String.valueOf(valueOf).length() + 24) + String.valueOf(valueOf2).length()) + String.valueOf(valueOf3).length()).append("Factory[type=").append(valueOf).append("+").append(valueOf2).append(",adapter=").append(valueOf3).append("]").toString();
            }

            public <T> zzbsd<T> zza(zzbrl com_google_android_gms_internal_zzbrl, zzbth<T> com_google_android_gms_internal_zzbth_T) {
                Class zzacb = com_google_android_gms_internal_zzbth_T.zzacb();
                return (zzacb == cls || zzacb == cls2) ? com_google_android_gms_internal_zzbsd__super_TT : null;
            }
        };
    }
}
