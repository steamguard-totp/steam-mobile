package com.google.android.gms.internal;

import java.io.IOException;
import java.io.Reader;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map.Entry;

public final class zzbsy extends zzbti {
    private static final Reader zzcoc = new Reader() {
        public void close() throws IOException {
            throw new AssertionError();
        }

        public int read(char[] cArr, int i, int i2) throws IOException {
            throw new AssertionError();
        }
    };
    private static final Object zzcod = new Object();
    private final List<Object> zzcoe = new ArrayList();

    public zzbsy(zzbrr com_google_android_gms_internal_zzbrr) {
        super(zzcoc);
        this.zzcoe.add(com_google_android_gms_internal_zzbrr);
    }

    private void zza(zzbtj com_google_android_gms_internal_zzbtj) throws IOException {
        if (zzabQ() != com_google_android_gms_internal_zzbtj) {
            String valueOf = String.valueOf(com_google_android_gms_internal_zzbtj);
            String valueOf2 = String.valueOf(zzabQ());
            throw new IllegalStateException(new StringBuilder((String.valueOf(valueOf).length() + 18) + String.valueOf(valueOf2).length()).append("Expected ").append(valueOf).append(" but was ").append(valueOf2).toString());
        }
    }

    private Object zzabR() {
        return this.zzcoe.get(this.zzcoe.size() - 1);
    }

    private Object zzabS() {
        return this.zzcoe.remove(this.zzcoe.size() - 1);
    }

    public void beginArray() throws IOException {
        zza(zzbtj.BEGIN_ARRAY);
        this.zzcoe.add(((zzbro) zzabR()).iterator());
    }

    public void beginObject() throws IOException {
        zza(zzbtj.BEGIN_OBJECT);
        this.zzcoe.add(((zzbru) zzabR()).entrySet().iterator());
    }

    public void close() throws IOException {
        this.zzcoe.clear();
        this.zzcoe.add(zzcod);
    }

    public void endArray() throws IOException {
        zza(zzbtj.END_ARRAY);
        zzabS();
        zzabS();
    }

    public void endObject() throws IOException {
        zza(zzbtj.END_OBJECT);
        zzabS();
        zzabS();
    }

    public boolean hasNext() throws IOException {
        zzbtj zzabQ = zzabQ();
        return (zzabQ == zzbtj.END_OBJECT || zzabQ == zzbtj.END_ARRAY) ? false : true;
    }

    public boolean nextBoolean() throws IOException {
        zza(zzbtj.BOOLEAN);
        return ((zzbrx) zzabS()).getAsBoolean();
    }

    public double nextDouble() throws IOException {
        zzbtj zzabQ = zzabQ();
        if (zzabQ == zzbtj.NUMBER || zzabQ == zzbtj.STRING) {
            double asDouble = ((zzbrx) zzabR()).getAsDouble();
            if (isLenient() || !(Double.isNaN(asDouble) || Double.isInfinite(asDouble))) {
                zzabS();
                return asDouble;
            }
            throw new NumberFormatException("JSON forbids NaN and infinities: " + asDouble);
        }
        String valueOf = String.valueOf(zzbtj.NUMBER);
        String valueOf2 = String.valueOf(zzabQ);
        throw new IllegalStateException(new StringBuilder((String.valueOf(valueOf).length() + 18) + String.valueOf(valueOf2).length()).append("Expected ").append(valueOf).append(" but was ").append(valueOf2).toString());
    }

    public int nextInt() throws IOException {
        zzbtj zzabQ = zzabQ();
        if (zzabQ == zzbtj.NUMBER || zzabQ == zzbtj.STRING) {
            int asInt = ((zzbrx) zzabR()).getAsInt();
            zzabS();
            return asInt;
        }
        String valueOf = String.valueOf(zzbtj.NUMBER);
        String valueOf2 = String.valueOf(zzabQ);
        throw new IllegalStateException(new StringBuilder((String.valueOf(valueOf).length() + 18) + String.valueOf(valueOf2).length()).append("Expected ").append(valueOf).append(" but was ").append(valueOf2).toString());
    }

    public long nextLong() throws IOException {
        zzbtj zzabQ = zzabQ();
        if (zzabQ == zzbtj.NUMBER || zzabQ == zzbtj.STRING) {
            long asLong = ((zzbrx) zzabR()).getAsLong();
            zzabS();
            return asLong;
        }
        String valueOf = String.valueOf(zzbtj.NUMBER);
        String valueOf2 = String.valueOf(zzabQ);
        throw new IllegalStateException(new StringBuilder((String.valueOf(valueOf).length() + 18) + String.valueOf(valueOf2).length()).append("Expected ").append(valueOf).append(" but was ").append(valueOf2).toString());
    }

    public String nextName() throws IOException {
        zza(zzbtj.NAME);
        Entry entry = (Entry) ((Iterator) zzabR()).next();
        this.zzcoe.add(entry.getValue());
        return (String) entry.getKey();
    }

    public void nextNull() throws IOException {
        zza(zzbtj.NULL);
        zzabS();
    }

    public String nextString() throws IOException {
        zzbtj zzabQ = zzabQ();
        if (zzabQ == zzbtj.STRING || zzabQ == zzbtj.NUMBER) {
            return ((zzbrx) zzabS()).zzabu();
        }
        String valueOf = String.valueOf(zzbtj.STRING);
        String valueOf2 = String.valueOf(zzabQ);
        throw new IllegalStateException(new StringBuilder((String.valueOf(valueOf).length() + 18) + String.valueOf(valueOf2).length()).append("Expected ").append(valueOf).append(" but was ").append(valueOf2).toString());
    }

    public void skipValue() throws IOException {
        if (zzabQ() == zzbtj.NAME) {
            nextName();
        } else {
            zzabS();
        }
    }

    public String toString() {
        return getClass().getSimpleName();
    }

    public zzbtj zzabQ() throws IOException {
        if (this.zzcoe.isEmpty()) {
            return zzbtj.END_DOCUMENT;
        }
        Object zzabR = zzabR();
        if (zzabR instanceof Iterator) {
            boolean z = this.zzcoe.get(this.zzcoe.size() - 2) instanceof zzbru;
            Iterator it = (Iterator) zzabR;
            if (!it.hasNext()) {
                return z ? zzbtj.END_OBJECT : zzbtj.END_ARRAY;
            } else {
                if (z) {
                    return zzbtj.NAME;
                }
                this.zzcoe.add(it.next());
                return zzabQ();
            }
        } else if (zzabR instanceof zzbru) {
            return zzbtj.BEGIN_OBJECT;
        } else {
            if (zzabR instanceof zzbro) {
                return zzbtj.BEGIN_ARRAY;
            }
            if (zzabR instanceof zzbrx) {
                zzbrx com_google_android_gms_internal_zzbrx = (zzbrx) zzabR;
                if (com_google_android_gms_internal_zzbrx.zzabF()) {
                    return zzbtj.STRING;
                }
                if (com_google_android_gms_internal_zzbrx.zzabD()) {
                    return zzbtj.BOOLEAN;
                }
                if (com_google_android_gms_internal_zzbrx.zzabE()) {
                    return zzbtj.NUMBER;
                }
                throw new AssertionError();
            } else if (zzabR instanceof zzbrt) {
                return zzbtj.NULL;
            } else {
                if (zzabR == zzcod) {
                    throw new IllegalStateException("JsonReader is closed");
                }
                throw new AssertionError();
            }
        }
    }

    public void zzabT() throws IOException {
        zza(zzbtj.NAME);
        Entry entry = (Entry) ((Iterator) zzabR()).next();
        this.zzcoe.add(entry.getValue());
        this.zzcoe.add(new zzbrx((String) entry.getKey()));
    }
}
