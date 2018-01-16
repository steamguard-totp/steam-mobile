package com.google.android.gms.internal;

import java.io.IOException;
import java.io.StringWriter;
import java.io.Writer;

public abstract class zzbrr {
    public boolean getAsBoolean() {
        throw new UnsupportedOperationException(getClass().getSimpleName());
    }

    public double getAsDouble() {
        throw new UnsupportedOperationException(getClass().getSimpleName());
    }

    public int getAsInt() {
        throw new UnsupportedOperationException(getClass().getSimpleName());
    }

    public long getAsLong() {
        throw new UnsupportedOperationException(getClass().getSimpleName());
    }

    public String toString() {
        try {
            Writer stringWriter = new StringWriter();
            zzbtk com_google_android_gms_internal_zzbtk = new zzbtk(stringWriter);
            com_google_android_gms_internal_zzbtk.setLenient(true);
            zzbss.zzb(this, com_google_android_gms_internal_zzbtk);
            return stringWriter.toString();
        } catch (IOException e) {
            throw new AssertionError(e);
        }
    }

    public zzbro zzabA() {
        if (zzabv()) {
            return (zzbro) this;
        }
        throw new IllegalStateException("This is not a JSON Array.");
    }

    public zzbrx zzabB() {
        if (zzabx()) {
            return (zzbrx) this;
        }
        throw new IllegalStateException("This is not a JSON Primitive.");
    }

    Boolean zzabC() {
        throw new UnsupportedOperationException(getClass().getSimpleName());
    }

    public Number zzabt() {
        throw new UnsupportedOperationException(getClass().getSimpleName());
    }

    public String zzabu() {
        throw new UnsupportedOperationException(getClass().getSimpleName());
    }

    public boolean zzabv() {
        return this instanceof zzbro;
    }

    public boolean zzabw() {
        return this instanceof zzbru;
    }

    public boolean zzabx() {
        return this instanceof zzbrx;
    }

    public boolean zzaby() {
        return this instanceof zzbrt;
    }

    public zzbru zzabz() {
        if (zzabw()) {
            return (zzbru) this;
        }
        String valueOf = String.valueOf(this);
        throw new IllegalStateException(new StringBuilder(String.valueOf(valueOf).length() + 19).append("Not a JSON Object: ").append(valueOf).toString());
    }
}
