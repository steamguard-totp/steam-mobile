package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import android.text.TextUtils;
import com.google.android.gms.ads.reward.RewardItem;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.zzaa;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

@zzmb
public final class zzok extends zza {
    public static final Creator<zzok> CREATOR = new zzol();
    public final String type;
    public final int versionCode;
    public final int zzVj;

    public zzok(int i, String str, int i2) {
        this.versionCode = i;
        this.type = str;
        this.zzVj = i2;
    }

    public zzok(RewardItem rewardItem) {
        this(1, rewardItem.getType(), rewardItem.getAmount());
    }

    public zzok(String str, int i) {
        this(1, str, i);
    }

    public static zzok zza(JSONArray jSONArray) throws JSONException {
        return (jSONArray == null || jSONArray.length() == 0) ? null : new zzok(jSONArray.getJSONObject(0).optString("rb_type"), jSONArray.getJSONObject(0).optInt("rb_amount"));
    }

    public static zzok zzaQ(String str) {
        zzok com_google_android_gms_internal_zzok = null;
        if (!TextUtils.isEmpty(str)) {
            try {
                com_google_android_gms_internal_zzok = zza(new JSONArray(str));
            } catch (JSONException e) {
            }
        }
        return com_google_android_gms_internal_zzok;
    }

    public boolean equals(Object obj) {
        if (obj == null || !(obj instanceof zzok)) {
            return false;
        }
        zzok com_google_android_gms_internal_zzok = (zzok) obj;
        return zzaa.equal(this.type, com_google_android_gms_internal_zzok.type) && zzaa.equal(Integer.valueOf(this.zzVj), Integer.valueOf(com_google_android_gms_internal_zzok.zzVj));
    }

    public int hashCode() {
        return zzaa.hashCode(this.type, Integer.valueOf(this.zzVj));
    }

    public void writeToParcel(Parcel parcel, int i) {
        zzol.zza(this, parcel, i);
    }

    public JSONArray zzjy() throws JSONException {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("rb_type", this.type);
        jSONObject.put("rb_amount", this.zzVj);
        JSONArray jSONArray = new JSONArray();
        jSONArray.put(jSONObject);
        return jSONArray;
    }
}
