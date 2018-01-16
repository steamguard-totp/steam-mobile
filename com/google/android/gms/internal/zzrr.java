package com.google.android.gms.internal;

import android.text.TextUtils;
import com.google.android.gms.ads.identifier.AdvertisingIdClient;
import com.google.android.gms.ads.identifier.AdvertisingIdClient.Info;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.math.BigInteger;
import java.util.Locale;

public class zzrr extends zzru {
    public static boolean zzacz;
    private Info zzacA;
    private final zztd zzacB;
    private String zzacC;
    private boolean zzacD = false;
    private Object zzacE = new Object();

    zzrr(zzrw com_google_android_gms_internal_zzrw) {
        super(com_google_android_gms_internal_zzrw);
        this.zzacB = new zztd(com_google_android_gms_internal_zzrw.zznq());
    }

    private boolean zza(Info info, Info info2) {
        Object obj = null;
        CharSequence id = info2 == null ? null : info2.getId();
        if (TextUtils.isEmpty(id)) {
            return true;
        }
        String zzop = zznw().zzop();
        synchronized (this.zzacE) {
            String valueOf;
            String valueOf2;
            if (!this.zzacD) {
                this.zzacC = zzni();
                this.zzacD = true;
            } else if (TextUtils.isEmpty(this.zzacC)) {
                if (info != null) {
                    obj = info.getId();
                }
                if (obj == null) {
                    valueOf = String.valueOf(id);
                    String valueOf3 = String.valueOf(zzop);
                    boolean zzbN = zzbN(valueOf3.length() != 0 ? valueOf.concat(valueOf3) : new String(valueOf));
                    return zzbN;
                }
                valueOf2 = String.valueOf(obj);
                valueOf = String.valueOf(zzop);
                this.zzacC = zzbM(valueOf.length() != 0 ? valueOf2.concat(valueOf) : new String(valueOf2));
            }
            valueOf2 = String.valueOf(id);
            valueOf = String.valueOf(zzop);
            obj = zzbM(valueOf.length() != 0 ? valueOf2.concat(valueOf) : new String(valueOf2));
            if (TextUtils.isEmpty(obj)) {
                return false;
            } else if (obj.equals(this.zzacC)) {
                return true;
            } else {
                if (TextUtils.isEmpty(this.zzacC)) {
                    valueOf = zzop;
                } else {
                    zzbO("Resetting the client id because Advertising Id changed.");
                    obj = zznw().zzoq();
                    zza("New client Id", obj);
                }
                String valueOf4 = String.valueOf(id);
                valueOf3 = String.valueOf(obj);
                zzbN = zzbN(valueOf3.length() != 0 ? valueOf4.concat(valueOf3) : new String(valueOf4));
                return zzbN;
            }
        }
    }

    private static String zzbM(String str) {
        if (zztg.zzcg("MD5") == null) {
            return null;
        }
        return String.format(Locale.US, "%032X", new Object[]{new BigInteger(1, zztg.zzcg("MD5").digest(str.getBytes()))});
    }

    private boolean zzbN(String str) {
        try {
            String zzbM = zzbM(str);
            zzbO("Storing hashed adid.");
            FileOutputStream openFileOutput = getContext().openFileOutput("gaClientIdData", 0);
            openFileOutput.write(zzbM.getBytes());
            openFileOutput.close();
            this.zzacC = zzbM;
            return true;
        } catch (IOException e) {
            zze("Error creating hash file", e);
            return false;
        }
    }

    private synchronized Info zzng() {
        if (this.zzacB.zzz(1000)) {
            this.zzacB.start();
            Info zznh = zznh();
            if (zza(this.zzacA, zznh)) {
                this.zzacA = zznh;
            } else {
                zzbS("Failed to reset client id on adid change. Not using adid");
                this.zzacA = new Info("", false);
            }
        }
        return this.zzacA;
    }

    public boolean zzmV() {
        zznA();
        Info zzng = zzng();
        return (zzng == null || zzng.isLimitAdTrackingEnabled()) ? false : true;
    }

    protected void zzmr() {
    }

    public String zznf() {
        zznA();
        Info zzng = zzng();
        CharSequence id = zzng != null ? zzng.getId() : null;
        return TextUtils.isEmpty(id) ? null : id;
    }

    protected Info zznh() {
        Info info = null;
        try {
            info = AdvertisingIdClient.getAdvertisingIdInfo(getContext());
        } catch (IllegalStateException e) {
            zzbR("IllegalStateException getting Ad Id Info. If you would like to see Audience reports, please ensure that you have added '<meta-data android:name=\"com.google.android.gms.version\" android:value=\"@integer/google_play_services_version\" />' to your application manifest file. See http://goo.gl/naFqQk for details.");
        } catch (Throwable th) {
            if (!zzacz) {
                zzacz = true;
                zzd("Error getting advertiser id", th);
            }
        }
        return info;
    }

    protected String zzni() {
        Object obj;
        String str = null;
        try {
            FileInputStream openFileInput = getContext().openFileInput("gaClientIdData");
            byte[] bArr = new byte[128];
            int read = openFileInput.read(bArr, 0, 128);
            if (openFileInput.available() > 0) {
                zzbR("Hash file seems corrupted, deleting it.");
                openFileInput.close();
                getContext().deleteFile("gaClientIdData");
                return null;
            } else if (read <= 0) {
                zzbO("Hash file is empty.");
                openFileInput.close();
                return null;
            } else {
                String str2 = new String(bArr, 0, read);
                try {
                    openFileInput.close();
                    return str2;
                } catch (FileNotFoundException e) {
                    return str2;
                } catch (IOException e2) {
                    IOException iOException = e2;
                    str = str2;
                    IOException iOException2 = iOException;
                    zzd("Error reading Hash file, deleting it", obj);
                    getContext().deleteFile("gaClientIdData");
                    return str;
                }
            }
        } catch (FileNotFoundException e3) {
            return null;
        } catch (IOException e4) {
            obj = e4;
            zzd("Error reading Hash file, deleting it", obj);
            getContext().deleteFile("gaClientIdData");
            return str;
        }
    }
}
