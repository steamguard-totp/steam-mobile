package com.google.android.gms.internal;

import com.google.android.gms.common.api.Status;
import com.google.android.gms.internal.zzbfi.zza;
import org.json.JSONException;

public final class zzbfg {
    public static final zzbff zzbKf = new zzbff() {
        public zzbfi zzO(byte[] bArr) throws zzbfb {
            if (bArr == null) {
                throw new zzbfb("Cannot parse a null byte[]");
            } else if (bArr.length == 0) {
                throw new zzbfb("Cannot parse a 0 length byte[]");
            } else {
                try {
                    zzbfr zzhT = zzbfc.zzhT(new String(bArr));
                    if (zzhT != null) {
                        zzayx.v("The container was successfully parsed from the resource");
                    }
                    return new zzbfi(Status.zzayh, 0, new zza(zzhT), zzbfg.zzbKg.zzO(bArr).zzRj());
                } catch (JSONException e) {
                    throw new zzbfb("The resource data is corrupted. The container cannot be extracted from the JSON data");
                } catch (zzbfb e2) {
                    throw new zzbfb("The resource data is invalid. The container cannot be extracted from the JSON data");
                }
            }
        }
    };
    public static final zzbff zzbKg = new zzbff() {
        public zzbfi zzO(byte[] bArr) throws zzbfb {
            if (bArr == null) {
                throw new zzbfb("Cannot parse a null byte[]");
            } else if (bArr.length == 0) {
                throw new zzbfb("Cannot parse a 0 length byte[]");
            } else {
                try {
                    zzbfu zzhU = zzbfc.zzhU(new String(bArr));
                    if (zzhU != null) {
                        zzayx.v("The runtime configuration was successfully parsed from the resource");
                    }
                    return new zzbfi(Status.zzayh, 0, null, zzhU);
                } catch (JSONException e) {
                    throw new zzbfb("The resource data is corrupted. The runtime configuration cannot be extracted from the JSON data");
                } catch (zzbfb e2) {
                    throw new zzbfb("The resource data is invalid. The runtime  configuration cannot be extracted from the JSON data");
                }
            }
        }
    };
}
