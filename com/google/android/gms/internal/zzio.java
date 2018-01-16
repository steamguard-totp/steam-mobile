package com.google.android.gms.internal;

import java.io.File;
import java.io.IOException;
import java.text.DecimalFormat;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;

@zzmb
public class zzio extends zzil {
    private static final Set<String> zzIh = Collections.synchronizedSet(new HashSet());
    private static final DecimalFormat zzIi = new DecimalFormat("#,###");
    private File zzIj;
    private boolean zzIk;

    public zzio(zzqp com_google_android_gms_internal_zzqp) {
        super(com_google_android_gms_internal_zzqp);
        File cacheDir = this.mContext.getCacheDir();
        if (cacheDir == null) {
            zzpy.zzbe("Context.getCacheDir() returned null");
            return;
        }
        this.zzIj = new File(cacheDir, "admobVideoStreams");
        String str;
        String valueOf;
        if (!this.zzIj.isDirectory() && !this.zzIj.mkdirs()) {
            str = "Could not create preload cache directory at ";
            valueOf = String.valueOf(this.zzIj.getAbsolutePath());
            zzpy.zzbe(valueOf.length() != 0 ? str.concat(valueOf) : new String(str));
            this.zzIj = null;
        } else if (!this.zzIj.setReadable(true, false) || !this.zzIj.setExecutable(true, false)) {
            str = "Could not set cache file permissions at ";
            valueOf = String.valueOf(this.zzIj.getAbsolutePath());
            zzpy.zzbe(valueOf.length() != 0 ? str.concat(valueOf) : new String(str));
            this.zzIj = null;
        }
    }

    private File zzb(File file) {
        return new File(this.zzIj, String.valueOf(file.getName()).concat(".done"));
    }

    private static void zzc(File file) {
        if (file.isFile()) {
            file.setLastModified(System.currentTimeMillis());
            return;
        }
        try {
            file.createNewFile();
        } catch (IOException e) {
        }
    }

    public void abort() {
        this.zzIk = true;
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public boolean zzad(java.lang.String r27) {
        /*
        r26 = this;
        r0 = r26;
        r2 = r0.zzIj;
        if (r2 != 0) goto L_0x0013;
    L_0x0006:
        r2 = 0;
        r3 = "noCacheDir";
        r4 = 0;
        r0 = r26;
        r1 = r27;
        r0.zza(r1, r2, r3, r4);
        r2 = 0;
    L_0x0012:
        return r2;
    L_0x0013:
        r3 = r26.zzgg();
        r2 = com.google.android.gms.internal.zzfx.zzBh;
        r2 = r2.get();
        r2 = (java.lang.Integer) r2;
        r2 = r2.intValue();
        if (r3 <= r2) goto L_0x003d;
    L_0x0025:
        r2 = r26.zzgh();
        if (r2 != 0) goto L_0x0013;
    L_0x002b:
        r2 = "Unable to expire stream cache";
        com.google.android.gms.internal.zzpy.zzbe(r2);
        r2 = 0;
        r3 = "expireFailed";
        r4 = 0;
        r0 = r26;
        r1 = r27;
        r0.zza(r1, r2, r3, r4);
        r2 = 0;
        goto L_0x0012;
    L_0x003d:
        r2 = r26.zzae(r27);
        r12 = new java.io.File;
        r0 = r26;
        r3 = r0.zzIj;
        r12.<init>(r3, r2);
        r0 = r26;
        r13 = r0.zzb(r12);
        r2 = r12.isFile();
        if (r2 == 0) goto L_0x0087;
    L_0x0056:
        r2 = r13.isFile();
        if (r2 == 0) goto L_0x0087;
    L_0x005c:
        r2 = r12.length();
        r3 = (int) r2;
        r4 = "Stream cache hit at ";
        r2 = java.lang.String.valueOf(r27);
        r5 = r2.length();
        if (r5 == 0) goto L_0x0081;
    L_0x006d:
        r2 = r4.concat(r2);
    L_0x0071:
        com.google.android.gms.internal.zzpy.zzbc(r2);
        r2 = r12.getAbsolutePath();
        r0 = r26;
        r1 = r27;
        r0.zza(r1, r2, r3);
        r2 = 1;
        goto L_0x0012;
    L_0x0081:
        r2 = new java.lang.String;
        r2.<init>(r4);
        goto L_0x0071;
    L_0x0087:
        r0 = r26;
        r2 = r0.zzIj;
        r2 = r2.getAbsolutePath();
        r3 = java.lang.String.valueOf(r2);
        r2 = java.lang.String.valueOf(r27);
        r4 = r2.length();
        if (r4 == 0) goto L_0x00d5;
    L_0x009d:
        r2 = r3.concat(r2);
        r8 = r2;
    L_0x00a2:
        r3 = zzIh;
        monitor-enter(r3);
        r2 = zzIh;	 Catch:{ all -> 0x00d2 }
        r2 = r2.contains(r8);	 Catch:{ all -> 0x00d2 }
        if (r2 == 0) goto L_0x00e2;
    L_0x00ad:
        r4 = "Stream cache already in progress at ";
        r2 = java.lang.String.valueOf(r27);	 Catch:{ all -> 0x00d2 }
        r5 = r2.length();	 Catch:{ all -> 0x00d2 }
        if (r5 == 0) goto L_0x00dc;
    L_0x00b9:
        r2 = r4.concat(r2);	 Catch:{ all -> 0x00d2 }
    L_0x00bd:
        com.google.android.gms.internal.zzpy.zzbe(r2);	 Catch:{ all -> 0x00d2 }
        r2 = r12.getAbsolutePath();	 Catch:{ all -> 0x00d2 }
        r4 = "inProgress";
        r5 = 0;
        r0 = r26;
        r1 = r27;
        r0.zza(r1, r2, r4, r5);	 Catch:{ all -> 0x00d2 }
        r2 = 0;
        monitor-exit(r3);	 Catch:{ all -> 0x00d2 }
        goto L_0x0012;
    L_0x00d2:
        r2 = move-exception;
        monitor-exit(r3);	 Catch:{ all -> 0x00d2 }
        throw r2;
    L_0x00d5:
        r2 = new java.lang.String;
        r2.<init>(r3);
        r8 = r2;
        goto L_0x00a2;
    L_0x00dc:
        r2 = new java.lang.String;	 Catch:{ all -> 0x00d2 }
        r2.<init>(r4);	 Catch:{ all -> 0x00d2 }
        goto L_0x00bd;
    L_0x00e2:
        r2 = zzIh;	 Catch:{ all -> 0x00d2 }
        r2.add(r8);	 Catch:{ all -> 0x00d2 }
        monitor-exit(r3);	 Catch:{ all -> 0x00d2 }
        r5 = 0;
        r10 = "error";
        r9 = 0;
        r3 = com.google.android.gms.ads.internal.zzv.zzcW();	 Catch:{ IOException -> 0x020b, RuntimeException -> 0x0285 }
        r2 = com.google.android.gms.internal.zzfx.zzBn;	 Catch:{ IOException -> 0x020b, RuntimeException -> 0x0285 }
        r2 = r2.get();	 Catch:{ IOException -> 0x020b, RuntimeException -> 0x0285 }
        r2 = (java.lang.Integer) r2;	 Catch:{ IOException -> 0x020b, RuntimeException -> 0x0285 }
        r2 = r2.intValue();	 Catch:{ IOException -> 0x020b, RuntimeException -> 0x0285 }
        r0 = r27;
        r3 = r3.zzb(r0, r2);	 Catch:{ IOException -> 0x020b, RuntimeException -> 0x0285 }
        r2 = r3 instanceof java.net.HttpURLConnection;	 Catch:{ IOException -> 0x020b, RuntimeException -> 0x0285 }
        if (r2 == 0) goto L_0x01d6;
    L_0x0106:
        r0 = r3;
        r0 = (java.net.HttpURLConnection) r0;	 Catch:{ IOException -> 0x020b, RuntimeException -> 0x0285 }
        r2 = r0;
        r2 = r2.getResponseCode();	 Catch:{ IOException -> 0x020b, RuntimeException -> 0x0285 }
        r4 = 400; // 0x190 float:5.6E-43 double:1.976E-321;
        if (r2 < r4) goto L_0x01d6;
    L_0x0112:
        r4 = "badUrl";
        r6 = "HTTP request failed. Code: ";
        r3 = java.lang.Integer.toString(r2);	 Catch:{ IOException -> 0x01d3, RuntimeException -> 0x0450 }
        r3 = java.lang.String.valueOf(r3);	 Catch:{ IOException -> 0x01d3, RuntimeException -> 0x0450 }
        r7 = r3.length();	 Catch:{ IOException -> 0x01d3, RuntimeException -> 0x0450 }
        if (r7 == 0) goto L_0x01cc;
    L_0x0124:
        r3 = r6.concat(r3);	 Catch:{ IOException -> 0x01d3, RuntimeException -> 0x0450 }
    L_0x0128:
        r6 = new java.io.IOException;	 Catch:{ IOException -> 0x0157, RuntimeException -> 0x0454 }
        r7 = new java.lang.StringBuilder;	 Catch:{ IOException -> 0x0157, RuntimeException -> 0x0454 }
        r9 = java.lang.String.valueOf(r27);	 Catch:{ IOException -> 0x0157, RuntimeException -> 0x0454 }
        r9 = r9.length();	 Catch:{ IOException -> 0x0157, RuntimeException -> 0x0454 }
        r9 = r9 + 32;
        r7.<init>(r9);	 Catch:{ IOException -> 0x0157, RuntimeException -> 0x0454 }
        r9 = "HTTP status code ";
        r7 = r7.append(r9);	 Catch:{ IOException -> 0x0157, RuntimeException -> 0x0454 }
        r2 = r7.append(r2);	 Catch:{ IOException -> 0x0157, RuntimeException -> 0x0454 }
        r7 = " at ";
        r2 = r2.append(r7);	 Catch:{ IOException -> 0x0157, RuntimeException -> 0x0454 }
        r0 = r27;
        r2 = r2.append(r0);	 Catch:{ IOException -> 0x0157, RuntimeException -> 0x0454 }
        r2 = r2.toString();	 Catch:{ IOException -> 0x0157, RuntimeException -> 0x0454 }
        r6.<init>(r2);	 Catch:{ IOException -> 0x0157, RuntimeException -> 0x0454 }
        throw r6;	 Catch:{ IOException -> 0x0157, RuntimeException -> 0x0454 }
    L_0x0157:
        r2 = move-exception;
    L_0x0158:
        r6 = r2 instanceof java.lang.RuntimeException;
        if (r6 == 0) goto L_0x0165;
    L_0x015c:
        r6 = com.google.android.gms.ads.internal.zzv.zzcN();
        r7 = "VideoStreamFullFileCache.preload";
        r6.zza(r2, r7);
    L_0x0165:
        r5.close();	 Catch:{ IOException -> 0x044a, NullPointerException -> 0x044d }
    L_0x0168:
        r0 = r26;
        r5 = r0.zzIk;
        if (r5 == 0) goto L_0x0419;
    L_0x016e:
        r2 = new java.lang.StringBuilder;
        r5 = java.lang.String.valueOf(r27);
        r5 = r5.length();
        r5 = r5 + 26;
        r2.<init>(r5);
        r5 = "Preload aborted for URL \"";
        r2 = r2.append(r5);
        r0 = r27;
        r2 = r2.append(r0);
        r5 = "\"";
        r2 = r2.append(r5);
        r2 = r2.toString();
        com.google.android.gms.internal.zzpy.zzbd(r2);
    L_0x0196:
        r2 = r12.exists();
        if (r2 == 0) goto L_0x01b9;
    L_0x019c:
        r2 = r12.delete();
        if (r2 != 0) goto L_0x01b9;
    L_0x01a2:
        r5 = "Could not delete partial cache file at ";
        r2 = r12.getAbsolutePath();
        r2 = java.lang.String.valueOf(r2);
        r6 = r2.length();
        if (r6 == 0) goto L_0x0443;
    L_0x01b2:
        r2 = r5.concat(r2);
    L_0x01b6:
        com.google.android.gms.internal.zzpy.zzbe(r2);
    L_0x01b9:
        r2 = r12.getAbsolutePath();
        r0 = r26;
        r1 = r27;
        r0.zza(r1, r2, r4, r3);
        r2 = zzIh;
        r2.remove(r8);
        r2 = 0;
        goto L_0x0012;
    L_0x01cc:
        r3 = new java.lang.String;	 Catch:{ IOException -> 0x01d3, RuntimeException -> 0x0450 }
        r3.<init>(r6);	 Catch:{ IOException -> 0x01d3, RuntimeException -> 0x0450 }
        goto L_0x0128;
    L_0x01d3:
        r2 = move-exception;
        r3 = r9;
        goto L_0x0158;
    L_0x01d6:
        r6 = r3.getContentLength();	 Catch:{ IOException -> 0x020b, RuntimeException -> 0x0285 }
        if (r6 >= 0) goto L_0x0210;
    L_0x01dc:
        r3 = "Stream cache aborted, missing content-length header at ";
        r2 = java.lang.String.valueOf(r27);	 Catch:{ IOException -> 0x020b, RuntimeException -> 0x0285 }
        r4 = r2.length();	 Catch:{ IOException -> 0x020b, RuntimeException -> 0x0285 }
        if (r4 == 0) goto L_0x0205;
    L_0x01e8:
        r2 = r3.concat(r2);	 Catch:{ IOException -> 0x020b, RuntimeException -> 0x0285 }
    L_0x01ec:
        com.google.android.gms.internal.zzpy.zzbe(r2);	 Catch:{ IOException -> 0x020b, RuntimeException -> 0x0285 }
        r2 = r12.getAbsolutePath();	 Catch:{ IOException -> 0x020b, RuntimeException -> 0x0285 }
        r3 = "contentLengthMissing";
        r4 = 0;
        r0 = r26;
        r1 = r27;
        r0.zza(r1, r2, r3, r4);	 Catch:{ IOException -> 0x020b, RuntimeException -> 0x0285 }
        r2 = zzIh;	 Catch:{ IOException -> 0x020b, RuntimeException -> 0x0285 }
        r2.remove(r8);	 Catch:{ IOException -> 0x020b, RuntimeException -> 0x0285 }
        r2 = 0;
        goto L_0x0012;
    L_0x0205:
        r2 = new java.lang.String;	 Catch:{ IOException -> 0x020b, RuntimeException -> 0x0285 }
        r2.<init>(r3);	 Catch:{ IOException -> 0x020b, RuntimeException -> 0x0285 }
        goto L_0x01ec;
    L_0x020b:
        r2 = move-exception;
        r3 = r9;
        r4 = r10;
        goto L_0x0158;
    L_0x0210:
        r2 = zzIi;	 Catch:{ IOException -> 0x020b, RuntimeException -> 0x0285 }
        r14 = (long) r6;	 Catch:{ IOException -> 0x020b, RuntimeException -> 0x0285 }
        r4 = r2.format(r14);	 Catch:{ IOException -> 0x020b, RuntimeException -> 0x0285 }
        r2 = com.google.android.gms.internal.zzfx.zzBi;	 Catch:{ IOException -> 0x020b, RuntimeException -> 0x0285 }
        r2 = r2.get();	 Catch:{ IOException -> 0x020b, RuntimeException -> 0x0285 }
        r2 = (java.lang.Integer) r2;	 Catch:{ IOException -> 0x020b, RuntimeException -> 0x0285 }
        r14 = r2.intValue();	 Catch:{ IOException -> 0x020b, RuntimeException -> 0x0285 }
        if (r6 <= r14) goto L_0x028a;
    L_0x0225:
        r2 = new java.lang.StringBuilder;	 Catch:{ IOException -> 0x020b, RuntimeException -> 0x0285 }
        r3 = java.lang.String.valueOf(r4);	 Catch:{ IOException -> 0x020b, RuntimeException -> 0x0285 }
        r3 = r3.length();	 Catch:{ IOException -> 0x020b, RuntimeException -> 0x0285 }
        r3 = r3 + 33;
        r6 = java.lang.String.valueOf(r27);	 Catch:{ IOException -> 0x020b, RuntimeException -> 0x0285 }
        r6 = r6.length();	 Catch:{ IOException -> 0x020b, RuntimeException -> 0x0285 }
        r3 = r3 + r6;
        r2.<init>(r3);	 Catch:{ IOException -> 0x020b, RuntimeException -> 0x0285 }
        r3 = "Content length ";
        r2 = r2.append(r3);	 Catch:{ IOException -> 0x020b, RuntimeException -> 0x0285 }
        r2 = r2.append(r4);	 Catch:{ IOException -> 0x020b, RuntimeException -> 0x0285 }
        r3 = " exceeds limit at ";
        r2 = r2.append(r3);	 Catch:{ IOException -> 0x020b, RuntimeException -> 0x0285 }
        r0 = r27;
        r2 = r2.append(r0);	 Catch:{ IOException -> 0x020b, RuntimeException -> 0x0285 }
        r2 = r2.toString();	 Catch:{ IOException -> 0x020b, RuntimeException -> 0x0285 }
        com.google.android.gms.internal.zzpy.zzbe(r2);	 Catch:{ IOException -> 0x020b, RuntimeException -> 0x0285 }
        r3 = "File too big for full file cache. Size: ";
        r2 = java.lang.String.valueOf(r4);	 Catch:{ IOException -> 0x020b, RuntimeException -> 0x0285 }
        r4 = r2.length();	 Catch:{ IOException -> 0x020b, RuntimeException -> 0x0285 }
        if (r4 == 0) goto L_0x027f;
    L_0x0266:
        r2 = r3.concat(r2);	 Catch:{ IOException -> 0x020b, RuntimeException -> 0x0285 }
    L_0x026a:
        r3 = r12.getAbsolutePath();	 Catch:{ IOException -> 0x020b, RuntimeException -> 0x0285 }
        r4 = "sizeExceeded";
        r0 = r26;
        r1 = r27;
        r0.zza(r1, r3, r4, r2);	 Catch:{ IOException -> 0x020b, RuntimeException -> 0x0285 }
        r2 = zzIh;	 Catch:{ IOException -> 0x020b, RuntimeException -> 0x0285 }
        r2.remove(r8);	 Catch:{ IOException -> 0x020b, RuntimeException -> 0x0285 }
        r2 = 0;
        goto L_0x0012;
    L_0x027f:
        r2 = new java.lang.String;	 Catch:{ IOException -> 0x020b, RuntimeException -> 0x0285 }
        r2.<init>(r3);	 Catch:{ IOException -> 0x020b, RuntimeException -> 0x0285 }
        goto L_0x026a;
    L_0x0285:
        r2 = move-exception;
        r3 = r9;
        r4 = r10;
        goto L_0x0158;
    L_0x028a:
        r2 = new java.lang.StringBuilder;	 Catch:{ IOException -> 0x020b, RuntimeException -> 0x0285 }
        r7 = java.lang.String.valueOf(r4);	 Catch:{ IOException -> 0x020b, RuntimeException -> 0x0285 }
        r7 = r7.length();	 Catch:{ IOException -> 0x020b, RuntimeException -> 0x0285 }
        r7 = r7 + 20;
        r11 = java.lang.String.valueOf(r27);	 Catch:{ IOException -> 0x020b, RuntimeException -> 0x0285 }
        r11 = r11.length();	 Catch:{ IOException -> 0x020b, RuntimeException -> 0x0285 }
        r7 = r7 + r11;
        r2.<init>(r7);	 Catch:{ IOException -> 0x020b, RuntimeException -> 0x0285 }
        r7 = "Caching ";
        r2 = r2.append(r7);	 Catch:{ IOException -> 0x020b, RuntimeException -> 0x0285 }
        r2 = r2.append(r4);	 Catch:{ IOException -> 0x020b, RuntimeException -> 0x0285 }
        r4 = " bytes from ";
        r2 = r2.append(r4);	 Catch:{ IOException -> 0x020b, RuntimeException -> 0x0285 }
        r0 = r27;
        r2 = r2.append(r0);	 Catch:{ IOException -> 0x020b, RuntimeException -> 0x0285 }
        r2 = r2.toString();	 Catch:{ IOException -> 0x020b, RuntimeException -> 0x0285 }
        com.google.android.gms.internal.zzpy.zzbc(r2);	 Catch:{ IOException -> 0x020b, RuntimeException -> 0x0285 }
        r2 = r3.getInputStream();	 Catch:{ IOException -> 0x020b, RuntimeException -> 0x0285 }
        r15 = java.nio.channels.Channels.newChannel(r2);	 Catch:{ IOException -> 0x020b, RuntimeException -> 0x0285 }
        r11 = new java.io.FileOutputStream;	 Catch:{ IOException -> 0x020b, RuntimeException -> 0x0285 }
        r11.<init>(r12);	 Catch:{ IOException -> 0x020b, RuntimeException -> 0x0285 }
        r16 = r11.getChannel();	 Catch:{ IOException -> 0x03b2, RuntimeException -> 0x0457 }
        r2 = 1048576; // 0x100000 float:1.469368E-39 double:5.180654E-318;
        r17 = java.nio.ByteBuffer.allocate(r2);	 Catch:{ IOException -> 0x03b2, RuntimeException -> 0x0457 }
        r18 = com.google.android.gms.ads.internal.zzv.zzcP();	 Catch:{ IOException -> 0x03b2, RuntimeException -> 0x0457 }
        r5 = 0;
        r20 = r18.currentTimeMillis();	 Catch:{ IOException -> 0x03b2, RuntimeException -> 0x0457 }
        r2 = com.google.android.gms.internal.zzfx.zzBm;	 Catch:{ IOException -> 0x03b2, RuntimeException -> 0x0457 }
        r2 = r2.get();	 Catch:{ IOException -> 0x03b2, RuntimeException -> 0x0457 }
        r2 = (java.lang.Long) r2;	 Catch:{ IOException -> 0x03b2, RuntimeException -> 0x0457 }
        r2 = r2.longValue();	 Catch:{ IOException -> 0x03b2, RuntimeException -> 0x0457 }
        r19 = new com.google.android.gms.internal.zzpt;	 Catch:{ IOException -> 0x03b2, RuntimeException -> 0x0457 }
        r0 = r19;
        r0.<init>(r2);	 Catch:{ IOException -> 0x03b2, RuntimeException -> 0x0457 }
        r2 = com.google.android.gms.internal.zzfx.zzBl;	 Catch:{ IOException -> 0x03b2, RuntimeException -> 0x0457 }
        r2 = r2.get();	 Catch:{ IOException -> 0x03b2, RuntimeException -> 0x0457 }
        r2 = (java.lang.Long) r2;	 Catch:{ IOException -> 0x03b2, RuntimeException -> 0x0457 }
        r22 = r2.longValue();	 Catch:{ IOException -> 0x03b2, RuntimeException -> 0x0457 }
    L_0x02fe:
        r0 = r17;
        r2 = r15.read(r0);	 Catch:{ IOException -> 0x03b2, RuntimeException -> 0x0457 }
        if (r2 < 0) goto L_0x03b8;
    L_0x0306:
        r5 = r5 + r2;
        if (r5 <= r14) goto L_0x0336;
    L_0x0309:
        r4 = "sizeExceeded";
        r2 = "File too big for full file cache. Size: ";
        r3 = java.lang.Integer.toString(r5);	 Catch:{ IOException -> 0x0331, RuntimeException -> 0x0399 }
        r3 = java.lang.String.valueOf(r3);	 Catch:{ IOException -> 0x0331, RuntimeException -> 0x0399 }
        r5 = r3.length();	 Catch:{ IOException -> 0x0331, RuntimeException -> 0x0399 }
        if (r5 == 0) goto L_0x032b;
    L_0x031b:
        r3 = r2.concat(r3);	 Catch:{ IOException -> 0x0331, RuntimeException -> 0x0399 }
    L_0x031f:
        r2 = new java.io.IOException;	 Catch:{ IOException -> 0x0327, RuntimeException -> 0x0385 }
        r5 = "stream cache file size limit exceeded";
        r2.<init>(r5);	 Catch:{ IOException -> 0x0327, RuntimeException -> 0x0385 }
        throw r2;	 Catch:{ IOException -> 0x0327, RuntimeException -> 0x0385 }
    L_0x0327:
        r2 = move-exception;
        r5 = r11;
        goto L_0x0158;
    L_0x032b:
        r3 = new java.lang.String;	 Catch:{ IOException -> 0x0331, RuntimeException -> 0x0399 }
        r3.<init>(r2);	 Catch:{ IOException -> 0x0331, RuntimeException -> 0x0399 }
        goto L_0x031f;
    L_0x0331:
        r2 = move-exception;
        r3 = r9;
        r5 = r11;
        goto L_0x0158;
    L_0x0336:
        r17.flip();	 Catch:{ IOException -> 0x03b2, RuntimeException -> 0x0457 }
    L_0x0339:
        r2 = r16.write(r17);	 Catch:{ IOException -> 0x03b2, RuntimeException -> 0x0457 }
        if (r2 > 0) goto L_0x0339;
    L_0x033f:
        r17.clear();	 Catch:{ IOException -> 0x03b2, RuntimeException -> 0x0457 }
        r2 = r18.currentTimeMillis();	 Catch:{ IOException -> 0x03b2, RuntimeException -> 0x0457 }
        r2 = r2 - r20;
        r24 = 1000; // 0x3e8 float:1.401E-42 double:4.94E-321;
        r24 = r24 * r22;
        r2 = (r2 > r24 ? 1 : (r2 == r24 ? 0 : -1));
        if (r2 <= 0) goto L_0x0389;
    L_0x0350:
        r4 = "downloadTimeout";
        r2 = java.lang.Long.toString(r22);	 Catch:{ IOException -> 0x0331, RuntimeException -> 0x0399 }
        r2 = java.lang.String.valueOf(r2);	 Catch:{ IOException -> 0x0331, RuntimeException -> 0x0399 }
        r3 = new java.lang.StringBuilder;	 Catch:{ IOException -> 0x0331, RuntimeException -> 0x0399 }
        r5 = java.lang.String.valueOf(r2);	 Catch:{ IOException -> 0x0331, RuntimeException -> 0x0399 }
        r5 = r5.length();	 Catch:{ IOException -> 0x0331, RuntimeException -> 0x0399 }
        r5 = r5 + 29;
        r3.<init>(r5);	 Catch:{ IOException -> 0x0331, RuntimeException -> 0x0399 }
        r5 = "Timeout exceeded. Limit: ";
        r3 = r3.append(r5);	 Catch:{ IOException -> 0x0331, RuntimeException -> 0x0399 }
        r2 = r3.append(r2);	 Catch:{ IOException -> 0x0331, RuntimeException -> 0x0399 }
        r3 = " sec";
        r2 = r2.append(r3);	 Catch:{ IOException -> 0x0331, RuntimeException -> 0x0399 }
        r3 = r2.toString();	 Catch:{ IOException -> 0x0331, RuntimeException -> 0x0399 }
        r2 = new java.io.IOException;	 Catch:{ IOException -> 0x0327, RuntimeException -> 0x0385 }
        r5 = "stream cache time limit exceeded";
        r2.<init>(r5);	 Catch:{ IOException -> 0x0327, RuntimeException -> 0x0385 }
        throw r2;	 Catch:{ IOException -> 0x0327, RuntimeException -> 0x0385 }
    L_0x0385:
        r2 = move-exception;
        r5 = r11;
        goto L_0x0158;
    L_0x0389:
        r0 = r26;
        r2 = r0.zzIk;	 Catch:{ IOException -> 0x03b2, RuntimeException -> 0x0457 }
        if (r2 == 0) goto L_0x039e;
    L_0x038f:
        r4 = "externalAbort";
        r2 = new java.io.IOException;	 Catch:{ IOException -> 0x0331, RuntimeException -> 0x0399 }
        r3 = "abort requested";
        r2.<init>(r3);	 Catch:{ IOException -> 0x0331, RuntimeException -> 0x0399 }
        throw r2;	 Catch:{ IOException -> 0x0331, RuntimeException -> 0x0399 }
    L_0x0399:
        r2 = move-exception;
        r3 = r9;
        r5 = r11;
        goto L_0x0158;
    L_0x039e:
        r2 = r19.tryAcquire();	 Catch:{ IOException -> 0x03b2, RuntimeException -> 0x0457 }
        if (r2 == 0) goto L_0x02fe;
    L_0x03a4:
        r4 = r12.getAbsolutePath();	 Catch:{ IOException -> 0x03b2, RuntimeException -> 0x0457 }
        r7 = 0;
        r2 = r26;
        r3 = r27;
        r2.zza(r3, r4, r5, r6, r7);	 Catch:{ IOException -> 0x03b2, RuntimeException -> 0x0457 }
        goto L_0x02fe;
    L_0x03b2:
        r2 = move-exception;
        r3 = r9;
        r4 = r10;
        r5 = r11;
        goto L_0x0158;
    L_0x03b8:
        r11.close();	 Catch:{ IOException -> 0x03b2, RuntimeException -> 0x0457 }
        r2 = 3;
        r2 = com.google.android.gms.internal.zzpy.zzai(r2);	 Catch:{ IOException -> 0x03b2, RuntimeException -> 0x0457 }
        if (r2 == 0) goto L_0x03fe;
    L_0x03c2:
        r2 = zzIi;	 Catch:{ IOException -> 0x03b2, RuntimeException -> 0x0457 }
        r6 = (long) r5;	 Catch:{ IOException -> 0x03b2, RuntimeException -> 0x0457 }
        r2 = r2.format(r6);	 Catch:{ IOException -> 0x03b2, RuntimeException -> 0x0457 }
        r3 = new java.lang.StringBuilder;	 Catch:{ IOException -> 0x03b2, RuntimeException -> 0x0457 }
        r4 = java.lang.String.valueOf(r2);	 Catch:{ IOException -> 0x03b2, RuntimeException -> 0x0457 }
        r4 = r4.length();	 Catch:{ IOException -> 0x03b2, RuntimeException -> 0x0457 }
        r4 = r4 + 22;
        r6 = java.lang.String.valueOf(r27);	 Catch:{ IOException -> 0x03b2, RuntimeException -> 0x0457 }
        r6 = r6.length();	 Catch:{ IOException -> 0x03b2, RuntimeException -> 0x0457 }
        r4 = r4 + r6;
        r3.<init>(r4);	 Catch:{ IOException -> 0x03b2, RuntimeException -> 0x0457 }
        r4 = "Preloaded ";
        r3 = r3.append(r4);	 Catch:{ IOException -> 0x03b2, RuntimeException -> 0x0457 }
        r2 = r3.append(r2);	 Catch:{ IOException -> 0x03b2, RuntimeException -> 0x0457 }
        r3 = " bytes from ";
        r2 = r2.append(r3);	 Catch:{ IOException -> 0x03b2, RuntimeException -> 0x0457 }
        r0 = r27;
        r2 = r2.append(r0);	 Catch:{ IOException -> 0x03b2, RuntimeException -> 0x0457 }
        r2 = r2.toString();	 Catch:{ IOException -> 0x03b2, RuntimeException -> 0x0457 }
        com.google.android.gms.internal.zzpy.zzbc(r2);	 Catch:{ IOException -> 0x03b2, RuntimeException -> 0x0457 }
    L_0x03fe:
        r2 = 1;
        r3 = 0;
        r12.setReadable(r2, r3);	 Catch:{ IOException -> 0x03b2, RuntimeException -> 0x0457 }
        zzc(r13);	 Catch:{ IOException -> 0x03b2, RuntimeException -> 0x0457 }
        r2 = r12.getAbsolutePath();	 Catch:{ IOException -> 0x03b2, RuntimeException -> 0x0457 }
        r0 = r26;
        r1 = r27;
        r0.zza(r1, r2, r5);	 Catch:{ IOException -> 0x03b2, RuntimeException -> 0x0457 }
        r2 = zzIh;	 Catch:{ IOException -> 0x03b2, RuntimeException -> 0x0457 }
        r2.remove(r8);	 Catch:{ IOException -> 0x03b2, RuntimeException -> 0x0457 }
        r2 = 1;
        goto L_0x0012;
    L_0x0419:
        r5 = new java.lang.StringBuilder;
        r6 = java.lang.String.valueOf(r27);
        r6 = r6.length();
        r6 = r6 + 25;
        r5.<init>(r6);
        r6 = "Preload failed for URL \"";
        r5 = r5.append(r6);
        r0 = r27;
        r5 = r5.append(r0);
        r6 = "\"";
        r5 = r5.append(r6);
        r5 = r5.toString();
        com.google.android.gms.internal.zzpy.zzc(r5, r2);
        goto L_0x0196;
    L_0x0443:
        r2 = new java.lang.String;
        r2.<init>(r5);
        goto L_0x01b6;
    L_0x044a:
        r5 = move-exception;
        goto L_0x0168;
    L_0x044d:
        r5 = move-exception;
        goto L_0x0168;
    L_0x0450:
        r2 = move-exception;
        r3 = r9;
        goto L_0x0158;
    L_0x0454:
        r2 = move-exception;
        goto L_0x0158;
    L_0x0457:
        r2 = move-exception;
        r3 = r9;
        r4 = r10;
        r5 = r11;
        goto L_0x0158;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.zzio.zzad(java.lang.String):boolean");
    }

    public int zzgg() {
        int i = 0;
        if (this.zzIj != null) {
            for (File name : this.zzIj.listFiles()) {
                if (!name.getName().endsWith(".done")) {
                    i++;
                }
            }
        }
        return i;
    }

    public boolean zzgh() {
        if (this.zzIj == null) {
            return false;
        }
        boolean delete;
        File file = null;
        long j = Long.MAX_VALUE;
        File[] listFiles = this.zzIj.listFiles();
        int length = listFiles.length;
        int i = 0;
        while (i < length) {
            long lastModified;
            File file2;
            File file3 = listFiles[i];
            if (!file3.getName().endsWith(".done")) {
                lastModified = file3.lastModified();
                if (lastModified < j) {
                    file2 = file3;
                    i++;
                    file = file2;
                    j = lastModified;
                }
            }
            lastModified = j;
            file2 = file;
            i++;
            file = file2;
            j = lastModified;
        }
        if (file != null) {
            delete = file.delete();
            File zzb = zzb(file);
            if (zzb.isFile()) {
                delete &= zzb.delete();
            }
        } else {
            delete = false;
        }
        return delete;
    }
}
