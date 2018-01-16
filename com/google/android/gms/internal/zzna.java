package com.google.android.gms.internal;

import android.content.Context;
import android.graphics.Color;
import android.location.Location;
import android.os.Build;
import android.os.Bundle;
import android.os.Debug.MemoryInfo;
import android.text.TextUtils;
import com.google.android.gms.ads.internal.zzv;
import com.google.android.gms.internal.zznj.zza;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Locale;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

@zzmb
public final class zzna {
    private static final SimpleDateFormat zzTg = new SimpleDateFormat("yyyyMMdd", Locale.US);

    private static Integer zzB(boolean z) {
        return Integer.valueOf(z ? 1 : 0);
    }

    private static String zzZ(int i) {
        return String.format(Locale.US, "#%06x", new Object[]{Integer.valueOf(16777215 & i)});
    }

    public static zzmk zza(Context context, zzmh com_google_android_gms_internal_zzmh, String str) {
        String optString;
        try {
            String str2;
            JSONObject jSONObject = new JSONObject(str);
            String optString2 = jSONObject.optString("ad_base_url", null);
            Object optString3 = jSONObject.optString("ad_url", null);
            String optString4 = jSONObject.optString("ad_size", null);
            String optString5 = jSONObject.optString("ad_slot_size", optString4);
            boolean z = (com_google_android_gms_internal_zzmh == null || com_google_android_gms_internal_zzmh.zzRj == 0) ? false : true;
            CharSequence optString6 = jSONObject.optString("ad_json", null);
            if (optString6 == null) {
                optString6 = jSONObject.optString("ad_html", null);
            }
            if (optString6 == null) {
                optString6 = jSONObject.optString("body", null);
            }
            long j = -1;
            String optString7 = jSONObject.optString("debug_dialog", null);
            String optString8 = jSONObject.optString("debug_signals", null);
            long j2 = jSONObject.has("interstitial_timeout") ? (long) (jSONObject.getDouble("interstitial_timeout") * 1000.0d) : -1;
            optString = jSONObject.optString("orientation", null);
            int i = -1;
            if ("portrait".equals(optString)) {
                i = zzv.zzcL().zzkq();
            } else if ("landscape".equals(optString)) {
                i = zzv.zzcL().zzkp();
            }
            zzmk com_google_android_gms_internal_zzmk = null;
            if (!TextUtils.isEmpty(optString6) || TextUtils.isEmpty(optString3)) {
                CharSequence charSequence = optString6;
            } else {
                com_google_android_gms_internal_zzmk = zzmz.zza(com_google_android_gms_internal_zzmh, context, com_google_android_gms_internal_zzmh.zzvf.zzaZ, optString3, null, null, null, null);
                optString2 = com_google_android_gms_internal_zzmk.zzNb;
                str2 = com_google_android_gms_internal_zzmk.body;
                j = com_google_android_gms_internal_zzmk.zzRO;
            }
            if (str2 == null) {
                return new zzmk(0);
            }
            long j3;
            String optString9;
            String str3;
            boolean optBoolean;
            JSONArray optJSONArray = jSONObject.optJSONArray("click_urls");
            List list = com_google_android_gms_internal_zzmk == null ? null : com_google_android_gms_internal_zzmk.zzJY;
            if (optJSONArray != null) {
                list = zza(optJSONArray, list);
            }
            optJSONArray = jSONObject.optJSONArray("impression_urls");
            List list2 = com_google_android_gms_internal_zzmk == null ? null : com_google_android_gms_internal_zzmk.zzJZ;
            if (optJSONArray != null) {
                list2 = zza(optJSONArray, list2);
            }
            optJSONArray = jSONObject.optJSONArray("manual_impression_urls");
            List list3 = com_google_android_gms_internal_zzmk == null ? null : com_google_android_gms_internal_zzmk.zzRM;
            if (optJSONArray != null) {
                list3 = zza(optJSONArray, list3);
            }
            if (com_google_android_gms_internal_zzmk != null) {
                if (com_google_android_gms_internal_zzmk.orientation != -1) {
                    i = com_google_android_gms_internal_zzmk.orientation;
                }
                if (com_google_android_gms_internal_zzmk.zzRJ > 0) {
                    j3 = com_google_android_gms_internal_zzmk.zzRJ;
                    optString9 = jSONObject.optString("active_view");
                    str3 = null;
                    optBoolean = jSONObject.optBoolean("ad_is_javascript", false);
                    if (optBoolean) {
                        str3 = jSONObject.optString("ad_passback_url", null);
                    }
                    return new zzmk(com_google_android_gms_internal_zzmh, optString2, str2, list, list2, j3, jSONObject.optBoolean("mediation", false), jSONObject.optLong("mediation_config_cache_time_milliseconds", -1), list3, jSONObject.optLong("refresh_interval_milliseconds", -1), i, optString4, j, optString7, optBoolean, str3, optString9, jSONObject.optBoolean("custom_render_allowed", false), z, com_google_android_gms_internal_zzmh.zzRl, jSONObject.optBoolean("content_url_opted_out", true), jSONObject.optBoolean("prefetch", false), jSONObject.optString("gws_query_id", ""), "height".equals(jSONObject.optString("fluid", "")), jSONObject.optBoolean("native_express", false), zzok.zza(jSONObject.optJSONArray("rewards")), zza(jSONObject.optJSONArray("video_start_urls"), null), zza(jSONObject.optJSONArray("video_complete_urls"), null), jSONObject.optBoolean("use_displayed_impression", false), zzmm.zzg(jSONObject.optJSONObject("auto_protection_configuration")), com_google_android_gms_internal_zzmh.zzRB, jSONObject.optString("set_cookie", ""), zza(jSONObject.optJSONArray("remote_ping_urls"), null), jSONObject.optBoolean("render_in_browser", com_google_android_gms_internal_zzmh.zzKc), optString5, zzon.zzi(jSONObject.optJSONObject("safe_browsing")), optString8, jSONObject.optBoolean("content_vertical_opted_out", true));
                }
            }
            j3 = j2;
            optString9 = jSONObject.optString("active_view");
            str3 = null;
            optBoolean = jSONObject.optBoolean("ad_is_javascript", false);
            if (optBoolean) {
                str3 = jSONObject.optString("ad_passback_url", null);
            }
            return new zzmk(com_google_android_gms_internal_zzmh, optString2, str2, list, list2, j3, jSONObject.optBoolean("mediation", false), jSONObject.optLong("mediation_config_cache_time_milliseconds", -1), list3, jSONObject.optLong("refresh_interval_milliseconds", -1), i, optString4, j, optString7, optBoolean, str3, optString9, jSONObject.optBoolean("custom_render_allowed", false), z, com_google_android_gms_internal_zzmh.zzRl, jSONObject.optBoolean("content_url_opted_out", true), jSONObject.optBoolean("prefetch", false), jSONObject.optString("gws_query_id", ""), "height".equals(jSONObject.optString("fluid", "")), jSONObject.optBoolean("native_express", false), zzok.zza(jSONObject.optJSONArray("rewards")), zza(jSONObject.optJSONArray("video_start_urls"), null), zza(jSONObject.optJSONArray("video_complete_urls"), null), jSONObject.optBoolean("use_displayed_impression", false), zzmm.zzg(jSONObject.optJSONObject("auto_protection_configuration")), com_google_android_gms_internal_zzmh.zzRB, jSONObject.optString("set_cookie", ""), zza(jSONObject.optJSONArray("remote_ping_urls"), null), jSONObject.optBoolean("render_in_browser", com_google_android_gms_internal_zzmh.zzKc), optString5, zzon.zzi(jSONObject.optJSONObject("safe_browsing")), optString8, jSONObject.optBoolean("content_vertical_opted_out", true));
        } catch (JSONException e) {
            String str4 = "Could not parse the inline ad response: ";
            optString = String.valueOf(e.getMessage());
            zzpy.zzbe(optString.length() != 0 ? str4.concat(optString) : new String(str4));
            return new zzmk(0);
        }
    }

    private static List<String> zza(JSONArray jSONArray, List<String> list) throws JSONException {
        if (jSONArray == null) {
            return null;
        }
        if (list == null) {
            list = new LinkedList();
        }
        for (int i = 0; i < jSONArray.length(); i++) {
            list.add(jSONArray.getString(i));
        }
        return list;
    }

    public static JSONObject zza(Context context, zzmx com_google_android_gms_internal_zzmx) {
        Object obj;
        String str;
        String valueOf;
        zzmh com_google_android_gms_internal_zzmh = com_google_android_gms_internal_zzmx.zzSF;
        Location location = com_google_android_gms_internal_zzmx.zzyN;
        zznf com_google_android_gms_internal_zznf = com_google_android_gms_internal_zzmx.zzSG;
        Bundle bundle = com_google_android_gms_internal_zzmx.zzRk;
        JSONObject jSONObject = com_google_android_gms_internal_zzmx.zzSH;
        HashMap hashMap = new HashMap();
        hashMap.put("extra_caps", zzfx.zzDN.get());
        if (com_google_android_gms_internal_zzmx.zzRs.size() > 0) {
            hashMap.put("eid", TextUtils.join(",", com_google_android_gms_internal_zzmx.zzRs));
        }
        if (com_google_android_gms_internal_zzmh.zzRc != null) {
            hashMap.put("ad_pos", com_google_android_gms_internal_zzmh.zzRc);
        }
        zza(hashMap, com_google_android_gms_internal_zzmh.zzRd);
        if (com_google_android_gms_internal_zzmh.zzvj.zzzm != null) {
            obj = null;
            Object obj2 = null;
            for (zzec com_google_android_gms_internal_zzec : com_google_android_gms_internal_zzmh.zzvj.zzzm) {
                if (!com_google_android_gms_internal_zzec.zzzo && r3 == null) {
                    hashMap.put("format", com_google_android_gms_internal_zzec.zzzk);
                    obj2 = 1;
                }
                if (com_google_android_gms_internal_zzec.zzzo && r2 == null) {
                    hashMap.put("fluid", "height");
                    obj = 1;
                }
                if (obj2 != null && r2 != null) {
                    break;
                }
            }
        } else {
            hashMap.put("format", com_google_android_gms_internal_zzmh.zzvj.zzzk);
            if (com_google_android_gms_internal_zzmh.zzvj.zzzo) {
                hashMap.put("fluid", "height");
            }
        }
        if (com_google_android_gms_internal_zzmh.zzvj.width == -1) {
            hashMap.put("smart_w", "full");
        }
        if (com_google_android_gms_internal_zzmh.zzvj.height == -2) {
            hashMap.put("smart_h", "auto");
        }
        if (com_google_android_gms_internal_zzmh.zzvj.zzzm != null) {
            StringBuilder stringBuilder = new StringBuilder();
            obj = null;
            for (zzec com_google_android_gms_internal_zzec2 : com_google_android_gms_internal_zzmh.zzvj.zzzm) {
                if (com_google_android_gms_internal_zzec2.zzzo) {
                    obj = 1;
                } else {
                    int i;
                    if (stringBuilder.length() != 0) {
                        stringBuilder.append("|");
                    }
                    if (com_google_android_gms_internal_zzec2.width == -1) {
                        i = (int) (((float) com_google_android_gms_internal_zzec2.widthPixels) / com_google_android_gms_internal_zznf.zzxa);
                    } else {
                        try {
                            i = com_google_android_gms_internal_zzec2.width;
                        } catch (JSONException e) {
                            str = "Problem serializing ad request to JSON: ";
                            valueOf = String.valueOf(e.getMessage());
                            zzpy.zzbe(valueOf.length() != 0 ? str.concat(valueOf) : new String(str));
                            return null;
                        }
                    }
                    stringBuilder.append(i);
                    stringBuilder.append("x");
                    stringBuilder.append(com_google_android_gms_internal_zzec2.height == -2 ? (int) (((float) com_google_android_gms_internal_zzec2.heightPixels) / com_google_android_gms_internal_zznf.zzxa) : com_google_android_gms_internal_zzec2.height);
                }
            }
            if (obj != null) {
                if (stringBuilder.length() != 0) {
                    stringBuilder.insert(0, "|");
                }
                stringBuilder.insert(0, "320x50");
            }
            hashMap.put("sz", stringBuilder);
        }
        if (com_google_android_gms_internal_zzmh.zzRj != 0) {
            hashMap.put("native_version", Integer.valueOf(com_google_android_gms_internal_zzmh.zzRj));
            hashMap.put("native_templates", com_google_android_gms_internal_zzmh.zzvB);
            hashMap.put("native_image_orientation", zzc(com_google_android_gms_internal_zzmh.zzvx));
            if (!com_google_android_gms_internal_zzmh.zzRt.isEmpty()) {
                hashMap.put("native_custom_templates", com_google_android_gms_internal_zzmh.zzRt);
            }
        }
        if (com_google_android_gms_internal_zzmh.zzvj.zzzp) {
            hashMap.put("ene", Boolean.valueOf(true));
        }
        hashMap.put("slotname", com_google_android_gms_internal_zzmh.zzvd);
        hashMap.put("pn", com_google_android_gms_internal_zzmh.applicationInfo.packageName);
        if (com_google_android_gms_internal_zzmh.zzRe != null) {
            hashMap.put("vc", Integer.valueOf(com_google_android_gms_internal_zzmh.zzRe.versionCode));
        }
        hashMap.put("ms", com_google_android_gms_internal_zzmx.zzRf);
        hashMap.put("seq_num", com_google_android_gms_internal_zzmh.zzRg);
        hashMap.put("session_id", com_google_android_gms_internal_zzmh.zzRh);
        hashMap.put("js", com_google_android_gms_internal_zzmh.zzvf.zzaZ);
        zza(hashMap, com_google_android_gms_internal_zznf, com_google_android_gms_internal_zzmx.zzSD, com_google_android_gms_internal_zzmh.zzRG, com_google_android_gms_internal_zzmx.zzSC);
        zza(hashMap, com_google_android_gms_internal_zzmx.zzSE);
        hashMap.put("platform", Build.MANUFACTURER);
        hashMap.put("submodel", Build.MODEL);
        if (location != null) {
            zza(hashMap, location);
        } else if (com_google_android_gms_internal_zzmh.zzRd.versionCode >= 2 && com_google_android_gms_internal_zzmh.zzRd.zzyN != null) {
            zza(hashMap, com_google_android_gms_internal_zzmh.zzRd.zzyN);
        }
        if (com_google_android_gms_internal_zzmh.versionCode >= 2) {
            hashMap.put("quality_signals", com_google_android_gms_internal_zzmh.zzRi);
        }
        if (com_google_android_gms_internal_zzmh.versionCode >= 4 && com_google_android_gms_internal_zzmh.zzRl) {
            hashMap.put("forceHttps", Boolean.valueOf(com_google_android_gms_internal_zzmh.zzRl));
        }
        if (bundle != null) {
            hashMap.put("content_info", bundle);
        }
        if (com_google_android_gms_internal_zzmh.versionCode >= 5) {
            hashMap.put("u_sd", Float.valueOf(com_google_android_gms_internal_zzmh.zzxa));
            hashMap.put("sh", Integer.valueOf(com_google_android_gms_internal_zzmh.zzRo));
            hashMap.put("sw", Integer.valueOf(com_google_android_gms_internal_zzmh.zzRn));
        } else {
            hashMap.put("u_sd", Float.valueOf(com_google_android_gms_internal_zznf.zzxa));
            hashMap.put("sh", Integer.valueOf(com_google_android_gms_internal_zznf.zzRo));
            hashMap.put("sw", Integer.valueOf(com_google_android_gms_internal_zznf.zzRn));
        }
        if (com_google_android_gms_internal_zzmh.versionCode >= 6) {
            if (!TextUtils.isEmpty(com_google_android_gms_internal_zzmh.zzRp)) {
                try {
                    hashMap.put("view_hierarchy", new JSONObject(com_google_android_gms_internal_zzmh.zzRp));
                } catch (Throwable e2) {
                    zzpy.zzc("Problem serializing view hierarchy to JSON", e2);
                }
            }
            hashMap.put("correlation_id", Long.valueOf(com_google_android_gms_internal_zzmh.zzRq));
        }
        if (com_google_android_gms_internal_zzmh.versionCode >= 7) {
            hashMap.put("request_id", com_google_android_gms_internal_zzmh.zzRr);
        }
        if (com_google_android_gms_internal_zzmh.versionCode >= 11 && com_google_android_gms_internal_zzmh.zzRv != null) {
            hashMap.put("capability", com_google_android_gms_internal_zzmh.zzRv.toBundle());
        }
        if (com_google_android_gms_internal_zzmh.versionCode >= 12 && !TextUtils.isEmpty(com_google_android_gms_internal_zzmh.zzRw)) {
            hashMap.put("anchor", com_google_android_gms_internal_zzmh.zzRw);
        }
        if (com_google_android_gms_internal_zzmh.versionCode >= 13) {
            hashMap.put("android_app_volume", Float.valueOf(com_google_android_gms_internal_zzmh.zzRx));
        }
        if (com_google_android_gms_internal_zzmh.versionCode >= 18) {
            hashMap.put("android_app_muted", Boolean.valueOf(com_google_android_gms_internal_zzmh.zzRD));
        }
        if (com_google_android_gms_internal_zzmh.versionCode >= 14 && com_google_android_gms_internal_zzmh.zzRy > 0) {
            hashMap.put("target_api", Integer.valueOf(com_google_android_gms_internal_zzmh.zzRy));
        }
        if (com_google_android_gms_internal_zzmh.versionCode >= 15) {
            hashMap.put("scroll_index", Integer.valueOf(com_google_android_gms_internal_zzmh.zzRz == -1 ? -1 : com_google_android_gms_internal_zzmh.zzRz));
        }
        if (com_google_android_gms_internal_zzmh.versionCode >= 16) {
            hashMap.put("_activity_context", Boolean.valueOf(com_google_android_gms_internal_zzmh.zzRA));
        }
        if (com_google_android_gms_internal_zzmh.versionCode >= 18) {
            if (!TextUtils.isEmpty(com_google_android_gms_internal_zzmh.zzRE)) {
                try {
                    hashMap.put("app_settings", new JSONObject(com_google_android_gms_internal_zzmh.zzRE));
                } catch (Throwable e22) {
                    zzpy.zzc("Problem creating json from app settings", e22);
                }
            }
            hashMap.put("render_in_browser", Boolean.valueOf(com_google_android_gms_internal_zzmh.zzKc));
        }
        if (com_google_android_gms_internal_zzmh.versionCode >= 18) {
            hashMap.put("android_num_video_cache_tasks", Integer.valueOf(com_google_android_gms_internal_zzmh.zzRF));
        }
        zza(hashMap);
        hashMap.put("cache_state", jSONObject);
        if (com_google_android_gms_internal_zzmh.versionCode >= 19) {
            hashMap.put("gct", com_google_android_gms_internal_zzmh.zzRH);
        }
        if (zzpy.zzai(2)) {
            str = "Ad Request JSON: ";
            valueOf = String.valueOf(zzv.zzcJ().zzP(hashMap).toString(2));
            zzpe.v(valueOf.length() != 0 ? str.concat(valueOf) : new String(str));
        }
        return zzv.zzcJ().zzP(hashMap);
    }

    private static void zza(HashMap<String, Object> hashMap) {
        Bundle bundle = new Bundle();
        Bundle bundle2 = new Bundle();
        bundle2.putString("cl", "139965458");
        bundle2.putString("rapid_rc", "dev");
        bundle2.putString("rapid_rollup", "HEAD");
        bundle.putBundle("build_meta", bundle2);
        bundle.putString("mf", Boolean.toString(((Boolean) zzfx.zzDP.get()).booleanValue()));
        hashMap.put("sdk_env", bundle);
    }

    private static void zza(HashMap<String, Object> hashMap, Location location) {
        HashMap hashMap2 = new HashMap();
        Float valueOf = Float.valueOf(location.getAccuracy() * 1000.0f);
        Long valueOf2 = Long.valueOf(location.getTime() * 1000);
        Long valueOf3 = Long.valueOf((long) (location.getLatitude() * 1.0E7d));
        Long valueOf4 = Long.valueOf((long) (location.getLongitude() * 1.0E7d));
        hashMap2.put("radius", valueOf);
        hashMap2.put("lat", valueOf3);
        hashMap2.put("long", valueOf4);
        hashMap2.put("time", valueOf2);
        hashMap.put("uule", hashMap2);
    }

    private static void zza(HashMap<String, Object> hashMap, zzdy com_google_android_gms_internal_zzdy) {
        String zzke = zzpc.zzke();
        if (zzke != null) {
            hashMap.put("abf", zzke);
        }
        if (com_google_android_gms_internal_zzdy.zzyF != -1) {
            hashMap.put("cust_age", zzTg.format(new Date(com_google_android_gms_internal_zzdy.zzyF)));
        }
        if (com_google_android_gms_internal_zzdy.extras != null) {
            hashMap.put("extras", com_google_android_gms_internal_zzdy.extras);
        }
        if (com_google_android_gms_internal_zzdy.zzyG != -1) {
            hashMap.put("cust_gender", Integer.valueOf(com_google_android_gms_internal_zzdy.zzyG));
        }
        if (com_google_android_gms_internal_zzdy.zzyH != null) {
            hashMap.put("kw", com_google_android_gms_internal_zzdy.zzyH);
        }
        if (com_google_android_gms_internal_zzdy.zzyJ != -1) {
            hashMap.put("tag_for_child_directed_treatment", Integer.valueOf(com_google_android_gms_internal_zzdy.zzyJ));
        }
        if (com_google_android_gms_internal_zzdy.zzyI) {
            hashMap.put("adtest", "on");
        }
        if (com_google_android_gms_internal_zzdy.versionCode >= 2) {
            if (com_google_android_gms_internal_zzdy.zzyK) {
                hashMap.put("d_imp_hdr", Integer.valueOf(1));
            }
            if (!TextUtils.isEmpty(com_google_android_gms_internal_zzdy.zzyL)) {
                hashMap.put("ppid", com_google_android_gms_internal_zzdy.zzyL);
            }
            if (com_google_android_gms_internal_zzdy.zzyM != null) {
                zza((HashMap) hashMap, com_google_android_gms_internal_zzdy.zzyM);
            }
        }
        if (com_google_android_gms_internal_zzdy.versionCode >= 3 && com_google_android_gms_internal_zzdy.zzyO != null) {
            hashMap.put("url", com_google_android_gms_internal_zzdy.zzyO);
        }
        if (com_google_android_gms_internal_zzdy.versionCode >= 5) {
            if (com_google_android_gms_internal_zzdy.zzyQ != null) {
                hashMap.put("custom_targeting", com_google_android_gms_internal_zzdy.zzyQ);
            }
            if (com_google_android_gms_internal_zzdy.zzyR != null) {
                hashMap.put("category_exclusions", com_google_android_gms_internal_zzdy.zzyR);
            }
            if (com_google_android_gms_internal_zzdy.zzyS != null) {
                hashMap.put("request_agent", com_google_android_gms_internal_zzdy.zzyS);
            }
        }
        if (com_google_android_gms_internal_zzdy.versionCode >= 6 && com_google_android_gms_internal_zzdy.zzyT != null) {
            hashMap.put("request_pkg", com_google_android_gms_internal_zzdy.zzyT);
        }
        if (com_google_android_gms_internal_zzdy.versionCode >= 7) {
            hashMap.put("is_designed_for_families", Boolean.valueOf(com_google_android_gms_internal_zzdy.zzyU));
        }
    }

    private static void zza(HashMap<String, Object> hashMap, zzfj com_google_android_gms_internal_zzfj) {
        Object obj;
        Object obj2 = null;
        if (Color.alpha(com_google_android_gms_internal_zzfj.zzAr) != 0) {
            hashMap.put("acolor", zzZ(com_google_android_gms_internal_zzfj.zzAr));
        }
        if (Color.alpha(com_google_android_gms_internal_zzfj.backgroundColor) != 0) {
            hashMap.put("bgcolor", zzZ(com_google_android_gms_internal_zzfj.backgroundColor));
        }
        if (!(Color.alpha(com_google_android_gms_internal_zzfj.zzAs) == 0 || Color.alpha(com_google_android_gms_internal_zzfj.zzAt) == 0)) {
            hashMap.put("gradientto", zzZ(com_google_android_gms_internal_zzfj.zzAs));
            hashMap.put("gradientfrom", zzZ(com_google_android_gms_internal_zzfj.zzAt));
        }
        if (Color.alpha(com_google_android_gms_internal_zzfj.zzAu) != 0) {
            hashMap.put("bcolor", zzZ(com_google_android_gms_internal_zzfj.zzAu));
        }
        hashMap.put("bthick", Integer.toString(com_google_android_gms_internal_zzfj.zzAv));
        switch (com_google_android_gms_internal_zzfj.zzAw) {
            case 0:
                obj = "none";
                break;
            case 1:
                obj = "dashed";
                break;
            case 2:
                obj = "dotted";
                break;
            case 3:
                obj = "solid";
                break;
            default:
                obj = null;
                break;
        }
        if (obj != null) {
            hashMap.put("btype", obj);
        }
        switch (com_google_android_gms_internal_zzfj.zzAx) {
            case 0:
                obj2 = "light";
                break;
            case 1:
                obj2 = "medium";
                break;
            case 2:
                obj2 = "dark";
                break;
        }
        if (obj2 != null) {
            hashMap.put("callbuttoncolor", obj2);
        }
        if (com_google_android_gms_internal_zzfj.zzAy != null) {
            hashMap.put("channel", com_google_android_gms_internal_zzfj.zzAy);
        }
        if (Color.alpha(com_google_android_gms_internal_zzfj.zzAz) != 0) {
            hashMap.put("dcolor", zzZ(com_google_android_gms_internal_zzfj.zzAz));
        }
        if (com_google_android_gms_internal_zzfj.zzAA != null) {
            hashMap.put("font", com_google_android_gms_internal_zzfj.zzAA);
        }
        if (Color.alpha(com_google_android_gms_internal_zzfj.zzAB) != 0) {
            hashMap.put("hcolor", zzZ(com_google_android_gms_internal_zzfj.zzAB));
        }
        hashMap.put("headersize", Integer.toString(com_google_android_gms_internal_zzfj.zzAC));
        if (com_google_android_gms_internal_zzfj.zzAD != null) {
            hashMap.put("q", com_google_android_gms_internal_zzfj.zzAD);
        }
    }

    private static void zza(HashMap<String, Object> hashMap, zznf com_google_android_gms_internal_zznf, zza com_google_android_gms_internal_zznj_zza, Bundle bundle, Bundle bundle2) {
        hashMap.put("am", Integer.valueOf(com_google_android_gms_internal_zznf.zzUa));
        hashMap.put("cog", zzB(com_google_android_gms_internal_zznf.zzUb));
        hashMap.put("coh", zzB(com_google_android_gms_internal_zznf.zzUc));
        if (!TextUtils.isEmpty(com_google_android_gms_internal_zznf.zzUd)) {
            hashMap.put("carrier", com_google_android_gms_internal_zznf.zzUd);
        }
        hashMap.put("gl", com_google_android_gms_internal_zznf.zzUe);
        if (com_google_android_gms_internal_zznf.zzUf) {
            hashMap.put("simulator", Integer.valueOf(1));
        }
        if (com_google_android_gms_internal_zznf.zzUg) {
            hashMap.put("is_sidewinder", Integer.valueOf(1));
        }
        hashMap.put("ma", zzB(com_google_android_gms_internal_zznf.zzUh));
        hashMap.put("sp", zzB(com_google_android_gms_internal_zznf.zzUi));
        hashMap.put("hl", com_google_android_gms_internal_zznf.zzUj);
        if (!TextUtils.isEmpty(com_google_android_gms_internal_zznf.zzUk)) {
            hashMap.put("mv", com_google_android_gms_internal_zznf.zzUk);
        }
        hashMap.put("muv", Integer.valueOf(com_google_android_gms_internal_zznf.zzUl));
        if (com_google_android_gms_internal_zznf.zzUm != -2) {
            hashMap.put("cnt", Integer.valueOf(com_google_android_gms_internal_zznf.zzUm));
        }
        hashMap.put("gnt", Integer.valueOf(com_google_android_gms_internal_zznf.zzUn));
        hashMap.put("pt", Integer.valueOf(com_google_android_gms_internal_zznf.zzUo));
        hashMap.put("rm", Integer.valueOf(com_google_android_gms_internal_zznf.zzUp));
        hashMap.put("riv", Integer.valueOf(com_google_android_gms_internal_zznf.zzUq));
        Bundle bundle3 = new Bundle();
        bundle3.putString("build", com_google_android_gms_internal_zznf.zzUv);
        Bundle bundle4 = new Bundle();
        bundle4.putBoolean("is_charging", com_google_android_gms_internal_zznf.zzUs);
        bundle4.putDouble("battery_level", com_google_android_gms_internal_zznf.zzUr);
        bundle3.putBundle("battery", bundle4);
        bundle4 = new Bundle();
        bundle4.putInt("active_network_state", com_google_android_gms_internal_zznf.zzUu);
        bundle4.putBoolean("active_network_metered", com_google_android_gms_internal_zznf.zzUt);
        if (com_google_android_gms_internal_zznj_zza != null) {
            Bundle bundle5 = new Bundle();
            bundle5.putInt("predicted_latency_micros", com_google_android_gms_internal_zznj_zza.zzUA);
            bundle5.putLong("predicted_down_throughput_bps", com_google_android_gms_internal_zznj_zza.zzUB);
            bundle5.putLong("predicted_up_throughput_bps", com_google_android_gms_internal_zznj_zza.zzUC);
            bundle4.putBundle("predictions", bundle5);
        }
        bundle3.putBundle("network", bundle4);
        bundle4 = new Bundle();
        bundle4.putBoolean("is_browser_custom_tabs_capable", com_google_android_gms_internal_zznf.zzUw);
        bundle3.putBundle("browser", bundle4);
        if (bundle != null) {
            bundle3.putBundle("android_mem_info", zzg(bundle));
        }
        bundle4 = new Bundle();
        bundle4.putBundle("parental_controls", bundle2);
        bundle3.putBundle("play_store", bundle4);
        hashMap.put("device", bundle3);
    }

    private static void zza(HashMap<String, Object> hashMap, String str) {
        Bundle bundle = new Bundle();
        bundle.putString("doritos", str);
        hashMap.put("pii", bundle);
    }

    private static String zzc(zzgw com_google_android_gms_internal_zzgw) {
        switch (com_google_android_gms_internal_zzgw != null ? com_google_android_gms_internal_zzgw.zzGE : 0) {
            case 1:
                return "portrait";
            case 2:
                return "landscape";
            default:
                return "any";
        }
    }

    public static JSONObject zzc(zzmk com_google_android_gms_internal_zzmk) throws JSONException {
        JSONObject jSONObject = new JSONObject();
        if (com_google_android_gms_internal_zzmk.zzNb != null) {
            jSONObject.put("ad_base_url", com_google_android_gms_internal_zzmk.zzNb);
        }
        if (com_google_android_gms_internal_zzmk.zzRN != null) {
            jSONObject.put("ad_size", com_google_android_gms_internal_zzmk.zzRN);
        }
        jSONObject.put("native", com_google_android_gms_internal_zzmk.zzzn);
        if (com_google_android_gms_internal_zzmk.zzzn) {
            jSONObject.put("ad_json", com_google_android_gms_internal_zzmk.body);
        } else {
            jSONObject.put("ad_html", com_google_android_gms_internal_zzmk.body);
        }
        if (com_google_android_gms_internal_zzmk.zzRP != null) {
            jSONObject.put("debug_dialog", com_google_android_gms_internal_zzmk.zzRP);
        }
        if (com_google_android_gms_internal_zzmk.zzSg != null) {
            jSONObject.put("debug_signals", com_google_android_gms_internal_zzmk.zzSg);
        }
        if (com_google_android_gms_internal_zzmk.zzRJ != -1) {
            jSONObject.put("interstitial_timeout", ((double) com_google_android_gms_internal_zzmk.zzRJ) / 1000.0d);
        }
        if (com_google_android_gms_internal_zzmk.orientation == zzv.zzcL().zzkq()) {
            jSONObject.put("orientation", "portrait");
        } else if (com_google_android_gms_internal_zzmk.orientation == zzv.zzcL().zzkp()) {
            jSONObject.put("orientation", "landscape");
        }
        if (com_google_android_gms_internal_zzmk.zzJY != null) {
            jSONObject.put("click_urls", zzl(com_google_android_gms_internal_zzmk.zzJY));
        }
        if (com_google_android_gms_internal_zzmk.zzJZ != null) {
            jSONObject.put("impression_urls", zzl(com_google_android_gms_internal_zzmk.zzJZ));
        }
        if (com_google_android_gms_internal_zzmk.zzRM != null) {
            jSONObject.put("manual_impression_urls", zzl(com_google_android_gms_internal_zzmk.zzRM));
        }
        if (com_google_android_gms_internal_zzmk.zzRS != null) {
            jSONObject.put("active_view", com_google_android_gms_internal_zzmk.zzRS);
        }
        jSONObject.put("ad_is_javascript", com_google_android_gms_internal_zzmk.zzRQ);
        if (com_google_android_gms_internal_zzmk.zzRR != null) {
            jSONObject.put("ad_passback_url", com_google_android_gms_internal_zzmk.zzRR);
        }
        jSONObject.put("mediation", com_google_android_gms_internal_zzmk.zzRK);
        jSONObject.put("custom_render_allowed", com_google_android_gms_internal_zzmk.zzRT);
        jSONObject.put("content_url_opted_out", com_google_android_gms_internal_zzmk.zzRU);
        jSONObject.put("content_vertical_opted_out", com_google_android_gms_internal_zzmk.zzSh);
        jSONObject.put("prefetch", com_google_android_gms_internal_zzmk.zzRV);
        if (com_google_android_gms_internal_zzmk.zzKe != -1) {
            jSONObject.put("refresh_interval_milliseconds", com_google_android_gms_internal_zzmk.zzKe);
        }
        if (com_google_android_gms_internal_zzmk.zzRL != -1) {
            jSONObject.put("mediation_config_cache_time_milliseconds", com_google_android_gms_internal_zzmk.zzRL);
        }
        if (!TextUtils.isEmpty(com_google_android_gms_internal_zzmk.zzRY)) {
            jSONObject.put("gws_query_id", com_google_android_gms_internal_zzmk.zzRY);
        }
        jSONObject.put("fluid", com_google_android_gms_internal_zzmk.zzzo ? "height" : "");
        jSONObject.put("native_express", com_google_android_gms_internal_zzmk.zzzp);
        if (com_google_android_gms_internal_zzmk.zzSa != null) {
            jSONObject.put("video_start_urls", zzl(com_google_android_gms_internal_zzmk.zzSa));
        }
        if (com_google_android_gms_internal_zzmk.zzSb != null) {
            jSONObject.put("video_complete_urls", zzl(com_google_android_gms_internal_zzmk.zzSb));
        }
        if (com_google_android_gms_internal_zzmk.zzRZ != null) {
            jSONObject.put("rewards", com_google_android_gms_internal_zzmk.zzRZ.zzjy());
        }
        jSONObject.put("use_displayed_impression", com_google_android_gms_internal_zzmk.zzSc);
        jSONObject.put("auto_protection_configuration", com_google_android_gms_internal_zzmk.zzSd);
        jSONObject.put("render_in_browser", com_google_android_gms_internal_zzmk.zzKc);
        return jSONObject;
    }

    private static Bundle zzg(Bundle bundle) {
        Bundle bundle2 = new Bundle();
        bundle2.putString("runtime_free", Long.toString(bundle.getLong("runtime_free_memory", -1)));
        bundle2.putString("runtime_max", Long.toString(bundle.getLong("runtime_max_memory", -1)));
        bundle2.putString("runtime_total", Long.toString(bundle.getLong("runtime_total_memory", -1)));
        MemoryInfo memoryInfo = (MemoryInfo) bundle.getParcelable("debug_memory_info");
        if (memoryInfo != null) {
            bundle2.putString("debug_info_dalvik_private_dirty", Integer.toString(memoryInfo.dalvikPrivateDirty));
            bundle2.putString("debug_info_dalvik_pss", Integer.toString(memoryInfo.dalvikPss));
            bundle2.putString("debug_info_dalvik_shared_dirty", Integer.toString(memoryInfo.dalvikSharedDirty));
            bundle2.putString("debug_info_native_private_dirty", Integer.toString(memoryInfo.nativePrivateDirty));
            bundle2.putString("debug_info_native_pss", Integer.toString(memoryInfo.nativePss));
            bundle2.putString("debug_info_native_shared_dirty", Integer.toString(memoryInfo.nativeSharedDirty));
            bundle2.putString("debug_info_other_private_dirty", Integer.toString(memoryInfo.otherPrivateDirty));
            bundle2.putString("debug_info_other_pss", Integer.toString(memoryInfo.otherPss));
            bundle2.putString("debug_info_other_shared_dirty", Integer.toString(memoryInfo.otherSharedDirty));
        }
        return bundle2;
    }

    static JSONArray zzl(List<String> list) throws JSONException {
        JSONArray jSONArray = new JSONArray();
        for (String put : list) {
            jSONArray.put(put);
        }
        return jSONArray;
    }
}
