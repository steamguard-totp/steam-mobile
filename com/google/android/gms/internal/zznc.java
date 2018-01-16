package com.google.android.gms.internal;

import android.net.Uri;
import android.net.Uri.Builder;
import android.text.TextUtils;
import com.google.android.gms.ads.internal.zzv;
import java.util.Arrays;
import java.util.List;
import java.util.Map;
import org.json.JSONObject;

@zzmb
public final class zznc {
    private int mOrientation = -1;
    private String zzFU;
    private final zzmh zzKG;
    private boolean zzKs = false;
    private List<String> zzQe;
    private boolean zzTA = false;
    private boolean zzTB = false;
    private boolean zzTC = true;
    private boolean zzTD = true;
    private String zzTE = "";
    private boolean zzTF = false;
    private zzok zzTG;
    private List<String> zzTH;
    private List<String> zzTI;
    private boolean zzTJ = false;
    private zzmm zzTK;
    private boolean zzTL = false;
    private String zzTM;
    private List<String> zzTN;
    private boolean zzTO;
    private String zzTP;
    private zzon zzTQ;
    private String zzTo;
    private String zzTp;
    private List<String> zzTq;
    private String zzTr;
    private String zzTs;
    private String zzTt;
    private List<String> zzTu;
    private long zzTv = -1;
    private boolean zzTw = false;
    private final long zzTx = -1;
    private long zzTy = -1;
    private boolean zzTz = false;

    public zznc(zzmh com_google_android_gms_internal_zzmh, String str) {
        this.zzTp = str;
        this.zzKG = com_google_android_gms_internal_zzmh;
    }

    private void zzA(Map<String, List<String>> map) {
        List list = (List) map.get("X-Afma-Use-HTTPS");
        if (list != null && !list.isEmpty()) {
            this.zzTB = Boolean.valueOf((String) list.get(0)).booleanValue();
        }
    }

    private void zzB(Map<String, List<String>> map) {
        List list = (List) map.get("X-Afma-Content-Url-Opted-Out");
        if (list != null && !list.isEmpty()) {
            this.zzTC = Boolean.valueOf((String) list.get(0)).booleanValue();
        }
    }

    private void zzC(Map<String, List<String>> map) {
        List list = (List) map.get("X-Afma-Content-Vertical-Opted-Out");
        if (list != null && !list.isEmpty()) {
            this.zzTD = Boolean.valueOf((String) list.get(0)).booleanValue();
        }
    }

    private void zzD(Map<String, List<String>> map) {
        List list = (List) map.get("X-Afma-Gws-Query-Id");
        if (list != null && !list.isEmpty()) {
            this.zzTE = (String) list.get(0);
        }
    }

    private void zzE(Map<String, List<String>> map) {
        String zzc = zzc(map, "X-Afma-Fluid");
        if (zzc != null && zzc.equals("height")) {
            this.zzTF = true;
        }
    }

    private void zzF(Map<String, List<String>> map) {
        this.zzKs = "native_express".equals(zzc(map, "X-Afma-Ad-Format"));
    }

    private void zzG(Map<String, List<String>> map) {
        this.zzTG = zzok.zzaQ(zzc(map, "X-Afma-Rewards"));
    }

    private void zzH(Map<String, List<String>> map) {
        if (this.zzTH == null) {
            this.zzTH = zze(map, "X-Afma-Reward-Video-Start-Urls");
        }
    }

    private void zzI(Map<String, List<String>> map) {
        if (this.zzTI == null) {
            this.zzTI = zze(map, "X-Afma-Reward-Video-Complete-Urls");
        }
    }

    private void zzJ(Map<String, List<String>> map) {
        this.zzTJ |= zzf(map, "X-Afma-Use-Displayed-Impression");
    }

    private void zzK(Map<String, List<String>> map) {
        this.zzTL |= zzf(map, "X-Afma-Auto-Collect-Location");
    }

    private void zzL(Map<String, List<String>> map) {
        List zze = zze(map, "X-Afma-Remote-Ping-Urls");
        if (zze != null) {
            this.zzTN = zze;
        }
    }

    private void zzM(Map<String, List<String>> map) {
        Object zzc = zzc(map, "X-Afma-Auto-Protection-Configuration");
        if (zzc == null || TextUtils.isEmpty(zzc)) {
            Builder buildUpon = Uri.parse("https://pagead2.googlesyndication.com/pagead/gen_204").buildUpon();
            buildUpon.appendQueryParameter("id", "gmob-apps-blocked-navigation");
            if (!TextUtils.isEmpty(this.zzTs)) {
                buildUpon.appendQueryParameter("debugDialog", this.zzTs);
            }
            boolean booleanValue = ((Boolean) zzfx.zzAZ.get()).booleanValue();
            String[] strArr = new String[1];
            String valueOf = String.valueOf(buildUpon.toString());
            String valueOf2 = String.valueOf("navigationURL");
            strArr[0] = new StringBuilder((String.valueOf(valueOf).length() + 18) + String.valueOf(valueOf2).length()).append(valueOf).append("&").append(valueOf2).append("={NAVIGATION_URL}").toString();
            this.zzTK = new zzmm(booleanValue, Arrays.asList(strArr));
            return;
        }
        try {
            this.zzTK = zzmm.zzg(new JSONObject(zzc));
        } catch (Throwable e) {
            zzpy.zzc("Error parsing configuration JSON", e);
            this.zzTK = new zzmm();
        }
    }

    private void zzN(Map<String, List<String>> map) {
        this.zzTM = zzc(map, "Set-Cookie");
    }

    private void zzO(Map<String, List<String>> map) {
        Object zzc = zzc(map, "X-Afma-Safe-Browsing");
        if (!TextUtils.isEmpty(zzc)) {
            try {
                this.zzTQ = zzon.zzi(new JSONObject(zzc));
            } catch (Throwable e) {
                zzpy.zzc("Error parsing safe browsing header", e);
            }
        }
    }

    static String zzc(Map<String, List<String>> map, String str) {
        List list = (List) map.get(str);
        return (list == null || list.isEmpty()) ? null : (String) list.get(0);
    }

    static long zzd(Map<String, List<String>> map, String str) {
        List list = (List) map.get(str);
        if (!(list == null || list.isEmpty())) {
            String str2 = (String) list.get(0);
            try {
                return (long) (Float.parseFloat(str2) * 1000.0f);
            } catch (NumberFormatException e) {
                zzpy.zzbe(new StringBuilder((String.valueOf(str).length() + 36) + String.valueOf(str2).length()).append("Could not parse float from ").append(str).append(" header: ").append(str2).toString());
            }
        }
        return -1;
    }

    static List<String> zze(Map<String, List<String>> map, String str) {
        List list = (List) map.get(str);
        if (!(list == null || list.isEmpty())) {
            String str2 = (String) list.get(0);
            if (str2 != null) {
                return Arrays.asList(str2.trim().split("\\s+"));
            }
        }
        return null;
    }

    private boolean zzf(Map<String, List<String>> map, String str) {
        List list = (List) map.get(str);
        return (list == null || list.isEmpty() || !Boolean.valueOf((String) list.get(0)).booleanValue()) ? false : true;
    }

    private void zzl(Map<String, List<String>> map) {
        this.zzTo = zzc(map, "X-Afma-Ad-Size");
    }

    private void zzm(Map<String, List<String>> map) {
        this.zzTP = zzc(map, "X-Afma-Ad-Slot-Size");
    }

    private void zzn(Map<String, List<String>> map) {
        List zze = zze(map, "X-Afma-Click-Tracking-Urls");
        if (zze != null) {
            this.zzTq = zze;
        }
    }

    private void zzo(Map<String, List<String>> map) {
        this.zzTr = zzc(map, "X-Afma-Debug-Signals");
    }

    private void zzp(Map<String, List<String>> map) {
        List list = (List) map.get("X-Afma-Debug-Dialog");
        if (list != null && !list.isEmpty()) {
            this.zzTs = (String) list.get(0);
        }
    }

    private void zzq(Map<String, List<String>> map) {
        List zze = zze(map, "X-Afma-Tracking-Urls");
        if (zze != null) {
            this.zzTu = zze;
        }
    }

    private void zzr(Map<String, List<String>> map) {
        long zzd = zzd(map, "X-Afma-Interstitial-Timeout");
        if (zzd != -1) {
            this.zzTv = zzd;
        }
    }

    private void zzs(Map<String, List<String>> map) {
        this.zzTt = zzc(map, "X-Afma-ActiveView");
    }

    private void zzt(Map<String, List<String>> map) {
        this.zzTA = "native".equals(zzc(map, "X-Afma-Ad-Format"));
    }

    private void zzu(Map<String, List<String>> map) {
        this.zzTz |= zzf(map, "X-Afma-Custom-Rendering-Allowed");
    }

    private void zzv(Map<String, List<String>> map) {
        this.zzTw |= zzf(map, "X-Afma-Mediation");
    }

    private void zzw(Map<String, List<String>> map) {
        this.zzTO |= zzf(map, "X-Afma-Render-In-Browser");
    }

    private void zzx(Map<String, List<String>> map) {
        List zze = zze(map, "X-Afma-Manual-Tracking-Urls");
        if (zze != null) {
            this.zzQe = zze;
        }
    }

    private void zzy(Map<String, List<String>> map) {
        long zzd = zzd(map, "X-Afma-Refresh-Rate");
        if (zzd != -1) {
            this.zzTy = zzd;
        }
    }

    private void zzz(Map<String, List<String>> map) {
        List list = (List) map.get("X-Afma-Orientation");
        if (list != null && !list.isEmpty()) {
            String str = (String) list.get(0);
            if ("portrait".equalsIgnoreCase(str)) {
                this.mOrientation = zzv.zzcL().zzkq();
            } else if ("landscape".equalsIgnoreCase(str)) {
                this.mOrientation = zzv.zzcL().zzkp();
            }
        }
    }

    public void zzb(String str, Map<String, List<String>> map, String str2) {
        this.zzFU = str2;
        zzk(map);
    }

    public zzmk zzj(long j) {
        return new zzmk(this.zzKG, this.zzTp, this.zzFU, this.zzTq, this.zzTu, this.zzTv, this.zzTw, -1, this.zzQe, this.zzTy, this.mOrientation, this.zzTo, j, this.zzTs, this.zzTt, this.zzTz, this.zzTA, this.zzTB, this.zzTC, false, this.zzTE, this.zzTF, this.zzKs, this.zzTG, this.zzTH, this.zzTI, this.zzTJ, this.zzTK, this.zzTL, this.zzTM, this.zzTN, this.zzTO, this.zzTP, this.zzTQ, this.zzTr, this.zzTD);
    }

    public void zzk(Map<String, List<String>> map) {
        zzl(map);
        zzm(map);
        zzn(map);
        zzo(map);
        zzp(map);
        zzq(map);
        zzr(map);
        zzv(map);
        zzx(map);
        zzy(map);
        zzz(map);
        zzs(map);
        zzA(map);
        zzu(map);
        zzt(map);
        zzB(map);
        zzC(map);
        zzD(map);
        zzE(map);
        zzF(map);
        zzG(map);
        zzH(map);
        zzI(map);
        zzJ(map);
        zzK(map);
        zzN(map);
        zzM(map);
        zzL(map);
        zzO(map);
        zzw(map);
    }
}
