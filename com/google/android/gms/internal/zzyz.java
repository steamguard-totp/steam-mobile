package com.google.android.gms.internal;

import android.text.TextUtils;
import com.google.android.gms.common.images.WebImage;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.GregorianCalendar;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class zzyz {
    private static final zzyu zzamu = new zzyu("MetadataUtils");
    private static final String[] zzavZ = new String[]{"Z", "+hh", "+hhmm", "+hh:mm"};
    private static final String zzawa;

    static {
        String valueOf = String.valueOf("yyyyMMdd'T'HHmmss");
        String valueOf2 = String.valueOf(zzavZ[0]);
        zzawa = valueOf2.length() != 0 ? valueOf.concat(valueOf2) : new String(valueOf);
    }

    public static void zza(List<WebImage> list, JSONObject jSONObject) {
        try {
            list.clear();
            JSONArray jSONArray = jSONObject.getJSONArray("images");
            int length = jSONArray.length();
            for (int i = 0; i < length; i++) {
                try {
                    list.add(new WebImage(jSONArray.getJSONObject(i)));
                } catch (IllegalArgumentException e) {
                }
            }
        } catch (JSONException e2) {
        }
    }

    public static void zza(JSONObject jSONObject, List<WebImage> list) {
        if (list != null && !list.isEmpty()) {
            JSONArray jSONArray = new JSONArray();
            for (WebImage toJson : list) {
                jSONArray.put(toJson.toJson());
            }
            try {
                jSONObject.put("images", jSONArray);
            } catch (JSONException e) {
            }
        }
    }

    public static Calendar zzcV(String str) {
        if (TextUtils.isEmpty(str)) {
            zzamu.zzb("Input string is empty or null", new Object[0]);
            return null;
        }
        String zzcW = zzcW(str);
        if (TextUtils.isEmpty(zzcW)) {
            zzamu.zzb("Invalid date format", new Object[0]);
            return null;
        }
        String zzcX = zzcX(str);
        String str2 = "yyyyMMdd";
        if (!TextUtils.isEmpty(zzcX)) {
            str2 = String.valueOf(zzcW);
            zzcW = new StringBuilder((String.valueOf(str2).length() + 1) + String.valueOf(zzcX).length()).append(str2).append("T").append(zzcX).toString();
            str2 = zzcX.length() == "HHmmss".length() ? "yyyyMMdd'T'HHmmss" : zzawa;
        }
        Calendar instance = GregorianCalendar.getInstance();
        try {
            instance.setTime(new SimpleDateFormat(str2).parse(zzcW));
            return instance;
        } catch (ParseException e) {
            zzamu.zzb("Error parsing string: %s", e.getMessage());
            return null;
        }
    }

    private static String zzcW(String str) {
        String str2 = null;
        if (TextUtils.isEmpty(str)) {
            zzamu.zzb("Input string is empty or null", new Object[0]);
        } else {
            try {
                str2 = str.substring(0, "yyyyMMdd".length());
            } catch (IndexOutOfBoundsException e) {
                zzamu.zze("Error extracting the date: %s", e.getMessage());
            }
        }
        return str2;
    }

    private static String zzcX(String str) {
        if (TextUtils.isEmpty(str)) {
            zzamu.zzb("string is empty or null", new Object[0]);
            return null;
        }
        int indexOf = str.indexOf(84);
        int i = indexOf + 1;
        if (indexOf != "yyyyMMdd".length()) {
            zzamu.zzb("T delimeter is not found", new Object[0]);
            return null;
        }
        try {
            String substring = str.substring(i);
            if (substring.length() == "HHmmss".length()) {
                return substring;
            }
            switch (substring.charAt("HHmmss".length())) {
                case '+':
                case '-':
                    return zzcY(substring) ? substring.replaceAll("([\\+\\-]\\d\\d):(\\d\\d)", "$1$2") : null;
                case 'Z':
                    if (substring.length() != "HHmmss".length() + zzavZ[0].length()) {
                        return null;
                    }
                    substring = String.valueOf(substring.substring(0, substring.length() - 1));
                    String valueOf = String.valueOf("+0000");
                    return valueOf.length() != 0 ? substring.concat(valueOf) : new String(substring);
                default:
                    return null;
            }
        } catch (IndexOutOfBoundsException e) {
            zzamu.zzb("Error extracting the time substring: %s", e.getMessage());
            return null;
        }
    }

    private static boolean zzcY(String str) {
        int length = str.length();
        int length2 = "HHmmss".length();
        return length == zzavZ[1].length() + length2 || length == zzavZ[2].length() + length2 || length == length2 + zzavZ[3].length();
    }
}
