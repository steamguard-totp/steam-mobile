package com.google.android.gms.internal;

import java.math.BigInteger;

public final class zzbrx extends zzbrr {
    private static final Class<?>[] zzcmN = new Class[]{Integer.TYPE, Long.TYPE, Short.TYPE, Float.TYPE, Double.TYPE, Byte.TYPE, Boolean.TYPE, Character.TYPE, Integer.class, Long.class, Short.class, Float.class, Double.class, Byte.class, Boolean.class, Character.class};
    private Object value;

    public zzbrx(Boolean bool) {
        setValue(bool);
    }

    public zzbrx(Number number) {
        setValue(number);
    }

    zzbrx(Object obj) {
        setValue(obj);
    }

    public zzbrx(String str) {
        setValue(str);
    }

    private static boolean zza(zzbrx com_google_android_gms_internal_zzbrx) {
        if (!(com_google_android_gms_internal_zzbrx.value instanceof Number)) {
            return false;
        }
        Number number = (Number) com_google_android_gms_internal_zzbrx.value;
        return (number instanceof BigInteger) || (number instanceof Long) || (number instanceof Integer) || (number instanceof Short) || (number instanceof Byte);
    }

    private static boolean zzaK(Object obj) {
        if (obj instanceof String) {
            return true;
        }
        Class cls = obj.getClass();
        for (Class isAssignableFrom : zzcmN) {
            if (isAssignableFrom.isAssignableFrom(cls)) {
                return true;
            }
        }
        return false;
    }

    public boolean equals(Object obj) {
        boolean z = false;
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        zzbrx com_google_android_gms_internal_zzbrx = (zzbrx) obj;
        if (this.value == null) {
            return com_google_android_gms_internal_zzbrx.value == null;
        } else {
            if (zza(this) && zza(com_google_android_gms_internal_zzbrx)) {
                return zzabt().longValue() == com_google_android_gms_internal_zzbrx.zzabt().longValue();
            } else {
                if (!(this.value instanceof Number) || !(com_google_android_gms_internal_zzbrx.value instanceof Number)) {
                    return this.value.equals(com_google_android_gms_internal_zzbrx.value);
                }
                double doubleValue = zzabt().doubleValue();
                double doubleValue2 = com_google_android_gms_internal_zzbrx.zzabt().doubleValue();
                if (doubleValue == doubleValue2 || (Double.isNaN(doubleValue) && Double.isNaN(doubleValue2))) {
                    z = true;
                }
                return z;
            }
        }
    }

    public boolean getAsBoolean() {
        return zzabD() ? zzabC().booleanValue() : Boolean.parseBoolean(zzabu());
    }

    public double getAsDouble() {
        return zzabE() ? zzabt().doubleValue() : Double.parseDouble(zzabu());
    }

    public int getAsInt() {
        return zzabE() ? zzabt().intValue() : Integer.parseInt(zzabu());
    }

    public long getAsLong() {
        return zzabE() ? zzabt().longValue() : Long.parseLong(zzabu());
    }

    public int hashCode() {
        if (this.value == null) {
            return 31;
        }
        long longValue;
        if (zza(this)) {
            longValue = zzabt().longValue();
            return (int) (longValue ^ (longValue >>> 32));
        } else if (!(this.value instanceof Number)) {
            return this.value.hashCode();
        } else {
            longValue = Double.doubleToLongBits(zzabt().doubleValue());
            return (int) (longValue ^ (longValue >>> 32));
        }
    }

    void setValue(Object obj) {
        if (obj instanceof Character) {
            this.value = String.valueOf(((Character) obj).charValue());
            return;
        }
        boolean z = (obj instanceof Number) || zzaK(obj);
        zzbsj.zzas(z);
        this.value = obj;
    }

    Boolean zzabC() {
        return (Boolean) this.value;
    }

    public boolean zzabD() {
        return this.value instanceof Boolean;
    }

    public boolean zzabE() {
        return this.value instanceof Number;
    }

    public boolean zzabF() {
        return this.value instanceof String;
    }

    public Number zzabt() {
        return this.value instanceof String ? new zzbso((String) this.value) : (Number) this.value;
    }

    public String zzabu() {
        return zzabE() ? zzabt().toString() : zzabD() ? zzabC().toString() : (String) this.value;
    }
}
