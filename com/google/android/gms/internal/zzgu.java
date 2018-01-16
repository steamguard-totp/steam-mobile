package com.google.android.gms.internal;

import android.content.Context;
import android.view.MotionEvent;
import android.view.View;
import java.lang.ref.WeakReference;
import java.util.Map;
import org.json.JSONObject;

public interface zzgu {

    public interface zza {
        String getCustomTemplateId();

        void zzb(zzgu com_google_android_gms_internal_zzgu);

        String zzfN();

        zzgm zzfO();
    }

    Context getContext();

    void zza(View view, String str, JSONObject jSONObject, Map<String, WeakReference<View>> map, View view2);

    void zza(View view, Map<String, WeakReference<View>> map, JSONObject jSONObject, View view2);

    void zzb(View view, Map<String, WeakReference<View>> map);

    void zzc(View view, Map<String, WeakReference<View>> map);

    void zzd(MotionEvent motionEvent);

    void zzd(View view, Map<String, WeakReference<View>> map);

    View zzfV();

    void zzj(View view);
}
