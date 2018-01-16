package com.google.android.gms.internal;

import java.io.IOException;
import java.io.Writer;
import java.util.ArrayList;
import java.util.List;

public final class zzbsz extends zzbtk {
    private static final Writer zzcof = new Writer() {
        public void close() throws IOException {
            throw new AssertionError();
        }

        public void flush() throws IOException {
            throw new AssertionError();
        }

        public void write(char[] cArr, int i, int i2) {
            throw new AssertionError();
        }
    };
    private static final zzbrx zzcog = new zzbrx("closed");
    private final List<zzbrr> zzcoe = new ArrayList();
    private String zzcoh;
    private zzbrr zzcoi = zzbrt.zzcmL;

    public zzbsz() {
        super(zzcof);
    }

    private zzbrr zzabV() {
        return (zzbrr) this.zzcoe.get(this.zzcoe.size() - 1);
    }

    private void zzd(zzbrr com_google_android_gms_internal_zzbrr) {
        if (this.zzcoh != null) {
            if (!com_google_android_gms_internal_zzbrr.zzaby() || zzacn()) {
                ((zzbru) zzabV()).zza(this.zzcoh, com_google_android_gms_internal_zzbrr);
            }
            this.zzcoh = null;
        } else if (this.zzcoe.isEmpty()) {
            this.zzcoi = com_google_android_gms_internal_zzbrr;
        } else {
            zzbrr zzabV = zzabV();
            if (zzabV instanceof zzbro) {
                ((zzbro) zzabV).zzc(com_google_android_gms_internal_zzbrr);
                return;
            }
            throw new IllegalStateException();
        }
    }

    public void close() throws IOException {
        if (this.zzcoe.isEmpty()) {
            this.zzcoe.add(zzcog);
            return;
        }
        throw new IOException("Incomplete document");
    }

    public void flush() throws IOException {
    }

    public zzbtk zza(Number number) throws IOException {
        if (number == null) {
            return zzaca();
        }
        if (!isLenient()) {
            double doubleValue = number.doubleValue();
            if (Double.isNaN(doubleValue) || Double.isInfinite(doubleValue)) {
                String valueOf = String.valueOf(number);
                throw new IllegalArgumentException(new StringBuilder(String.valueOf(valueOf).length() + 33).append("JSON forbids NaN and infinities: ").append(valueOf).toString());
            }
        }
        zzd(new zzbrx(number));
        return this;
    }

    public zzbtk zzaU(long j) throws IOException {
        zzd(new zzbrx(Long.valueOf(j)));
        return this;
    }

    public zzbrr zzabU() {
        if (this.zzcoe.isEmpty()) {
            return this.zzcoi;
        }
        String valueOf = String.valueOf(this.zzcoe);
        throw new IllegalStateException(new StringBuilder(String.valueOf(valueOf).length() + 34).append("Expected one JSON element but was ").append(valueOf).toString());
    }

    public zzbtk zzabW() throws IOException {
        zzbrr com_google_android_gms_internal_zzbro = new zzbro();
        zzd(com_google_android_gms_internal_zzbro);
        this.zzcoe.add(com_google_android_gms_internal_zzbro);
        return this;
    }

    public zzbtk zzabX() throws IOException {
        if (this.zzcoe.isEmpty() || this.zzcoh != null) {
            throw new IllegalStateException();
        } else if (zzabV() instanceof zzbro) {
            this.zzcoe.remove(this.zzcoe.size() - 1);
            return this;
        } else {
            throw new IllegalStateException();
        }
    }

    public zzbtk zzabY() throws IOException {
        zzbrr com_google_android_gms_internal_zzbru = new zzbru();
        zzd(com_google_android_gms_internal_zzbru);
        this.zzcoe.add(com_google_android_gms_internal_zzbru);
        return this;
    }

    public zzbtk zzabZ() throws IOException {
        if (this.zzcoe.isEmpty() || this.zzcoh != null) {
            throw new IllegalStateException();
        } else if (zzabV() instanceof zzbru) {
            this.zzcoe.remove(this.zzcoe.size() - 1);
            return this;
        } else {
            throw new IllegalStateException();
        }
    }

    public zzbtk zzaca() throws IOException {
        zzd(zzbrt.zzcmL);
        return this;
    }

    public zzbtk zzbg(boolean z) throws IOException {
        zzd(new zzbrx(Boolean.valueOf(z)));
        return this;
    }

    public zzbtk zzjW(String str) throws IOException {
        if (this.zzcoe.isEmpty() || this.zzcoh != null) {
            throw new IllegalStateException();
        } else if (zzabV() instanceof zzbru) {
            this.zzcoh = str;
            return this;
        } else {
            throw new IllegalStateException();
        }
    }

    public zzbtk zzjX(String str) throws IOException {
        if (str == null) {
            return zzaca();
        }
        zzd(new zzbrx(str));
        return this;
    }
}
