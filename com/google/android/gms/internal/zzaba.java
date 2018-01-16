package com.google.android.gms.internal;

import java.util.Collections;
import java.util.Set;
import java.util.WeakHashMap;

public class zzaba {
    private final Set<zzaaz<?>> zzarH = Collections.newSetFromMap(new WeakHashMap());

    public void release() {
        for (zzaaz clear : this.zzarH) {
            clear.clear();
        }
        this.zzarH.clear();
    }
}
