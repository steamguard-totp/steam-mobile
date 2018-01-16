package com.google.android.gms.ads.mediation.customevent;

import com.google.ads.mediation.NetworkExtras;
import java.util.HashMap;

@Deprecated
public final class CustomEventExtras implements NetworkExtras {
    private final HashMap<String, Object> zzZV = new HashMap();

    public Object getExtra(String str) {
        return this.zzZV.get(str);
    }
}
