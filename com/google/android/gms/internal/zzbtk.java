package com.google.android.gms.internal;

import java.io.Closeable;
import java.io.Flushable;
import java.io.IOException;
import java.io.Writer;

public class zzbtk implements Closeable, Flushable {
    private static final String[] zzcqd = new String[128];
    private static final String[] zzcqe = ((String[]) zzcqd.clone());
    private final Writer out;
    private String separator;
    private boolean zzcmv;
    private boolean zzcmw;
    private boolean zzcpG;
    private int[] zzcpO = new int[32];
    private int zzcpP = 0;
    private String zzcqf;
    private String zzcqg;

    static {
        for (int i = 0; i <= 31; i++) {
            zzcqd[i] = String.format("\\u%04x", new Object[]{Integer.valueOf(i)});
        }
        zzcqd[34] = "\\\"";
        zzcqd[92] = "\\\\";
        zzcqd[9] = "\\t";
        zzcqd[8] = "\\b";
        zzcqd[10] = "\\n";
        zzcqd[13] = "\\r";
        zzcqd[12] = "\\f";
        zzcqe[60] = "\\u003c";
        zzcqe[62] = "\\u003e";
        zzcqe[38] = "\\u0026";
        zzcqe[61] = "\\u003d";
        zzcqe[39] = "\\u0027";
    }

    public zzbtk(Writer writer) {
        zzqd(6);
        this.separator = ":";
        this.zzcmv = true;
        if (writer == null) {
            throw new NullPointerException("out == null");
        }
        this.out = writer;
    }

    private int zzaco() {
        if (this.zzcpP != 0) {
            return this.zzcpO[this.zzcpP - 1];
        }
        throw new IllegalStateException("JsonWriter is closed.");
    }

    private void zzacp() throws IOException {
        if (this.zzcqg != null) {
            zzacr();
            zzka(this.zzcqg);
            this.zzcqg = null;
        }
    }

    private void zzacq() throws IOException {
        if (this.zzcqf != null) {
            this.out.write("\n");
            int i = this.zzcpP;
            for (int i2 = 1; i2 < i; i2++) {
                this.out.write(this.zzcqf);
            }
        }
    }

    private void zzacr() throws IOException {
        int zzaco = zzaco();
        if (zzaco == 5) {
            this.out.write(44);
        } else if (zzaco != 3) {
            throw new IllegalStateException("Nesting problem.");
        }
        zzacq();
        zzqf(4);
    }

    private void zzbk(boolean z) throws IOException {
        switch (zzaco()) {
            case 1:
                zzqf(2);
                zzacq();
                return;
            case 2:
                this.out.append(',');
                zzacq();
                return;
            case 4:
                this.out.append(this.separator);
                zzqf(5);
                return;
            case 6:
                break;
            case 7:
                if (!this.zzcpG) {
                    throw new IllegalStateException("JSON must have only one top-level value.");
                }
                break;
            default:
                throw new IllegalStateException("Nesting problem.");
        }
        if (this.zzcpG || z) {
            zzqf(7);
            return;
        }
        throw new IllegalStateException("JSON must start with an array or an object.");
    }

    private zzbtk zzc(int i, int i2, String str) throws IOException {
        int zzaco = zzaco();
        if (zzaco != i2 && zzaco != i) {
            throw new IllegalStateException("Nesting problem.");
        } else if (this.zzcqg != null) {
            String str2 = "Dangling name: ";
            String valueOf = String.valueOf(this.zzcqg);
            throw new IllegalStateException(valueOf.length() != 0 ? str2.concat(valueOf) : new String(str2));
        } else {
            this.zzcpP--;
            if (zzaco == i2) {
                zzacq();
            }
            this.out.write(str);
            return this;
        }
    }

    private void zzka(String str) throws IOException {
        int i = 0;
        String[] strArr = this.zzcmw ? zzcqe : zzcqd;
        this.out.write("\"");
        int length = str.length();
        for (int i2 = 0; i2 < length; i2++) {
            char charAt = str.charAt(i2);
            String str2;
            if (charAt < '') {
                str2 = strArr[charAt];
                if (str2 == null) {
                }
                if (i < i2) {
                    this.out.write(str, i, i2 - i);
                }
                this.out.write(str2);
                i = i2 + 1;
            } else {
                if (charAt == ' ') {
                    str2 = "\\u2028";
                } else if (charAt == ' ') {
                    str2 = "\\u2029";
                }
                if (i < i2) {
                    this.out.write(str, i, i2 - i);
                }
                this.out.write(str2);
                i = i2 + 1;
            }
        }
        if (i < length) {
            this.out.write(str, i, length - i);
        }
        this.out.write("\"");
    }

    private zzbtk zzp(int i, String str) throws IOException {
        zzbk(true);
        zzqd(i);
        this.out.write(str);
        return this;
    }

    private void zzqd(int i) {
        if (this.zzcpP == this.zzcpO.length) {
            Object obj = new int[(this.zzcpP * 2)];
            System.arraycopy(this.zzcpO, 0, obj, 0, this.zzcpP);
            this.zzcpO = obj;
        }
        int[] iArr = this.zzcpO;
        int i2 = this.zzcpP;
        this.zzcpP = i2 + 1;
        iArr[i2] = i;
    }

    private void zzqf(int i) {
        this.zzcpO[this.zzcpP - 1] = i;
    }

    public void close() throws IOException {
        this.out.close();
        int i = this.zzcpP;
        if (i > 1 || (i == 1 && this.zzcpO[i - 1] != 7)) {
            throw new IOException("Incomplete document");
        }
        this.zzcpP = 0;
    }

    public void flush() throws IOException {
        if (this.zzcpP == 0) {
            throw new IllegalStateException("JsonWriter is closed.");
        }
        this.out.flush();
    }

    public boolean isLenient() {
        return this.zzcpG;
    }

    public final void setIndent(String str) {
        if (str.length() == 0) {
            this.zzcqf = null;
            this.separator = ":";
            return;
        }
        this.zzcqf = str;
        this.separator = ": ";
    }

    public final void setLenient(boolean z) {
        this.zzcpG = z;
    }

    public zzbtk zza(Number number) throws IOException {
        if (number == null) {
            return zzaca();
        }
        zzacp();
        CharSequence obj = number.toString();
        if (this.zzcpG || !(obj.equals("-Infinity") || obj.equals("Infinity") || obj.equals("NaN"))) {
            zzbk(false);
            this.out.append(obj);
            return this;
        }
        String valueOf = String.valueOf(number);
        throw new IllegalArgumentException(new StringBuilder(String.valueOf(valueOf).length() + 39).append("Numeric values must be finite, but was ").append(valueOf).toString());
    }

    public zzbtk zzaU(long j) throws IOException {
        zzacp();
        zzbk(false);
        this.out.write(Long.toString(j));
        return this;
    }

    public zzbtk zzabW() throws IOException {
        zzacp();
        return zzp(1, "[");
    }

    public zzbtk zzabX() throws IOException {
        return zzc(1, 2, "]");
    }

    public zzbtk zzabY() throws IOException {
        zzacp();
        return zzp(3, "{");
    }

    public zzbtk zzabZ() throws IOException {
        return zzc(3, 5, "}");
    }

    public zzbtk zzaca() throws IOException {
        if (this.zzcqg != null) {
            if (this.zzcmv) {
                zzacp();
            } else {
                this.zzcqg = null;
                return this;
            }
        }
        zzbk(false);
        this.out.write("null");
        return this;
    }

    public final boolean zzacm() {
        return this.zzcmw;
    }

    public final boolean zzacn() {
        return this.zzcmv;
    }

    public zzbtk zzbg(boolean z) throws IOException {
        zzacp();
        zzbk(false);
        this.out.write(z ? "true" : "false");
        return this;
    }

    public final void zzbi(boolean z) {
        this.zzcmw = z;
    }

    public final void zzbj(boolean z) {
        this.zzcmv = z;
    }

    public zzbtk zzjW(String str) throws IOException {
        if (str == null) {
            throw new NullPointerException("name == null");
        } else if (this.zzcqg != null) {
            throw new IllegalStateException();
        } else if (this.zzcpP == 0) {
            throw new IllegalStateException("JsonWriter is closed.");
        } else {
            this.zzcqg = str;
            return this;
        }
    }

    public zzbtk zzjX(String str) throws IOException {
        if (str == null) {
            return zzaca();
        }
        zzacp();
        zzbk(false);
        zzka(str);
        return this;
    }
}
