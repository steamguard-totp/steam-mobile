package com.google.android.gms.internal;

import android.app.ActivityManager;
import android.app.ActivityManager.RunningAppProcessInfo;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.net.Uri;
import android.text.TextUtils;
import com.google.android.gms.ads.internal.overlay.zzc;
import com.google.android.gms.ads.internal.zze;
import com.google.android.gms.ads.internal.zzv;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

@zzmb
public final class zzie implements zzhx {
    private final zze zzHN;
    private final zzkj zzHO;
    private final zzhz zzHQ;

    public static class zza {
        private final zzqp zzGt;

        public zza(zzqp com_google_android_gms_internal_zzqp) {
            this.zzGt = com_google_android_gms_internal_zzqp;
        }

        public Intent zza(Context context, Map<String, String> map) {
            ActivityManager activityManager = (ActivityManager) context.getSystemService("activity");
            String str = (String) map.get("u");
            if (TextUtils.isEmpty(str)) {
                return null;
            }
            if (this.zzGt != null) {
                str = zzv.zzcJ().zza(this.zzGt, str);
            }
            Uri parse = Uri.parse(str);
            boolean parseBoolean = Boolean.parseBoolean((String) map.get("use_first_package"));
            boolean parseBoolean2 = Boolean.parseBoolean((String) map.get("use_running_process"));
            Uri build = "http".equalsIgnoreCase(parse.getScheme()) ? parse.buildUpon().scheme("https").build() : "https".equalsIgnoreCase(parse.getScheme()) ? parse.buildUpon().scheme("http").build() : null;
            ArrayList arrayList = new ArrayList();
            Intent zzf = zzf(parse);
            Intent zzf2 = zzf(build);
            ResolveInfo zza = zza(context, zzf, arrayList);
            if (zza != null) {
                return zza(zzf, zza);
            }
            if (zzf2 != null) {
                ResolveInfo zza2 = zza(context, zzf2);
                if (zza2 != null) {
                    Intent zza3 = zza(zzf, zza2);
                    if (zza(context, zza3) != null) {
                        return zza3;
                    }
                }
            }
            if (arrayList.size() == 0) {
                return zzf;
            }
            if (parseBoolean2 && activityManager != null) {
                List<RunningAppProcessInfo> runningAppProcesses = activityManager.getRunningAppProcesses();
                if (runningAppProcesses != null) {
                    Iterator it = arrayList.iterator();
                    while (it.hasNext()) {
                        ResolveInfo resolveInfo = (ResolveInfo) it.next();
                        for (RunningAppProcessInfo runningAppProcessInfo : runningAppProcesses) {
                            if (runningAppProcessInfo.processName.equals(resolveInfo.activityInfo.packageName)) {
                                return zza(zzf, resolveInfo);
                            }
                        }
                    }
                }
            }
            return parseBoolean ? zza(zzf, (ResolveInfo) arrayList.get(0)) : zzf;
        }

        public Intent zza(Intent intent, ResolveInfo resolveInfo) {
            Intent intent2 = new Intent(intent);
            intent2.setClassName(resolveInfo.activityInfo.packageName, resolveInfo.activityInfo.name);
            return intent2;
        }

        public ResolveInfo zza(Context context, Intent intent) {
            return zza(context, intent, new ArrayList());
        }

        public ResolveInfo zza(Context context, Intent intent, ArrayList<ResolveInfo> arrayList) {
            PackageManager packageManager = context.getPackageManager();
            if (packageManager == null) {
                return null;
            }
            ResolveInfo resolveInfo;
            Collection queryIntentActivities = packageManager.queryIntentActivities(intent, 65536);
            ResolveInfo resolveActivity = packageManager.resolveActivity(intent, 65536);
            if (!(queryIntentActivities == null || resolveActivity == null)) {
                for (int i = 0; i < queryIntentActivities.size(); i++) {
                    resolveInfo = (ResolveInfo) queryIntentActivities.get(i);
                    if (resolveActivity != null && resolveActivity.activityInfo.name.equals(resolveInfo.activityInfo.name)) {
                        resolveInfo = resolveActivity;
                        break;
                    }
                }
            }
            resolveInfo = null;
            arrayList.addAll(queryIntentActivities);
            return resolveInfo;
        }

        public Intent zzf(Uri uri) {
            if (uri == null) {
                return null;
            }
            Intent intent = new Intent("android.intent.action.VIEW");
            intent.addFlags(268435456);
            intent.setData(uri);
            intent.setAction("android.intent.action.VIEW");
            return intent;
        }
    }

    public zzie(zzhz com_google_android_gms_internal_zzhz, zze com_google_android_gms_ads_internal_zze, zzkj com_google_android_gms_internal_zzkj) {
        this.zzHQ = com_google_android_gms_internal_zzhz;
        this.zzHN = com_google_android_gms_ads_internal_zze;
        this.zzHO = com_google_android_gms_internal_zzkj;
    }

    private static boolean zzd(Map<String, String> map) {
        return "1".equals(map.get("custom_close"));
    }

    private static int zze(Map<String, String> map) {
        String str = (String) map.get("o");
        if (str != null) {
            if ("p".equalsIgnoreCase(str)) {
                return zzv.zzcL().zzkq();
            }
            if ("l".equalsIgnoreCase(str)) {
                return zzv.zzcL().zzkp();
            }
            if ("c".equalsIgnoreCase(str)) {
                return zzv.zzcL().zzkr();
            }
        }
        return -1;
    }

    private static void zzf(zzqp com_google_android_gms_internal_zzqp, Map<String, String> map) {
        Context context = com_google_android_gms_internal_zzqp.getContext();
        if (TextUtils.isEmpty((String) map.get("u"))) {
            zzpy.zzbe("Destination url cannot be empty.");
            return;
        }
        try {
            com_google_android_gms_internal_zzqp.zzkV().zza(new zzc(new zza(com_google_android_gms_internal_zzqp).zza(context, (Map) map)));
        } catch (ActivityNotFoundException e) {
            zzpy.zzbe(e.getMessage());
        }
    }

    private void zzr(boolean z) {
        if (this.zzHO != null) {
            this.zzHO.zzs(z);
        }
    }

    public void zza(zzqp com_google_android_gms_internal_zzqp, Map<String, String> map) {
        String str = (String) map.get("a");
        if (str == null) {
            zzpy.zzbe("Action missing from an open GMSG.");
        } else if (this.zzHN == null || this.zzHN.zzcb()) {
            zzqq zzkV = com_google_android_gms_internal_zzqp.zzkV();
            if ("expand".equalsIgnoreCase(str)) {
                if (com_google_android_gms_internal_zzqp.zzkZ()) {
                    zzpy.zzbe("Cannot expand WebView that is already expanded.");
                    return;
                }
                zzr(false);
                zzkV.zza(zzd(map), zze(map));
            } else if ("webapp".equalsIgnoreCase(str)) {
                str = (String) map.get("u");
                zzr(false);
                if (str != null) {
                    zzkV.zza(zzd(map), zze(map), str);
                } else {
                    zzkV.zza(zzd(map), zze(map), (String) map.get("html"), (String) map.get("baseurl"));
                }
            } else if ("in_app_purchase".equalsIgnoreCase(str)) {
                str = (String) map.get("product_id");
                String str2 = (String) map.get("report_urls");
                if (this.zzHQ == null) {
                    return;
                }
                if (str2 == null || str2.isEmpty()) {
                    this.zzHQ.zza(str, new ArrayList());
                } else {
                    this.zzHQ.zza(str, new ArrayList(Arrays.asList(str2.split(" "))));
                }
            } else if ("app".equalsIgnoreCase(str) && "true".equalsIgnoreCase((String) map.get("system_browser"))) {
                zzr(true);
                zzf(com_google_android_gms_internal_zzqp, map);
            } else {
                zzr(true);
                str = (String) map.get("u");
                zzkV.zza(new zzc((String) map.get("i"), !TextUtils.isEmpty(str) ? zzv.zzcJ().zza(com_google_android_gms_internal_zzqp, str) : str, (String) map.get("m"), (String) map.get("p"), (String) map.get("c"), (String) map.get("f"), (String) map.get("e")));
            }
        } else {
            this.zzHN.zzx((String) map.get("u"));
        }
    }
}
