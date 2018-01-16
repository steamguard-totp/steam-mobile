package com.google.android.gms.internal;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Build;
import android.os.Build.VERSION;
import java.io.BufferedOutputStream;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.nio.charset.Charset;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Map.Entry;

class zzazl implements zzayl {
    private final Context mContext;
    private final String zzHY;
    private final zzb zzbIE;
    private final zza zzbIF;

    public interface zza {
        void zza(zzayo com_google_android_gms_internal_zzayo);

        void zzb(zzayo com_google_android_gms_internal_zzayo);

        void zzc(zzayo com_google_android_gms_internal_zzayo);
    }

    interface zzb {
        HttpURLConnection zzd(URL url) throws IOException;
    }

    zzazl(Context context, zza com_google_android_gms_internal_zzazl_zza) {
        this(new zzb() {
            public HttpURLConnection zzd(URL url) throws IOException {
                return (HttpURLConnection) url.openConnection();
            }
        }, context, com_google_android_gms_internal_zzazl_zza);
    }

    zzazl(zzb com_google_android_gms_internal_zzazl_zzb, Context context, zza com_google_android_gms_internal_zzazl_zza) {
        this.zzbIE = com_google_android_gms_internal_zzazl_zzb;
        this.mContext = context.getApplicationContext();
        this.zzbIF = com_google_android_gms_internal_zzazl_zza;
        this.zzHY = zza("GoogleTagManager", "5.03", VERSION.RELEASE, zzc(Locale.getDefault()), Build.MODEL, Build.ID);
    }

    static String zzc(Locale locale) {
        if (locale == null || locale.getLanguage() == null || locale.getLanguage().length() == 0) {
            return null;
        }
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append(locale.getLanguage().toLowerCase());
        if (!(locale.getCountry() == null || locale.getCountry().length() == 0)) {
            stringBuilder.append("-").append(locale.getCountry().toLowerCase());
        }
        return stringBuilder.toString();
    }

    public void zzM(List<zzayo> list) {
        Object obj;
        Throwable th;
        InputStream inputStream;
        IOException iOException;
        int min = Math.min(list.size(), 40);
        Object obj2 = 1;
        int i = 0;
        while (i < min) {
            zzayo com_google_android_gms_internal_zzayo = (zzayo) list.get(i);
            URL zzd = zzd(com_google_android_gms_internal_zzayo);
            String zzQt = com_google_android_gms_internal_zzayo.zzQt();
            Map zzQu = com_google_android_gms_internal_zzayo.zzQu();
            String zzQv = com_google_android_gms_internal_zzayo.zzQv();
            if (zzd == null) {
                zzayx.zzbe("No destination: discarding hit.");
                this.zzbIF.zzb(com_google_android_gms_internal_zzayo);
                obj = obj2;
            } else {
                InputStream inputStream2 = null;
                try {
                    Object obj3;
                    HttpURLConnection zzd2 = this.zzbIE.zzd(zzd);
                    if (obj2 != null) {
                        try {
                            zzayz.zzbK(this.mContext);
                            obj3 = null;
                        } catch (Throwable th2) {
                            obj3 = obj2;
                            th = th2;
                            inputStream = null;
                            if (inputStream != null) {
                                try {
                                    inputStream.close();
                                } catch (IOException e) {
                                    iOException = e;
                                    obj2 = obj3;
                                }
                            }
                            zzd2.disconnect();
                            throw th;
                        }
                    }
                    obj3 = obj2;
                    try {
                        zzd2.setRequestProperty("User-Agent", this.zzHY);
                        if (zzQu != null) {
                            for (Entry entry : zzQu.entrySet()) {
                                zzd2.setRequestProperty((String) entry.getKey(), (String) entry.getValue());
                            }
                        }
                        if (zzQt == null) {
                            zzayx.zzbe(String.format("Hit %d retrieved from the store has null HTTP method.", new Object[]{Long.valueOf(com_google_android_gms_internal_zzayo.zzPi())}));
                            this.zzbIF.zzb(com_google_android_gms_internal_zzayo);
                            zzd2.disconnect();
                            obj = obj3;
                        } else if (zzQt.equals("GET") || zzQt.equals("HEAD") || zzQt.equals("POST") || zzQt.equals("PUT")) {
                            obj2 = -1;
                            switch (zzQt.hashCode()) {
                                case 70454:
                                    if (zzQt.equals("GET")) {
                                        obj2 = null;
                                        break;
                                    }
                                    break;
                                case 79599:
                                    if (zzQt.equals("PUT")) {
                                        obj2 = 3;
                                        break;
                                    }
                                    break;
                                case 2213344:
                                    if (zzQt.equals("HEAD")) {
                                        obj2 = 1;
                                        break;
                                    }
                                    break;
                                case 2461856:
                                    if (zzQt.equals("POST")) {
                                        obj2 = 2;
                                        break;
                                    }
                                    break;
                            }
                            switch (obj2) {
                                case null:
                                case 1:
                                    if (zzQv != null) {
                                        zzayx.zzbe(String.format("Body of %s hit is ignored: %s.", new Object[]{zzQt, zzQv}));
                                    }
                                    zzd2.setRequestMethod(zzQt);
                                    break;
                                case 2:
                                case 3:
                                    zzd2.setRequestMethod(zzQt);
                                    if (zzQv != null) {
                                        zzd2.setDoOutput(true);
                                        byte[] bytes = zzQv.getBytes(Charset.forName("UTF-8"));
                                        zzd2.setFixedLengthStreamingMode(bytes.length);
                                        BufferedOutputStream bufferedOutputStream = new BufferedOutputStream(zzd2.getOutputStream());
                                        bufferedOutputStream.write(bytes);
                                        bufferedOutputStream.flush();
                                        bufferedOutputStream.close();
                                        break;
                                    }
                                    break;
                            }
                            int responseCode = zzd2.getResponseCode();
                            String valueOf;
                            if (responseCode != 200) {
                                String valueOf2 = String.valueOf(zzd);
                                zzayx.zzbe(new StringBuilder(String.valueOf(valueOf2).length() + 39).append("Bad response received for ").append(valueOf2).append(": ").append(responseCode).toString());
                                StringBuilder stringBuilder = new StringBuilder();
                                BufferedReader bufferedReader;
                                try {
                                    bufferedReader = new BufferedReader(new InputStreamReader(zzd2.getErrorStream()));
                                    while (true) {
                                        try {
                                            zzQt = bufferedReader.readLine();
                                            if (zzQt != null) {
                                                stringBuilder.append(zzQt);
                                            } else {
                                                zzQt = "Error Message: ";
                                                valueOf = String.valueOf(stringBuilder.toString());
                                                zzayx.zzbe(valueOf.length() != 0 ? zzQt.concat(valueOf) : new String(zzQt));
                                                bufferedReader.close();
                                                this.zzbIF.zzc(com_google_android_gms_internal_zzayo);
                                            }
                                        } catch (Throwable th3) {
                                            th = th3;
                                        }
                                    }
                                } catch (Throwable th4) {
                                    th = th4;
                                    bufferedReader = null;
                                    if (bufferedReader != null) {
                                        bufferedReader.close();
                                    }
                                    throw th;
                                }
                            }
                            inputStream = zzd2.getInputStream();
                            try {
                                valueOf = String.valueOf(zzd);
                                zzayx.v(new StringBuilder((String.valueOf(valueOf).length() + 23) + String.valueOf(zzQt).length()).append("Hit sent to ").append(valueOf).append("(method = ").append(zzQt).append(")").toString());
                                this.zzbIF.zza(com_google_android_gms_internal_zzayo);
                                inputStream2 = inputStream;
                            } catch (Throwable th5) {
                                th = th5;
                                if (inputStream != null) {
                                    inputStream.close();
                                }
                                zzd2.disconnect();
                                throw th;
                            }
                            if (inputStream2 != null) {
                                inputStream2.close();
                            }
                            zzd2.disconnect();
                            obj = obj3;
                        } else {
                            zzayx.zzbe(String.format("Unrecongnized HTTP method %s. Supported methods are GET, HEAD, PUT and/or POST", new Object[]{zzQt}));
                            this.zzbIF.zzb(com_google_android_gms_internal_zzayo);
                            zzd2.disconnect();
                            obj = obj3;
                        }
                    } catch (Throwable th6) {
                        th = th6;
                        inputStream = null;
                    }
                } catch (IOException e2) {
                    iOException = e2;
                    String valueOf3 = String.valueOf(zzd);
                    zzQt = String.valueOf(iOException.getClass().getSimpleName());
                    zzayx.zzbe(new StringBuilder((String.valueOf(valueOf3).length() + 27) + String.valueOf(zzQt).length()).append("Exception sending hit to ").append(valueOf3).append(": ").append(zzQt).toString());
                    zzayx.zzbe(iOException.getMessage());
                    this.zzbIF.zzc(com_google_android_gms_internal_zzayo);
                    obj = obj2;
                    i++;
                    obj2 = obj;
                }
            }
            i++;
            obj2 = obj;
        }
    }

    public boolean zzPa() {
        NetworkInfo activeNetworkInfo = ((ConnectivityManager) this.mContext.getSystemService("connectivity")).getActiveNetworkInfo();
        if (activeNetworkInfo != null && activeNetworkInfo.isConnected()) {
            return true;
        }
        zzayx.v("...no network connectivity");
        return false;
    }

    String zza(String str, String str2, String str3, String str4, String str5, String str6) {
        return String.format("%s/%s (Linux; U; Android %s; %s; %s Build/%s)", new Object[]{str, str2, str3, str4, str5, str6});
    }

    URL zzd(zzayo com_google_android_gms_internal_zzayo) {
        try {
            return new URL(com_google_android_gms_internal_zzayo.zzPk());
        } catch (MalformedURLException e) {
            zzayx.e("Error trying to parse the GTM url.");
            return null;
        }
    }
}
