package com.google.android.gms.auth.api.signin;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import android.text.TextUtils;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.zzac;
import com.google.android.gms.common.util.zze;
import com.google.android.gms.common.util.zzh;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class GoogleSignInAccount extends zza implements ReflectedParcelable {
    public static final Creator<GoogleSignInAccount> CREATOR = new zza();
    public static zze zzaiV = zzh.zzyv();
    private static Comparator<Scope> zzajc = new Comparator<Scope>() {
        public /* synthetic */ int compare(Object obj, Object obj2) {
            return zza((Scope) obj, (Scope) obj2);
        }

        public int zza(Scope scope, Scope scope2) {
            return scope.zzuS().compareTo(scope2.zzuS());
        }
    };
    final int versionCode;
    private String zzGu;
    List<Scope> zzahM;
    private String zzaiW;
    private String zzaiX;
    private Uri zzaiY;
    private String zzaiZ;
    private String zzaik;
    private String zzail;
    private String zzaix;
    private long zzaja;
    private String zzajb;

    GoogleSignInAccount(int i, String str, String str2, String str3, String str4, Uri uri, String str5, long j, String str6, List<Scope> list, String str7, String str8) {
        this.versionCode = i;
        this.zzGu = str;
        this.zzaix = str2;
        this.zzaiW = str3;
        this.zzaiX = str4;
        this.zzaiY = uri;
        this.zzaiZ = str5;
        this.zzaja = j;
        this.zzajb = str6;
        this.zzahM = list;
        this.zzaik = str7;
        this.zzail = str8;
    }

    public static GoogleSignInAccount zza(String str, String str2, String str3, String str4, String str5, String str6, Uri uri, Long l, String str7, Set<Scope> set) {
        if (l == null) {
            l = Long.valueOf(zzaiV.currentTimeMillis() / 1000);
        }
        return new GoogleSignInAccount(3, str, str2, str3, str4, uri, null, l.longValue(), zzac.zzdv(str7), new ArrayList((Collection) zzac.zzw(set)), str5, str6);
    }

    public static GoogleSignInAccount zzcu(String str) throws JSONException {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        JSONObject jSONObject = new JSONObject(str);
        Object optString = jSONObject.optString("photoUrl", null);
        Uri parse = !TextUtils.isEmpty(optString) ? Uri.parse(optString) : null;
        long parseLong = Long.parseLong(jSONObject.getString("expirationTime"));
        Set hashSet = new HashSet();
        JSONArray jSONArray = jSONObject.getJSONArray("grantedScopes");
        int length = jSONArray.length();
        for (int i = 0; i < length; i++) {
            hashSet.add(new Scope(jSONArray.getString(i)));
        }
        return zza(jSONObject.optString("id"), jSONObject.optString("tokenId", null), jSONObject.optString("email", null), jSONObject.optString("displayName", null), jSONObject.optString("givenName", null), jSONObject.optString("familyName", null), parse, Long.valueOf(parseLong), jSONObject.getString("obfuscatedIdentifier"), hashSet).zzcv(jSONObject.optString("serverAuthCode", null));
    }

    private JSONObject zzqI() {
        JSONObject jSONObject = new JSONObject();
        try {
            if (getId() != null) {
                jSONObject.put("id", getId());
            }
            if (getIdToken() != null) {
                jSONObject.put("tokenId", getIdToken());
            }
            if (getEmail() != null) {
                jSONObject.put("email", getEmail());
            }
            if (getDisplayName() != null) {
                jSONObject.put("displayName", getDisplayName());
            }
            if (getGivenName() != null) {
                jSONObject.put("givenName", getGivenName());
            }
            if (getFamilyName() != null) {
                jSONObject.put("familyName", getFamilyName());
            }
            if (getPhotoUrl() != null) {
                jSONObject.put("photoUrl", getPhotoUrl().toString());
            }
            if (getServerAuthCode() != null) {
                jSONObject.put("serverAuthCode", getServerAuthCode());
            }
            jSONObject.put("expirationTime", this.zzaja);
            jSONObject.put("obfuscatedIdentifier", zzqF());
            JSONArray jSONArray = new JSONArray();
            Collections.sort(this.zzahM, zzajc);
            for (Scope zzuS : this.zzahM) {
                jSONArray.put(zzuS.zzuS());
            }
            jSONObject.put("grantedScopes", jSONArray);
            return jSONObject;
        } catch (Throwable e) {
            throw new RuntimeException(e);
        }
    }

    public boolean equals(Object obj) {
        return !(obj instanceof GoogleSignInAccount) ? false : ((GoogleSignInAccount) obj).zzqG().equals(zzqG());
    }

    public String getDisplayName() {
        return this.zzaiX;
    }

    public String getEmail() {
        return this.zzaiW;
    }

    public String getFamilyName() {
        return this.zzail;
    }

    public String getGivenName() {
        return this.zzaik;
    }

    public String getId() {
        return this.zzGu;
    }

    public String getIdToken() {
        return this.zzaix;
    }

    public Uri getPhotoUrl() {
        return this.zzaiY;
    }

    public String getServerAuthCode() {
        return this.zzaiZ;
    }

    public int hashCode() {
        return zzqG().hashCode();
    }

    public void writeToParcel(Parcel parcel, int i) {
        zza.zza(this, parcel, i);
    }

    public GoogleSignInAccount zzcv(String str) {
        this.zzaiZ = str;
        return this;
    }

    public long zzqE() {
        return this.zzaja;
    }

    public String zzqF() {
        return this.zzajb;
    }

    public String zzqG() {
        return zzqI().toString();
    }

    public String zzqH() {
        JSONObject zzqI = zzqI();
        zzqI.remove("serverAuthCode");
        return zzqI.toString();
    }
}
