package com.google.android.gms.internal;

import java.io.DataInputStream;
import java.io.IOException;
import java.net.SocketTimeoutException;

class zzbpt {
    private zzbpp zzchN = null;
    private DataInputStream zzcii = null;
    private zzbpo zzcij = null;
    private byte[] zzcik = new byte[112];
    private zzb zzcil;
    private volatile boolean zzcim = false;

    zzbpt(zzbpo com_google_android_gms_internal_zzbpo) {
        this.zzcij = com_google_android_gms_internal_zzbpo;
    }

    private int read(byte[] bArr, int i, int i2) throws IOException {
        this.zzcii.readFully(bArr, i, i2);
        return i2;
    }

    private void zzX(byte[] bArr) {
        if (bArr.length <= 125) {
            this.zzcij.zzW(bArr);
            return;
        }
        throw new zzbpq("PING frame too long");
    }

    private void zza(boolean z, byte b, byte[] bArr) {
        if (b == (byte) 9) {
            if (z) {
                zzX(bArr);
                return;
            }
            throw new zzbpq("PING must not fragment across frames");
        } else if (this.zzcil != null && b != (byte) 0) {
            throw new zzbpq("Failed to continue outstanding frame");
        } else if (this.zzcil == null && b == (byte) 0) {
            throw new zzbpq("Received continuing frame, but there's nothing to continue");
        } else {
            if (this.zzcil == null) {
                this.zzcil = zzbpm.zzb(b);
            }
            if (!this.zzcil.zzU(bArr)) {
                throw new zzbpq("Failed to decode frame");
            } else if (z) {
                zzbps zzZD = this.zzcil.zzZD();
                this.zzcil = null;
                this.zzchN.zza(zzZD);
            }
        }
    }

    private void zzc(zzbpq com_google_android_gms_internal_zzbpq) {
        zzZQ();
        this.zzcij.zzb(com_google_android_gms_internal_zzbpq);
    }

    private long zze(byte[] bArr, int i) {
        return (((((((((long) bArr[i + 0]) << 56) + (((long) (bArr[i + 1] & 255)) << 48)) + (((long) (bArr[i + 2] & 255)) << 40)) + (((long) (bArr[i + 3] & 255)) << 32)) + (((long) (bArr[i + 4] & 255)) << 24)) + ((long) ((bArr[i + 5] & 255) << 16))) + ((long) ((bArr[i + 6] & 255) << 8))) + ((long) ((bArr[i + 7] & 255) << 0));
    }

    void run() {
        this.zzchN = this.zzcij.zzZH();
        while (!this.zzcim) {
            try {
                int read = read(this.zzcik, 0, 1) + 0;
                boolean z = (this.zzcik[0] & 128) != 0;
                if (((this.zzcik[0] & 112) != 0 ? 1 : null) != null) {
                    throw new zzbpq("Invalid frame received");
                }
                byte b = (byte) (this.zzcik[0] & 15);
                int read2 = read + read(this.zzcik, read, 1);
                byte b2 = this.zzcik[1];
                long j = 0;
                if (b2 < (byte) 126) {
                    j = (long) b2;
                } else if (b2 == (byte) 126) {
                    read(this.zzcik, read2, 2);
                    j = (long) (((this.zzcik[2] & 255) << 8) | (this.zzcik[3] & 255));
                } else if (b2 == Byte.MAX_VALUE) {
                    j = zze(this.zzcik, (read(this.zzcik, read2, 8) + read2) - 8);
                }
                byte[] bArr = new byte[((int) j)];
                read(bArr, 0, (int) j);
                if (b == (byte) 8) {
                    this.zzcij.zzZI();
                } else if (b == (byte) 10) {
                    continue;
                } else if (b == (byte) 1 || b == (byte) 2 || b == (byte) 9 || b == (byte) 0) {
                    zza(z, b, bArr);
                } else {
                    throw new zzbpq("Unsupported opcode: " + b);
                }
            } catch (SocketTimeoutException e) {
            } catch (Throwable e2) {
                zzc(new zzbpq("IO Error", e2));
            } catch (zzbpq e3) {
                zzc(e3);
            }
        }
    }

    void zzZQ() {
        this.zzcim = true;
    }

    void zza(DataInputStream dataInputStream) {
        this.zzcii = dataInputStream;
    }
}
