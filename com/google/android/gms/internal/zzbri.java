package com.google.android.gms.internal;

import java.lang.annotation.Annotation;
import java.lang.reflect.Field;

public final class zzbri {
    private final Field zzcmk;

    public zzbri(Field field) {
        zzbsj.zzw(field);
        this.zzcmk = field;
    }

    public <T extends Annotation> T getAnnotation(Class<T> cls) {
        return this.zzcmk.getAnnotation(cls);
    }
}
