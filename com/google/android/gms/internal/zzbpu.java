package com.google.android.gms.internal;

import java.io.IOException;
import java.io.OutputStream;
import java.nio.ByteBuffer;
import java.nio.channels.Channels;
import java.nio.channels.WritableByteChannel;
import java.util.Random;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.LinkedBlockingQueue;

class zzbpu {
    private final Random zzcbl = new Random();
    private final Thread zzchS = zzbpo.getThreadFactory().newThread(new Runnable(this) {
        final /* synthetic */ zzbpu zzciq;

        {
            this.zzciq = r1;
        }

        public void run() {
            this.zzciq.zzZU();
        }
    });
    private zzbpo zzcij;
    private volatile boolean zzcim = false;
    private BlockingQueue<ByteBuffer> zzcin;
    private boolean zzcio = false;
    private WritableByteChannel zzcip;

    zzbpu(zzbpo com_google_android_gms_internal_zzbpo, String str, int i) {
        zzbpo.zzZG().zza(zzZN(), new StringBuilder(String.valueOf(str).length() + 18).append(str).append("Writer-").append(i).toString());
        this.zzcij = com_google_android_gms_internal_zzbpo;
        this.zzcin = new LinkedBlockingQueue();
    }

    private byte[] zzZR() {
        byte[] bArr = new byte[4];
        this.zzcbl.nextBytes(bArr);
        return bArr;
    }

    private void zzZS() throws InterruptedException, IOException {
        this.zzcip.write((ByteBuffer) this.zzcin.take());
    }

    private void zzZU() {
        while (!this.zzcim && !Thread.interrupted()) {
            try {
                zzZS();
            } catch (Throwable e) {
                zzc(new zzbpq("IO Exception", e));
                return;
            } catch (InterruptedException e2) {
                return;
            }
        }
        for (int i = 0; i < this.zzcin.size(); i++) {
            zzZS();
        }
    }

    private ByteBuffer zza(byte b, boolean z, byte[] bArr) throws IOException {
        int i = 2;
        if (z) {
            i = 6;
        }
        int length = bArr.length;
        if (length >= 126) {
            i = length <= 65535 ? i + 2 : i + 8;
        }
        ByteBuffer allocate = ByteBuffer.allocate(i + bArr.length);
        allocate.put((byte) (b | -128));
        if (length < 126) {
            allocate.put((byte) (z ? length | 128 : length));
        } else if (length <= 65535) {
            allocate.put((byte) (z ? 254 : 126));
            allocate.putShort((short) length);
        } else {
            i = 127;
            if (z) {
                i = 255;
            }
            allocate.put((byte) i);
            allocate.putInt(0);
            allocate.putInt(length);
        }
        if (z) {
            byte[] zzZR = zzZR();
            allocate.put(zzZR);
            for (i = 0; i < bArr.length; i++) {
                allocate.put((byte) (bArr[i] ^ zzZR[i % 4]));
            }
        }
        allocate.flip();
        return allocate;
    }

    private void zzc(zzbpq com_google_android_gms_internal_zzbpq) {
        this.zzcij.zzb(com_google_android_gms_internal_zzbpq);
    }

    Thread zzZN() {
        return this.zzchS;
    }

    void zzZT() {
        this.zzcim = true;
    }

    synchronized void zzb(byte b, boolean z, byte[] bArr) throws IOException {
        ByteBuffer zza = zza(b, z, bArr);
        if (!this.zzcim || (!this.zzcio && b == (byte) 8)) {
            if (b == (byte) 8) {
                this.zzcio = true;
            }
            this.zzcin.add(zza);
        } else {
            throw new zzbpq("Shouldn't be sending");
        }
    }

    void zzb(OutputStream outputStream) {
        this.zzcip = Channels.newChannel(outputStream);
    }
}
