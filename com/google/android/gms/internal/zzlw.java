package com.google.android.gms.internal;

import android.os.Bundle;
import com.google.android.gms.internal.zzlu.zza;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import org.json.JSONException;
import org.json.JSONObject;

@zzmb
public class zzlw implements zza<zzgp> {
    private final boolean zzQH;
    private final boolean zzQI;

    public zzlw(boolean z, boolean z2) {
        this.zzQH = z;
        this.zzQI = z2;
    }

    private zzqp zzb(zzqf<zzqp> com_google_android_gms_internal_zzqf_com_google_android_gms_internal_zzqp) {
        Throwable e;
        try {
            return (zzqp) com_google_android_gms_internal_zzqf_com_google_android_gms_internal_zzqp.get((long) ((Integer) zzfx.zzDY.get()).intValue(), TimeUnit.SECONDS);
        } catch (Throwable e2) {
            zzpy.zzc("InterruptedException occurred while waiting for video to load", e2);
            Thread.currentThread().interrupt();
        } catch (ExecutionException e3) {
            e2 = e3;
            zzpy.zzc("Exception occurred while waiting for video to load", e2);
        } catch (TimeoutException e4) {
            e2 = e4;
            zzpy.zzc("Exception occurred while waiting for video to load", e2);
        } catch (CancellationException e5) {
            e2 = e5;
            zzpy.zzc("Exception occurred while waiting for video to load", e2);
        }
        return null;
    }

    public /* synthetic */ zzgu.zza zza(zzlu com_google_android_gms_internal_zzlu, JSONObject jSONObject) throws JSONException, InterruptedException, ExecutionException {
        return zzb(com_google_android_gms_internal_zzlu, jSONObject);
    }

    public zzgp zzb(zzlu com_google_android_gms_internal_zzlu, JSONObject jSONObject) throws JSONException, InterruptedException, ExecutionException {
        List<zzqf> zza = com_google_android_gms_internal_zzlu.zza(jSONObject, "images", true, this.zzQH, this.zzQI);
        Future zza2 = com_google_android_gms_internal_zzlu.zza(jSONObject, "app_icon", true, this.zzQH);
        zzqf zzc = com_google_android_gms_internal_zzlu.zzc(jSONObject, "video");
        Future zze = com_google_android_gms_internal_zzlu.zze(jSONObject);
        List arrayList = new ArrayList();
        for (zzqf com_google_android_gms_internal_zzqf : zza) {
            arrayList.add((zzgo) com_google_android_gms_internal_zzqf.get());
        }
        zzqp zzb = zzb(zzc);
        return new zzgp(jSONObject.getString("headline"), arrayList, jSONObject.getString("body"), (zzgz) zza2.get(), jSONObject.getString("call_to_action"), jSONObject.optDouble("rating", -1.0d), jSONObject.optString("store"), jSONObject.optString("price"), (zzgm) zze.get(), new Bundle(), zzb != null ? zzb.zzlg() : null, zzb != null ? zzb.getView() : null);
    }
}
