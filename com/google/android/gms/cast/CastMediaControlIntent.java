package com.google.android.gms.cast;

import com.google.android.gms.internal.zzym;
import java.util.Collection;

public final class CastMediaControlIntent {
    public static String categoryForCast(String str) throws IllegalArgumentException {
        if (str != null) {
            return zza("com.google.android.gms.cast.CATEGORY_CAST", str, null);
        }
        throw new IllegalArgumentException("applicationId cannot be null");
    }

    public static String categoryForCast(String str, Collection<String> collection) {
        if (str == null) {
            throw new IllegalArgumentException("applicationId cannot be null");
        } else if (collection != null) {
            return zza("com.google.android.gms.cast.CATEGORY_CAST", str, collection);
        } else {
            throw new IllegalArgumentException("namespaces cannot be null");
        }
    }

    private static String zza(String str, String str2, Collection<String> collection) throws IllegalArgumentException {
        String toUpperCase;
        StringBuilder stringBuilder = new StringBuilder(str);
        if (str2 != null) {
            toUpperCase = str2.toUpperCase();
            if (toUpperCase.matches("[A-F0-9]+")) {
                stringBuilder.append("/").append(toUpperCase);
            } else {
                String str3 = "Invalid application ID: ";
                toUpperCase = String.valueOf(str2);
                throw new IllegalArgumentException(toUpperCase.length() != 0 ? str3.concat(toUpperCase) : new String(str3));
            }
        }
        if (collection != null) {
            if (collection.isEmpty()) {
                throw new IllegalArgumentException("Must specify at least one namespace");
            }
            if (str2 == null) {
                stringBuilder.append("/");
            }
            stringBuilder.append("/");
            Object obj = 1;
            for (String toUpperCase2 : collection) {
                zzym.zzcP(toUpperCase2);
                if (obj != null) {
                    obj = null;
                } else {
                    stringBuilder.append(",");
                }
                stringBuilder.append(zzym.zzcR(toUpperCase2));
            }
        }
        return stringBuilder.toString();
    }
}
