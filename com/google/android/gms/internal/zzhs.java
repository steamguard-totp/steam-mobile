package com.google.android.gms.internal;

import java.util.Map;

@zzmb
public final class zzhs implements zzhx {
    private final zzht zzHc;

    public zzhs(zzht com_google_android_gms_internal_zzht) {
        this.zzHc = com_google_android_gms_internal_zzht;
    }

    public void zza(zzqp com_google_android_gms_internal_zzqp, Map<String, String> map) {
        String str = (String) map.get("name");
        if (str == null) {
            zzpy.zzbe("App event with no name parameter.");
        } else {
            this.zzHc.onAppEvent(str, (String) map.get("info"));
        }
    }
}
