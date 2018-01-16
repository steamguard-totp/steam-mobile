package com.google.android.gms.internal;

import java.io.IOException;
import java.io.Reader;
import java.nio.CharBuffer;
import java.util.ArrayList;
import java.util.List;

public class zzblx extends Reader {
    private boolean closed;
    private List<String> zzcbs;
    private int zzcbt;
    private int zzcbu;
    private int zzcbv;
    private int zzcbw;
    private boolean zzcbx;

    public zzblx() {
        this.zzcbs = null;
        this.closed = false;
        this.zzcbv = this.zzcbt;
        this.zzcbw = this.zzcbu;
        this.zzcbx = false;
        this.zzcbs = new ArrayList();
    }

    private String zzWA() {
        return this.zzcbu < this.zzcbs.size() ? (String) this.zzcbs.get(this.zzcbu) : null;
    }

    private int zzWB() {
        String zzWA = zzWA();
        return zzWA == null ? 0 : zzWA.length() - this.zzcbt;
    }

    private void zzWC() throws IOException {
        if (this.closed) {
            throw new IOException("Stream already closed");
        } else if (!this.zzcbx) {
            throw new IOException("Reader needs to be frozen before read operations can be called");
        }
    }

    private long zzaK(long j) {
        long j2 = 0;
        while (this.zzcbu < this.zzcbs.size() && j2 < j) {
            int zzWB = zzWB();
            long j3 = j - j2;
            if (j3 < ((long) zzWB)) {
                this.zzcbt = (int) (((long) this.zzcbt) + j3);
                j2 += j3;
            } else {
                j2 += (long) zzWB;
                this.zzcbt = 0;
                this.zzcbu++;
            }
        }
        return j2;
    }

    public void close() throws IOException {
        zzWC();
        this.closed = true;
    }

    public void mark(int i) throws IOException {
        zzWC();
        this.zzcbv = this.zzcbt;
        this.zzcbw = this.zzcbu;
    }

    public boolean markSupported() {
        return true;
    }

    public int read() throws IOException {
        zzWC();
        String zzWA = zzWA();
        if (zzWA == null) {
            return -1;
        }
        char charAt = zzWA.charAt(this.zzcbt);
        zzaK(1);
        return charAt;
    }

    public int read(CharBuffer charBuffer) throws IOException {
        zzWC();
        int remaining = charBuffer.remaining();
        int i = 0;
        String zzWA = zzWA();
        while (remaining > 0 && zzWA != null) {
            int min = Math.min(zzWA.length() - this.zzcbt, remaining);
            charBuffer.put((String) this.zzcbs.get(this.zzcbu), this.zzcbt, this.zzcbt + min);
            remaining -= min;
            i += min;
            zzaK((long) min);
            zzWA = zzWA();
        }
        return (i > 0 || zzWA != null) ? i : -1;
    }

    public int read(char[] cArr, int i, int i2) throws IOException {
        zzWC();
        int i3 = 0;
        String zzWA = zzWA();
        while (zzWA != null && i3 < i2) {
            int min = Math.min(zzWB(), i2 - i3);
            zzWA.getChars(this.zzcbt, this.zzcbt + min, cArr, i + i3);
            int i4 = i3 + min;
            zzaK((long) min);
            i3 = i4;
            zzWA = zzWA();
        }
        return (i3 > 0 || zzWA != null) ? i3 : -1;
    }

    public boolean ready() throws IOException {
        zzWC();
        return true;
    }

    public void reset() throws IOException {
        this.zzcbt = this.zzcbv;
        this.zzcbu = this.zzcbw;
    }

    public long skip(long j) throws IOException {
        zzWC();
        return zzaK(j);
    }

    public String toString() {
        StringBuilder stringBuilder = new StringBuilder();
        for (String append : this.zzcbs) {
            stringBuilder.append(append);
        }
        return stringBuilder.toString();
    }

    public void zzWz() {
        if (this.zzcbx) {
            throw new IllegalStateException("Trying to freeze frozen StringListReader");
        }
        this.zzcbx = true;
    }

    public void zziU(String str) {
        if (this.zzcbx) {
            throw new IllegalStateException("Trying to add string after reading");
        } else if (str.length() > 0) {
            this.zzcbs.add(str);
        }
    }
}
