package com.google.android.gms.internal;

import android.content.Context;
import android.net.Uri;
import android.net.Uri.Builder;
import android.os.Environment;
import android.text.TextUtils;
import com.google.android.gms.ads.internal.zzv;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.concurrent.ArrayBlockingQueue;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.atomic.AtomicBoolean;

@zzmb
public class zzfz {
    final Context mContext;
    String zzFb;
    BlockingQueue<zzgf> zzFd;
    ExecutorService zzFe;
    LinkedHashMap<String, String> zzFf = new LinkedHashMap();
    Map<String, zzgc> zzFg = new HashMap();
    private AtomicBoolean zzFh;
    private File zzFi;
    final String zzvU;

    public zzfz(Context context, String str, String str2, Map<String, String> map) {
        this.mContext = context;
        this.zzvU = str;
        this.zzFb = str2;
        this.zzFh = new AtomicBoolean(false);
        this.zzFh.set(((Boolean) zzfx.zzBM.get()).booleanValue());
        if (this.zzFh.get()) {
            File externalStorageDirectory = Environment.getExternalStorageDirectory();
            if (externalStorageDirectory != null) {
                this.zzFi = new File(externalStorageDirectory, "sdk_csi_data.txt");
            }
        }
        for (Entry entry : map.entrySet()) {
            this.zzFf.put((String) entry.getKey(), (String) entry.getValue());
        }
        this.zzFd = new ArrayBlockingQueue(30);
        this.zzFe = Executors.newSingleThreadExecutor();
        this.zzFe.execute(new Runnable(this) {
            final /* synthetic */ zzfz zzFj;

            {
                this.zzFj = r1;
            }

            public void run() {
                this.zzFj.zzfs();
            }
        });
        this.zzFg.put("action", zzgc.zzFl);
        this.zzFg.put("ad_format", zzgc.zzFl);
        this.zzFg.put("e", zzgc.zzFm);
    }

    private void zzb(Map<String, String> map, String str) {
        String zza = zza(this.zzFb, map, str);
        if (this.zzFh.get()) {
            zzc(this.zzFi, zza);
        } else {
            zzv.zzcJ().zzc(this.mContext, this.zzvU, zza);
        }
    }

    private void zzc(File file, String str) {
        Throwable e;
        if (file != null) {
            FileOutputStream fileOutputStream;
            try {
                fileOutputStream = new FileOutputStream(file, true);
                try {
                    fileOutputStream.write(str.getBytes());
                    fileOutputStream.write(10);
                    try {
                        fileOutputStream.close();
                        return;
                    } catch (Throwable e2) {
                        zzpy.zzc("CsiReporter: Cannot close file: sdk_csi_data.txt.", e2);
                        return;
                    }
                } catch (IOException e3) {
                    e2 = e3;
                    try {
                        zzpy.zzc("CsiReporter: Cannot write to file: sdk_csi_data.txt.", e2);
                        if (fileOutputStream != null) {
                            try {
                                fileOutputStream.close();
                                return;
                            } catch (Throwable e22) {
                                zzpy.zzc("CsiReporter: Cannot close file: sdk_csi_data.txt.", e22);
                                return;
                            }
                        }
                        return;
                    } catch (Throwable th) {
                        e22 = th;
                        if (fileOutputStream != null) {
                            try {
                                fileOutputStream.close();
                            } catch (Throwable e4) {
                                zzpy.zzc("CsiReporter: Cannot close file: sdk_csi_data.txt.", e4);
                            }
                        }
                        throw e22;
                    }
                }
            } catch (IOException e5) {
                e22 = e5;
                fileOutputStream = null;
                zzpy.zzc("CsiReporter: Cannot write to file: sdk_csi_data.txt.", e22);
                if (fileOutputStream != null) {
                    fileOutputStream.close();
                    return;
                }
                return;
            } catch (Throwable th2) {
                e22 = th2;
                fileOutputStream = null;
                if (fileOutputStream != null) {
                    fileOutputStream.close();
                }
                throw e22;
            }
        }
        zzpy.zzbe("CsiReporter: File doesn't exists. Cannot write CSI data to file.");
    }

    private void zzfs() {
        while (true) {
            try {
                zzgf com_google_android_gms_internal_zzgf = (zzgf) this.zzFd.take();
                Object zzfy = com_google_android_gms_internal_zzgf.zzfy();
                if (!TextUtils.isEmpty(zzfy)) {
                    zzb(zza(this.zzFf, com_google_android_gms_internal_zzgf.zzfz()), zzfy);
                }
            } catch (Throwable e) {
                zzpy.zzc("CsiReporter:reporter interrupted", e);
                return;
            }
        }
    }

    public zzgc zzV(String str) {
        zzgc com_google_android_gms_internal_zzgc = (zzgc) this.zzFg.get(str);
        return com_google_android_gms_internal_zzgc != null ? com_google_android_gms_internal_zzgc : zzgc.zzFk;
    }

    String zza(String str, Map<String, String> map, String str2) {
        Builder buildUpon = Uri.parse(str).buildUpon();
        for (Entry entry : map.entrySet()) {
            buildUpon.appendQueryParameter((String) entry.getKey(), (String) entry.getValue());
        }
        StringBuilder stringBuilder = new StringBuilder(buildUpon.build().toString());
        stringBuilder.append("&").append("it").append("=").append(str2);
        return stringBuilder.toString();
    }

    Map<String, String> zza(Map<String, String> map, Map<String, String> map2) {
        Map<String, String> linkedHashMap = new LinkedHashMap(map);
        if (map2 == null) {
            return linkedHashMap;
        }
        for (Entry entry : map2.entrySet()) {
            String str = (String) entry.getKey();
            String str2 = (String) linkedHashMap.get(str);
            linkedHashMap.put(str, zzV(str).zzf(str2, (String) entry.getValue()));
        }
        return linkedHashMap;
    }

    public boolean zza(zzgf com_google_android_gms_internal_zzgf) {
        return this.zzFd.offer(com_google_android_gms_internal_zzgf);
    }

    public void zzc(List<String> list) {
        if (list != null && !list.isEmpty()) {
            this.zzFf.put("e", TextUtils.join(",", list));
        }
    }
}
