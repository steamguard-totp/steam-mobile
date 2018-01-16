package com.google.android.gms.internal;

import java.lang.Thread.State;
import java.net.Socket;
import java.net.URI;
import java.nio.charset.Charset;
import java.util.Map;
import java.util.concurrent.Executors;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicInteger;
import javax.net.ssl.HttpsURLConnection;
import javax.net.ssl.SSLSocket;
import javax.net.ssl.SSLSocketFactory;

public class zzbpo {
    private static final AtomicInteger zzchJ = new AtomicInteger(0);
    private static final Charset zzchK = Charset.forName("UTF-8");
    private static ThreadFactory zzchT = Executors.defaultThreadFactory();
    private static zzbpn zzchU = new zzbpn() {
        public void zza(Thread thread, String str) {
            thread.setName(str);
        }
    };
    private final int zzayy = zzchJ.incrementAndGet();
    private volatile zza zzchL = zza.NONE;
    private volatile Socket zzchM = null;
    private zzbpp zzchN = null;
    private final URI zzchO;
    private final zzbpt zzchP;
    private final zzbpu zzchQ;
    private final zzbpr zzchR;
    private final Thread zzchS = getThreadFactory().newThread(new Runnable(this) {
        final /* synthetic */ zzbpo zzchV;

        {
            this.zzchV = r1;
        }

        public void run() {
            this.zzchV.zzZM();
        }
    });

    private enum zza {
        NONE,
        CONNECTING,
        CONNECTED,
        DISCONNECTING,
        DISCONNECTED
    }

    public zzbpo(URI uri, String str, Map<String, String> map) {
        this.zzchO = uri;
        this.zzchR = new zzbpr(uri, str, map);
        this.zzchP = new zzbpt(this);
        this.zzchQ = new zzbpu(this, "TubeSock", this.zzayy);
    }

    private Socket createSocket() {
        Throwable th;
        String str;
        String valueOf;
        String scheme = this.zzchO.getScheme();
        String host = this.zzchO.getHost();
        int port = this.zzchO.getPort();
        if (scheme != null && scheme.equals("ws")) {
            try {
                return new Socket(host, port == -1 ? 80 : port);
            } catch (Throwable e) {
                th = e;
                str = "unknown host: ";
                valueOf = String.valueOf(host);
                throw new zzbpq(valueOf.length() != 0 ? str.concat(valueOf) : new String(str), th);
            } catch (Throwable e2) {
                host = String.valueOf(this.zzchO);
                throw new zzbpq(new StringBuilder(String.valueOf(host).length() + 31).append("error while creating socket to ").append(host).toString(), e2);
            }
        } else if (scheme == null || !scheme.equals("wss")) {
            String str2 = "unsupported protocol: ";
            valueOf = String.valueOf(scheme);
            throw new zzbpq(valueOf.length() != 0 ? str2.concat(valueOf) : new String(str2));
        } else {
            if (port == -1) {
                port = 443;
            }
            try {
                SSLSocket sSLSocket = (SSLSocket) SSLSocketFactory.getDefault().createSocket(host, port);
                if (HttpsURLConnection.getDefaultHostnameVerifier().verify(host, sSLSocket.getSession())) {
                    return sSLSocket;
                }
                scheme = String.valueOf(this.zzchO);
                throw new zzbpq(new StringBuilder(String.valueOf(scheme).length() + 39).append("Error while verifying secure socket to ").append(scheme).toString());
            } catch (Throwable e22) {
                th = e22;
                str = "unknown host: ";
                valueOf = String.valueOf(host);
                throw new zzbpq(valueOf.length() != 0 ? str.concat(valueOf) : new String(str), th);
            } catch (Throwable e222) {
                host = String.valueOf(this.zzchO);
                throw new zzbpq(new StringBuilder(String.valueOf(host).length() + 38).append("error while creating secure socket to ").append(host).toString(), e222);
            }
        }
    }

    static ThreadFactory getThreadFactory() {
        return zzchT;
    }

    static zzbpn zzZG() {
        return zzchU;
    }

    private synchronized void zzZJ() {
        if (this.zzchL != zza.DISCONNECTED) {
            this.zzchP.zzZQ();
            this.zzchQ.zzZT();
            if (this.zzchM != null) {
                try {
                    this.zzchM.close();
                } catch (Throwable e) {
                    throw new RuntimeException(e);
                }
            }
            this.zzchL = zza.DISCONNECTED;
            this.zzchN.onClose();
        }
    }

    private void zzZK() {
        try {
            this.zzchL = zza.DISCONNECTING;
            this.zzchQ.zzZT();
            this.zzchQ.zzb((byte) 8, true, new byte[0]);
        } catch (Throwable e) {
            this.zzchN.zza(new zzbpq("Failed to send close frame", e));
        }
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private void zzZM() {
        /*
        r11 = this;
        r4 = 1;
        r10 = 1000; // 0x3e8 float:1.401E-42 double:4.94E-321;
        r1 = 0;
        r0 = r11.createSocket();	 Catch:{ zzbpq -> 0x0028, IOException -> 0x0065 }
        monitor-enter(r11);	 Catch:{ zzbpq -> 0x0028, IOException -> 0x0065 }
        r11.zzchM = r0;	 Catch:{ all -> 0x0025 }
        r2 = r11.zzchL;	 Catch:{ all -> 0x0025 }
        r3 = com.google.android.gms.internal.zzbpo.zza.DISCONNECTED;	 Catch:{ all -> 0x0025 }
        if (r2 != r3) goto L_0x0032;
    L_0x0011:
        r0 = r11.zzchM;	 Catch:{ IOException -> 0x001e }
        r0.close();	 Catch:{ IOException -> 0x001e }
        r0 = 0;
        r11.zzchM = r0;	 Catch:{ all -> 0x0025 }
        monitor-exit(r11);	 Catch:{ all -> 0x0025 }
        r11.close();
    L_0x001d:
        return;
    L_0x001e:
        r0 = move-exception;
        r1 = new java.lang.RuntimeException;	 Catch:{ all -> 0x0025 }
        r1.<init>(r0);	 Catch:{ all -> 0x0025 }
        throw r1;	 Catch:{ all -> 0x0025 }
    L_0x0025:
        r0 = move-exception;
        monitor-exit(r11);	 Catch:{ all -> 0x0025 }
        throw r0;	 Catch:{ zzbpq -> 0x0028, IOException -> 0x0065 }
    L_0x0028:
        r0 = move-exception;
        r1 = r11.zzchN;	 Catch:{ all -> 0x00e1 }
        r1.zza(r0);	 Catch:{ all -> 0x00e1 }
        r11.close();
        goto L_0x001d;
    L_0x0032:
        monitor-exit(r11);	 Catch:{ all -> 0x0025 }
        r5 = new java.io.DataInputStream;	 Catch:{ zzbpq -> 0x0028, IOException -> 0x0065 }
        r2 = r0.getInputStream();	 Catch:{ zzbpq -> 0x0028, IOException -> 0x0065 }
        r5.<init>(r2);	 Catch:{ zzbpq -> 0x0028, IOException -> 0x0065 }
        r6 = r0.getOutputStream();	 Catch:{ zzbpq -> 0x0028, IOException -> 0x0065 }
        r0 = r11.zzchR;	 Catch:{ zzbpq -> 0x0028, IOException -> 0x0065 }
        r0 = r0.zzZO();	 Catch:{ zzbpq -> 0x0028, IOException -> 0x0065 }
        r6.write(r0);	 Catch:{ zzbpq -> 0x0028, IOException -> 0x0065 }
        r0 = 1000; // 0x3e8 float:1.401E-42 double:4.94E-321;
        r2 = new byte[r0];	 Catch:{ zzbpq -> 0x0028, IOException -> 0x0065 }
        r7 = new java.util.ArrayList;	 Catch:{ zzbpq -> 0x0028, IOException -> 0x0065 }
        r7.<init>();	 Catch:{ zzbpq -> 0x0028, IOException -> 0x0065 }
        r0 = r1;
        r3 = r1;
    L_0x0054:
        if (r3 != 0) goto L_0x00ec;
    L_0x0056:
        r8 = r5.read();	 Catch:{ zzbpq -> 0x0028, IOException -> 0x0065 }
        r9 = -1;
        if (r8 != r9) goto L_0x0088;
    L_0x005d:
        r0 = new com.google.android.gms.internal.zzbpq;	 Catch:{ zzbpq -> 0x0028, IOException -> 0x0065 }
        r1 = "Connection closed before handshake was complete";
        r0.<init>(r1);	 Catch:{ zzbpq -> 0x0028, IOException -> 0x0065 }
        throw r0;	 Catch:{ zzbpq -> 0x0028, IOException -> 0x0065 }
    L_0x0065:
        r0 = move-exception;
        r2 = r11.zzchN;	 Catch:{ all -> 0x00e1 }
        r3 = new com.google.android.gms.internal.zzbpq;	 Catch:{ all -> 0x00e1 }
        r4 = "error while connecting: ";
        r1 = r0.getMessage();	 Catch:{ all -> 0x00e1 }
        r1 = java.lang.String.valueOf(r1);	 Catch:{ all -> 0x00e1 }
        r5 = r1.length();	 Catch:{ all -> 0x00e1 }
        if (r5 == 0) goto L_0x014d;
    L_0x007a:
        r1 = r4.concat(r1);	 Catch:{ all -> 0x00e1 }
    L_0x007e:
        r3.<init>(r1, r0);	 Catch:{ all -> 0x00e1 }
        r2.zza(r3);	 Catch:{ all -> 0x00e1 }
        r11.close();
        goto L_0x001d;
    L_0x0088:
        r8 = (byte) r8;
        r2[r0] = r8;	 Catch:{ zzbpq -> 0x0028, IOException -> 0x0065 }
        r0 = r0 + 1;
        r8 = r0 + -1;
        r8 = r2[r8];	 Catch:{ zzbpq -> 0x0028, IOException -> 0x0065 }
        r9 = 10;
        if (r8 != r9) goto L_0x00c2;
    L_0x0095:
        r8 = r0 + -2;
        r8 = r2[r8];	 Catch:{ zzbpq -> 0x0028, IOException -> 0x0065 }
        r9 = 13;
        if (r8 != r9) goto L_0x00c2;
    L_0x009d:
        r0 = new java.lang.String;	 Catch:{ zzbpq -> 0x0028, IOException -> 0x0065 }
        r8 = zzchK;	 Catch:{ zzbpq -> 0x0028, IOException -> 0x0065 }
        r0.<init>(r2, r8);	 Catch:{ zzbpq -> 0x0028, IOException -> 0x0065 }
        r2 = r0.trim();	 Catch:{ zzbpq -> 0x0028, IOException -> 0x0065 }
        r8 = "";
        r2 = r2.equals(r8);	 Catch:{ zzbpq -> 0x0028, IOException -> 0x0065 }
        if (r2 == 0) goto L_0x00b9;
    L_0x00b0:
        r2 = r4;
    L_0x00b1:
        r0 = 1000; // 0x3e8 float:1.401E-42 double:4.94E-321;
        r0 = new byte[r0];	 Catch:{ zzbpq -> 0x0028, IOException -> 0x0065 }
        r3 = r2;
        r2 = r0;
        r0 = r1;
        goto L_0x0054;
    L_0x00b9:
        r0 = r0.trim();	 Catch:{ zzbpq -> 0x0028, IOException -> 0x0065 }
        r7.add(r0);	 Catch:{ zzbpq -> 0x0028, IOException -> 0x0065 }
        r2 = r3;
        goto L_0x00b1;
    L_0x00c2:
        if (r0 != r10) goto L_0x0054;
    L_0x00c4:
        r0 = new java.lang.String;	 Catch:{ zzbpq -> 0x0028, IOException -> 0x0065 }
        r1 = zzchK;	 Catch:{ zzbpq -> 0x0028, IOException -> 0x0065 }
        r0.<init>(r2, r1);	 Catch:{ zzbpq -> 0x0028, IOException -> 0x0065 }
        r1 = new com.google.android.gms.internal.zzbpq;	 Catch:{ zzbpq -> 0x0028, IOException -> 0x0065 }
        r2 = "Unexpected long line in handshake: ";
        r0 = java.lang.String.valueOf(r0);	 Catch:{ zzbpq -> 0x0028, IOException -> 0x0065 }
        r3 = r0.length();	 Catch:{ zzbpq -> 0x0028, IOException -> 0x0065 }
        if (r3 == 0) goto L_0x00e6;
    L_0x00d9:
        r0 = r2.concat(r0);	 Catch:{ zzbpq -> 0x0028, IOException -> 0x0065 }
    L_0x00dd:
        r1.<init>(r0);	 Catch:{ zzbpq -> 0x0028, IOException -> 0x0065 }
        throw r1;	 Catch:{ zzbpq -> 0x0028, IOException -> 0x0065 }
    L_0x00e1:
        r0 = move-exception;
        r11.close();
        throw r0;
    L_0x00e6:
        r0 = new java.lang.String;	 Catch:{ zzbpq -> 0x0028, IOException -> 0x0065 }
        r0.<init>(r2);	 Catch:{ zzbpq -> 0x0028, IOException -> 0x0065 }
        goto L_0x00dd;
    L_0x00ec:
        r1 = r11.zzchR;	 Catch:{ zzbpq -> 0x0028, IOException -> 0x0065 }
        r0 = 0;
        r0 = r7.get(r0);	 Catch:{ zzbpq -> 0x0028, IOException -> 0x0065 }
        r0 = (java.lang.String) r0;	 Catch:{ zzbpq -> 0x0028, IOException -> 0x0065 }
        r1.zzjd(r0);	 Catch:{ zzbpq -> 0x0028, IOException -> 0x0065 }
        r0 = 0;
        r7.remove(r0);	 Catch:{ zzbpq -> 0x0028, IOException -> 0x0065 }
        r1 = new java.util.HashMap;	 Catch:{ zzbpq -> 0x0028, IOException -> 0x0065 }
        r1.<init>();	 Catch:{ zzbpq -> 0x0028, IOException -> 0x0065 }
        r2 = r7.iterator();	 Catch:{ zzbpq -> 0x0028, IOException -> 0x0065 }
    L_0x0105:
        r0 = r2.hasNext();	 Catch:{ zzbpq -> 0x0028, IOException -> 0x0065 }
        if (r0 == 0) goto L_0x0122;
    L_0x010b:
        r0 = r2.next();	 Catch:{ zzbpq -> 0x0028, IOException -> 0x0065 }
        r0 = (java.lang.String) r0;	 Catch:{ zzbpq -> 0x0028, IOException -> 0x0065 }
        r3 = ": ";
        r4 = 2;
        r0 = r0.split(r3, r4);	 Catch:{ zzbpq -> 0x0028, IOException -> 0x0065 }
        r3 = 0;
        r3 = r0[r3];	 Catch:{ zzbpq -> 0x0028, IOException -> 0x0065 }
        r4 = 1;
        r0 = r0[r4];	 Catch:{ zzbpq -> 0x0028, IOException -> 0x0065 }
        r1.put(r3, r0);	 Catch:{ zzbpq -> 0x0028, IOException -> 0x0065 }
        goto L_0x0105;
    L_0x0122:
        r0 = r11.zzchR;	 Catch:{ zzbpq -> 0x0028, IOException -> 0x0065 }
        r0.zzd(r1);	 Catch:{ zzbpq -> 0x0028, IOException -> 0x0065 }
        r0 = r11.zzchQ;	 Catch:{ zzbpq -> 0x0028, IOException -> 0x0065 }
        r0.zzb(r6);	 Catch:{ zzbpq -> 0x0028, IOException -> 0x0065 }
        r0 = r11.zzchP;	 Catch:{ zzbpq -> 0x0028, IOException -> 0x0065 }
        r0.zza(r5);	 Catch:{ zzbpq -> 0x0028, IOException -> 0x0065 }
        r0 = com.google.android.gms.internal.zzbpo.zza.CONNECTED;	 Catch:{ zzbpq -> 0x0028, IOException -> 0x0065 }
        r11.zzchL = r0;	 Catch:{ zzbpq -> 0x0028, IOException -> 0x0065 }
        r0 = r11.zzchQ;	 Catch:{ zzbpq -> 0x0028, IOException -> 0x0065 }
        r0 = r0.zzZN();	 Catch:{ zzbpq -> 0x0028, IOException -> 0x0065 }
        r0.start();	 Catch:{ zzbpq -> 0x0028, IOException -> 0x0065 }
        r0 = r11.zzchN;	 Catch:{ zzbpq -> 0x0028, IOException -> 0x0065 }
        r0.zzWt();	 Catch:{ zzbpq -> 0x0028, IOException -> 0x0065 }
        r0 = r11.zzchP;	 Catch:{ zzbpq -> 0x0028, IOException -> 0x0065 }
        r0.run();	 Catch:{ zzbpq -> 0x0028, IOException -> 0x0065 }
        r11.close();
        goto L_0x001d;
    L_0x014d:
        r1 = new java.lang.String;	 Catch:{ all -> 0x00e1 }
        r1.<init>(r4);	 Catch:{ all -> 0x00e1 }
        goto L_0x007e;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.zzbpo.zzZM():void");
    }

    private synchronized void zza(byte b, byte[] bArr) {
        if (this.zzchL != zza.CONNECTED) {
            this.zzchN.zza(new zzbpq("error while sending data: not connected"));
        } else {
            try {
                this.zzchQ.zzb(b, true, bArr);
            } catch (Throwable e) {
                this.zzchN.zza(new zzbpq("Failed to send frame", e));
                close();
            }
        }
    }

    public synchronized void close() {
        switch (this.zzchL) {
            case NONE:
                this.zzchL = zza.DISCONNECTED;
                break;
            case CONNECTING:
                zzZJ();
                break;
            case CONNECTED:
                zzZK();
                break;
        }
    }

    public synchronized void connect() {
        if (this.zzchL != zza.NONE) {
            this.zzchN.zza(new zzbpq("connect() already called"));
            close();
        } else {
            zzbpn zzZG = zzZG();
            Thread zzZN = zzZN();
            String valueOf = String.valueOf("TubeSockReader-");
            zzZG.zza(zzZN, new StringBuilder(String.valueOf(valueOf).length() + 11).append(valueOf).append(this.zzayy).toString());
            this.zzchL = zza.CONNECTING;
            zzZN().start();
        }
    }

    synchronized void zzW(byte[] bArr) {
        zza((byte) 10, bArr);
    }

    zzbpp zzZH() {
        return this.zzchN;
    }

    void zzZI() {
        zzZJ();
    }

    public void zzZL() throws InterruptedException {
        if (this.zzchQ.zzZN().getState() != State.NEW) {
            this.zzchQ.zzZN().join();
        }
        zzZN().join();
    }

    Thread zzZN() {
        return this.zzchS;
    }

    public void zza(zzbpp com_google_android_gms_internal_zzbpp) {
        this.zzchN = com_google_android_gms_internal_zzbpp;
    }

    void zzb(zzbpq com_google_android_gms_internal_zzbpq) {
        this.zzchN.zza(com_google_android_gms_internal_zzbpq);
        if (this.zzchL == zza.CONNECTED) {
            close();
        }
        zzZJ();
    }

    public synchronized void zziT(String str) {
        zza((byte) 1, str.getBytes(zzchK));
    }
}
