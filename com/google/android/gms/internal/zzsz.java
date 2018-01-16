package com.google.android.gms.internal;

import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Build;
import android.os.Build.VERSION;
import com.google.android.gms.common.internal.zzac;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.UnsupportedEncodingException;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.net.URLConnection;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Locale;
import java.util.Map.Entry;
import java.util.zip.GZIPOutputStream;

class zzsz extends zzru {
    private static final byte[] zzafy = "\n".getBytes();
    private final String zzHY = zza("GoogleAnalytics", zzrv.VERSION, VERSION.RELEASE, zztg.zza(Locale.getDefault()), Build.MODEL, Build.ID);
    private final zztd zzafx;

    private class zza {
        private ByteArrayOutputStream zzafA = new ByteArrayOutputStream();
        final /* synthetic */ zzsz zzafB;
        private int zzafz;

        public zza(zzsz com_google_android_gms_internal_zzsz) {
            this.zzafB = com_google_android_gms_internal_zzsz;
        }

        public byte[] getPayload() {
            return this.zzafA.toByteArray();
        }

        public boolean zzj(zzst com_google_android_gms_internal_zzst) {
            zzac.zzw(com_google_android_gms_internal_zzst);
            if (this.zzafz + 1 > this.zzafB.zzns().zzoH()) {
                return false;
            }
            String zza = this.zzafB.zza(com_google_android_gms_internal_zzst, false);
            if (zza == null) {
                this.zzafB.zznr().zza(com_google_android_gms_internal_zzst, "Error formatting hit");
                return true;
            }
            byte[] bytes = zza.getBytes();
            int length = bytes.length;
            if (length > this.zzafB.zzns().zzoz()) {
                this.zzafB.zznr().zza(com_google_android_gms_internal_zzst, "Hit size exceeds the maximum size limit");
                return true;
            }
            if (this.zzafA.size() > 0) {
                length++;
            }
            if (length + this.zzafA.size() > this.zzafB.zzns().zzoB()) {
                return false;
            }
            try {
                if (this.zzafA.size() > 0) {
                    this.zzafA.write(zzsz.zzafy);
                }
                this.zzafA.write(bytes);
                this.zzafz++;
                return true;
            } catch (IOException e) {
                this.zzafB.zze("Failed to write payload when batching hits", e);
                return true;
            }
        }

        public int zzpD() {
            return this.zzafz;
        }
    }

    zzsz(zzrw com_google_android_gms_internal_zzrw) {
        super(com_google_android_gms_internal_zzrw);
        this.zzafx = new zztd(com_google_android_gms_internal_zzrw.zznq());
    }

    private int zza(URL url, byte[] bArr) {
        HttpURLConnection zzc;
        Object e;
        Throwable th;
        OutputStream outputStream = null;
        zzac.zzw(url);
        zzac.zzw(bArr);
        zzb("POST bytes, url", Integer.valueOf(bArr.length), url);
        if (zzkh()) {
            zza("Post payload\n", new String(bArr));
        }
        try {
            getContext().getPackageName();
            zzc = zzc(url);
            try {
                zzc.setDoOutput(true);
                zzc.setFixedLengthStreamingMode(bArr.length);
                zzc.connect();
                outputStream = zzc.getOutputStream();
                outputStream.write(bArr);
                zzb(zzc);
                int responseCode = zzc.getResponseCode();
                if (responseCode == 200) {
                    zzlZ().zzno();
                }
                zzb("POST status", Integer.valueOf(responseCode));
                if (outputStream != null) {
                    try {
                        outputStream.close();
                    } catch (IOException e2) {
                        zze("Error closing http post connection output stream", e2);
                    }
                }
                if (zzc == null) {
                    return responseCode;
                }
                zzc.disconnect();
                return responseCode;
            } catch (IOException e3) {
                e = e3;
                try {
                    zzd("Network POST connection error", e);
                    if (outputStream != null) {
                        try {
                            outputStream.close();
                        } catch (IOException e4) {
                            zze("Error closing http post connection output stream", e4);
                        }
                    }
                    if (zzc != null) {
                        zzc.disconnect();
                    }
                    return 0;
                } catch (Throwable th2) {
                    th = th2;
                    if (outputStream != null) {
                        try {
                            outputStream.close();
                        } catch (IOException e22) {
                            zze("Error closing http post connection output stream", e22);
                        }
                    }
                    if (zzc != null) {
                        zzc.disconnect();
                    }
                    throw th;
                }
            }
        } catch (IOException e5) {
            e = e5;
            zzc = outputStream;
            zzd("Network POST connection error", e);
            if (outputStream != null) {
                outputStream.close();
            }
            if (zzc != null) {
                zzc.disconnect();
            }
            return 0;
        } catch (Throwable th3) {
            th = th3;
            zzc = outputStream;
            if (outputStream != null) {
                outputStream.close();
            }
            if (zzc != null) {
                zzc.disconnect();
            }
            throw th;
        }
    }

    private static String zza(String str, String str2, String str3, String str4, String str5, String str6) {
        return String.format("%s/%s (Linux; U; Android %s; %s; %s Build/%s)", new Object[]{str, str2, str3, str4, str5, str6});
    }

    private void zza(StringBuilder stringBuilder, String str, String str2) throws UnsupportedEncodingException {
        if (stringBuilder.length() != 0) {
            stringBuilder.append('&');
        }
        stringBuilder.append(URLEncoder.encode(str, "UTF-8"));
        stringBuilder.append('=');
        stringBuilder.append(URLEncoder.encode(str2, "UTF-8"));
    }

    private int zzb(java.net.URL r5) {
        /* JADX: method processing error */
/*
Error: jadx.core.utils.exceptions.JadxRuntimeException: Can't find block by offset: 0x0030 in list [B:7:0x002d]
	at jadx.core.utils.BlockUtils.getBlockByOffset(BlockUtils.java:42)
	at jadx.core.dex.instructions.IfNode.initBlocks(IfNode.java:60)
	at jadx.core.dex.visitors.blocksmaker.BlockFinish.initBlocksInIfNodes(BlockFinish.java:48)
	at jadx.core.dex.visitors.blocksmaker.BlockFinish.visit(BlockFinish.java:33)
	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:31)
	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:17)
	at jadx.core.ProcessClass.process(ProcessClass.java:37)
	at jadx.core.ProcessClass.processDependencies(ProcessClass.java:59)
	at jadx.core.ProcessClass.process(ProcessClass.java:42)
	at jadx.api.JadxDecompiler.processClass(JadxDecompiler.java:306)
	at jadx.api.JavaClass.decompile(JavaClass.java:62)
	at jadx.api.JadxDecompiler$1.run(JadxDecompiler.java:199)
*/
        /*
        r4 = this;
        com.google.android.gms.common.internal.zzac.zzw(r5);
        r0 = "GET request";
        r4.zzb(r0, r5);
        r1 = 0;
        r1 = r4.zzc(r5);	 Catch:{ IOException -> 0x0031, all -> 0x003e }
        r1.connect();	 Catch:{ IOException -> 0x0031, all -> 0x003e }
        r4.zzb(r1);	 Catch:{ IOException -> 0x0031, all -> 0x003e }
        r0 = r1.getResponseCode();	 Catch:{ IOException -> 0x0031, all -> 0x003e }
        r2 = 200; // 0xc8 float:2.8E-43 double:9.9E-322;	 Catch:{ IOException -> 0x0031, all -> 0x003e }
        if (r0 != r2) goto L_0x0022;	 Catch:{ IOException -> 0x0031, all -> 0x003e }
    L_0x001b:
        r2 = r4.zzlZ();	 Catch:{ IOException -> 0x0031, all -> 0x003e }
        r2.zzno();	 Catch:{ IOException -> 0x0031, all -> 0x003e }
    L_0x0022:
        r2 = "GET status";	 Catch:{ IOException -> 0x0031, all -> 0x003e }
        r3 = java.lang.Integer.valueOf(r0);	 Catch:{ IOException -> 0x0031, all -> 0x003e }
        r4.zzb(r2, r3);	 Catch:{ IOException -> 0x0031, all -> 0x003e }
        if (r1 == 0) goto L_0x0030;
    L_0x002d:
        r1.disconnect();
    L_0x0030:
        return r0;
    L_0x0031:
        r0 = move-exception;
        r2 = "Network GET connection error";	 Catch:{ IOException -> 0x0031, all -> 0x003e }
        r4.zzd(r2, r0);	 Catch:{ IOException -> 0x0031, all -> 0x003e }
        if (r1 == 0) goto L_0x003c;
    L_0x0039:
        r1.disconnect();
    L_0x003c:
        r0 = 0;
        goto L_0x0030;
    L_0x003e:
        r0 = move-exception;
        if (r1 == 0) goto L_0x0044;
    L_0x0041:
        r1.disconnect();
    L_0x0044:
        throw r0;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.zzsz.zzb(java.net.URL):int");
    }

    private int zzb(URL url, byte[] bArr) {
        HttpURLConnection zzc;
        Object e;
        HttpURLConnection httpURLConnection;
        Throwable th;
        OutputStream outputStream = null;
        zzac.zzw(url);
        zzac.zzw(bArr);
        try {
            getContext().getPackageName();
            byte[] zzk = zzk(bArr);
            zza("POST compressed size, ratio %, url", Integer.valueOf(zzk.length), Long.valueOf((100 * ((long) zzk.length)) / ((long) bArr.length)), url);
            if (zzk.length > bArr.length) {
                zzc("Compressed payload is larger then uncompressed. compressed, uncompressed", Integer.valueOf(zzk.length), Integer.valueOf(bArr.length));
            }
            if (zzkh()) {
                String str = "Post payload";
                String str2 = "\n";
                String valueOf = String.valueOf(new String(bArr));
                zza(str, valueOf.length() != 0 ? str2.concat(valueOf) : new String(str2));
            }
            zzc = zzc(url);
            try {
                zzc.setDoOutput(true);
                zzc.addRequestProperty("Content-Encoding", "gzip");
                zzc.setFixedLengthStreamingMode(zzk.length);
                zzc.connect();
                OutputStream outputStream2 = zzc.getOutputStream();
                try {
                    outputStream2.write(zzk);
                    outputStream2.close();
                    zzb(zzc);
                    int responseCode = zzc.getResponseCode();
                    if (responseCode == 200) {
                        zzlZ().zzno();
                    }
                    zzb("POST status", Integer.valueOf(responseCode));
                    if (zzc == null) {
                        return responseCode;
                    }
                    zzc.disconnect();
                    return responseCode;
                } catch (IOException e2) {
                    e = e2;
                    outputStream = outputStream2;
                    httpURLConnection = zzc;
                    try {
                        zzd("Network compressed POST connection error", e);
                        if (outputStream != null) {
                            try {
                                outputStream.close();
                            } catch (IOException e3) {
                                zze("Error closing http compressed post connection output stream", e3);
                            }
                        }
                        if (httpURLConnection != null) {
                            httpURLConnection.disconnect();
                        }
                        return 0;
                    } catch (Throwable th2) {
                        th = th2;
                        zzc = httpURLConnection;
                        if (outputStream != null) {
                            try {
                                outputStream.close();
                            } catch (IOException e4) {
                                zze("Error closing http compressed post connection output stream", e4);
                            }
                        }
                        if (zzc != null) {
                            zzc.disconnect();
                        }
                        throw th;
                    }
                } catch (Throwable th3) {
                    th = th3;
                    outputStream = outputStream2;
                    if (outputStream != null) {
                        outputStream.close();
                    }
                    if (zzc != null) {
                        zzc.disconnect();
                    }
                    throw th;
                }
            } catch (IOException e5) {
                e = e5;
                httpURLConnection = zzc;
                zzd("Network compressed POST connection error", e);
                if (outputStream != null) {
                    outputStream.close();
                }
                if (httpURLConnection != null) {
                    httpURLConnection.disconnect();
                }
                return 0;
            } catch (Throwable th4) {
                th = th4;
                if (outputStream != null) {
                    outputStream.close();
                }
                if (zzc != null) {
                    zzc.disconnect();
                }
                throw th;
            }
        } catch (IOException e6) {
            e = e6;
            httpURLConnection = null;
            zzd("Network compressed POST connection error", e);
            if (outputStream != null) {
                outputStream.close();
            }
            if (httpURLConnection != null) {
                httpURLConnection.disconnect();
            }
            return 0;
        } catch (Throwable th5) {
            th = th5;
            zzc = null;
            if (outputStream != null) {
                outputStream.close();
            }
            if (zzc != null) {
                zzc.disconnect();
            }
            throw th;
        }
    }

    private URL zzb(zzst com_google_android_gms_internal_zzst, String str) {
        String valueOf;
        String valueOf2;
        if (com_google_android_gms_internal_zzst.zzps()) {
            valueOf2 = String.valueOf(zzns().zzoJ());
            valueOf = String.valueOf(zzns().zzoL());
            valueOf = new StringBuilder(((String.valueOf(valueOf2).length() + 1) + String.valueOf(valueOf).length()) + String.valueOf(str).length()).append(valueOf2).append(valueOf).append("?").append(str).toString();
        } else {
            valueOf2 = String.valueOf(zzns().zzoK());
            valueOf = String.valueOf(zzns().zzoL());
            valueOf = new StringBuilder(((String.valueOf(valueOf2).length() + 1) + String.valueOf(valueOf).length()) + String.valueOf(str).length()).append(valueOf2).append(valueOf).append("?").append(str).toString();
        }
        try {
            return new URL(valueOf);
        } catch (MalformedURLException e) {
            zze("Error trying to parse the hardcoded host url", e);
            return null;
        }
    }

    private void zzb(HttpURLConnection httpURLConnection) throws IOException {
        InputStream inputStream = null;
        try {
            inputStream = httpURLConnection.getInputStream();
            do {
            } while (inputStream.read(new byte[1024]) > 0);
            if (inputStream != null) {
                try {
                    inputStream.close();
                } catch (IOException e) {
                    zze("Error closing http connection input stream", e);
                }
            }
        } catch (Throwable th) {
            if (inputStream != null) {
                try {
                    inputStream.close();
                } catch (IOException e2) {
                    zze("Error closing http connection input stream", e2);
                }
            }
        }
    }

    private boolean zzg(zzst com_google_android_gms_internal_zzst) {
        zzac.zzw(com_google_android_gms_internal_zzst);
        String zza = zza(com_google_android_gms_internal_zzst, !com_google_android_gms_internal_zzst.zzps());
        if (zza == null) {
            zznr().zza(com_google_android_gms_internal_zzst, "Error formatting hit for upload");
            return true;
        } else if (zza.length() <= zzns().zzoy()) {
            URL zzb = zzb(com_google_android_gms_internal_zzst, zza);
            if (zzb != null) {
                return zzb(zzb) == 200;
            } else {
                zzbS("Failed to build collect GET endpoint url");
                return false;
            }
        } else {
            zza = zza(com_google_android_gms_internal_zzst, false);
            if (zza == null) {
                zznr().zza(com_google_android_gms_internal_zzst, "Error formatting hit for POST upload");
                return true;
            }
            byte[] bytes = zza.getBytes();
            if (bytes.length > zzns().zzoA()) {
                zznr().zza(com_google_android_gms_internal_zzst, "Hit payload exceeds size limit");
                return true;
            }
            URL zzh = zzh(com_google_android_gms_internal_zzst);
            if (zzh != null) {
                return zza(zzh, bytes) == 200;
            } else {
                zzbS("Failed to build collect POST endpoint url");
                return false;
            }
        }
    }

    private URL zzh(zzst com_google_android_gms_internal_zzst) {
        String valueOf;
        String valueOf2;
        if (com_google_android_gms_internal_zzst.zzps()) {
            valueOf = String.valueOf(zzns().zzoJ());
            valueOf2 = String.valueOf(zzns().zzoL());
            valueOf = valueOf2.length() != 0 ? valueOf.concat(valueOf2) : new String(valueOf);
        } else {
            valueOf = String.valueOf(zzns().zzoK());
            valueOf2 = String.valueOf(zzns().zzoL());
            valueOf = valueOf2.length() != 0 ? valueOf.concat(valueOf2) : new String(valueOf);
        }
        try {
            return new URL(valueOf);
        } catch (MalformedURLException e) {
            zze("Error trying to parse the hardcoded host url", e);
            return null;
        }
    }

    private String zzi(zzst com_google_android_gms_internal_zzst) {
        return String.valueOf(com_google_android_gms_internal_zzst.zzpp());
    }

    private static byte[] zzk(byte[] bArr) throws IOException {
        OutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        GZIPOutputStream gZIPOutputStream = new GZIPOutputStream(byteArrayOutputStream);
        gZIPOutputStream.write(bArr);
        gZIPOutputStream.close();
        byteArrayOutputStream.close();
        return byteArrayOutputStream.toByteArray();
    }

    private URL zzpB() {
        String valueOf = String.valueOf(zzns().zzoJ());
        String valueOf2 = String.valueOf(zzns().zzoM());
        try {
            return new URL(valueOf2.length() != 0 ? valueOf.concat(valueOf2) : new String(valueOf));
        } catch (MalformedURLException e) {
            zze("Error trying to parse the hardcoded host url", e);
            return null;
        }
    }

    String zza(zzst com_google_android_gms_internal_zzst, boolean z) {
        zzac.zzw(com_google_android_gms_internal_zzst);
        StringBuilder stringBuilder = new StringBuilder();
        try {
            for (Entry entry : com_google_android_gms_internal_zzst.zzfz().entrySet()) {
                String str = (String) entry.getKey();
                if (!("ht".equals(str) || "qt".equals(str) || "AppUID".equals(str) || "z".equals(str) || "_gmsv".equals(str))) {
                    zza(stringBuilder, str, (String) entry.getValue());
                }
            }
            zza(stringBuilder, "ht", String.valueOf(com_google_android_gms_internal_zzst.zzpq()));
            zza(stringBuilder, "qt", String.valueOf(zznq().currentTimeMillis() - com_google_android_gms_internal_zzst.zzpq()));
            if (z) {
                long zzpt = com_google_android_gms_internal_zzst.zzpt();
                zza(stringBuilder, "z", zzpt != 0 ? String.valueOf(zzpt) : zzi(com_google_android_gms_internal_zzst));
            }
            return stringBuilder.toString();
        } catch (UnsupportedEncodingException e) {
            zze("Failed to encode name or value", e);
            return null;
        }
    }

    List<Long> zza(List<zzst> list, boolean z) {
        zzac.zzas(!list.isEmpty());
        zza("Uploading batched hits. compression, count", Boolean.valueOf(z), Integer.valueOf(list.size()));
        zza com_google_android_gms_internal_zzsz_zza = new zza(this);
        List<Long> arrayList = new ArrayList();
        for (zzst com_google_android_gms_internal_zzst : list) {
            if (!com_google_android_gms_internal_zzsz_zza.zzj(com_google_android_gms_internal_zzst)) {
                break;
            }
            arrayList.add(Long.valueOf(com_google_android_gms_internal_zzst.zzpp()));
        }
        if (com_google_android_gms_internal_zzsz_zza.zzpD() == 0) {
            return arrayList;
        }
        URL zzpB = zzpB();
        if (zzpB == null) {
            zzbS("Failed to build batching endpoint url");
            return Collections.emptyList();
        }
        int zzb = z ? zzb(zzpB, com_google_android_gms_internal_zzsz_zza.getPayload()) : zza(zzpB, com_google_android_gms_internal_zzsz_zza.getPayload());
        if (200 == zzb) {
            zza("Batched upload completed. Hits batched", Integer.valueOf(com_google_android_gms_internal_zzsz_zza.zzpD()));
            return arrayList;
        }
        zza("Network error uploading hits. status code", Integer.valueOf(zzb));
        if (zzns().zzoP().contains(Integer.valueOf(zzb))) {
            zzbR("Server instructed the client to stop batching");
            this.zzafx.start();
        }
        return Collections.emptyList();
    }

    HttpURLConnection zzc(URL url) throws IOException {
        URLConnection openConnection = url.openConnection();
        if (openConnection instanceof HttpURLConnection) {
            HttpURLConnection httpURLConnection = (HttpURLConnection) openConnection;
            httpURLConnection.setDefaultUseCaches(false);
            httpURLConnection.setConnectTimeout(zzns().zzoW());
            httpURLConnection.setReadTimeout(zzns().zzoX());
            httpURLConnection.setInstanceFollowRedirects(false);
            httpURLConnection.setRequestProperty("User-Agent", this.zzHY);
            httpURLConnection.setDoInput(true);
            return httpURLConnection;
        }
        throw new IOException("Failed to obtain http connection");
    }

    protected void zzmr() {
        zza("Network initialized. User agent", this.zzHY);
    }

    public boolean zzpA() {
        NetworkInfo activeNetworkInfo;
        zzmq();
        zznA();
        try {
            activeNetworkInfo = ((ConnectivityManager) getContext().getSystemService("connectivity")).getActiveNetworkInfo();
        } catch (SecurityException e) {
            activeNetworkInfo = null;
        }
        if (activeNetworkInfo != null && activeNetworkInfo.isConnected()) {
            return true;
        }
        zzbO("No network connectivity");
        return false;
    }

    public List<Long> zzt(List<zzst> list) {
        boolean z;
        boolean z2 = true;
        zzmq();
        zznA();
        zzac.zzw(list);
        if (zzns().zzoP().isEmpty() || !this.zzafx.zzz(zzns().zzoI() * 1000)) {
            z2 = false;
            z = false;
        } else {
            z = zzns().zzoN() != zzsd.NONE;
            if (zzns().zzoO() != zzsg.GZIP) {
                z2 = false;
            }
        }
        return z ? zza((List) list, z2) : zzu(list);
    }

    List<Long> zzu(List<zzst> list) {
        List<Long> arrayList = new ArrayList(list.size());
        for (zzst com_google_android_gms_internal_zzst : list) {
            if (!zzg(com_google_android_gms_internal_zzst)) {
                break;
            }
            arrayList.add(Long.valueOf(com_google_android_gms_internal_zzst.zzpp()));
            if (arrayList.size() >= zzns().zzoG()) {
                break;
            }
        }
        return arrayList;
    }
}
