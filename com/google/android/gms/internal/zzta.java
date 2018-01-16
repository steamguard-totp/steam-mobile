package com.google.android.gms.internal;

import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.text.TextUtils;
import android.util.Pair;
import com.google.android.gms.common.internal.zzac;
import java.util.UUID;

public class zzta extends zzru {
    private SharedPreferences zzafC;
    private long zzafD;
    private long zzafE = -1;
    private final zza zzafF = new zza("monitoring", zzns().zzoZ());

    public final class zza {
        private final String mName;
        private final long zzafG;
        final /* synthetic */ zzta zzafH;

        private zza(zzta com_google_android_gms_internal_zzta, String str, long j) {
            this.zzafH = com_google_android_gms_internal_zzta;
            zzac.zzdv(str);
            zzac.zzas(j > 0);
            this.mName = str;
            this.zzafG = j;
        }

        private void zzpK() {
            long currentTimeMillis = this.zzafH.zznq().currentTimeMillis();
            Editor edit = this.zzafH.zzafC.edit();
            edit.remove(zzpP());
            edit.remove(zzpQ());
            edit.putLong(zzpO(), currentTimeMillis);
            edit.commit();
        }

        private long zzpL() {
            long zzpN = zzpN();
            return zzpN == 0 ? 0 : Math.abs(zzpN - this.zzafH.zznq().currentTimeMillis());
        }

        private long zzpN() {
            return this.zzafH.zzafC.getLong(zzpO(), 0);
        }

        private String zzpO() {
            return String.valueOf(this.mName).concat(":start");
        }

        private String zzpP() {
            return String.valueOf(this.mName).concat(":count");
        }

        public void zzcb(String str) {
            if (zzpN() == 0) {
                zzpK();
            }
            if (str == null) {
                str = "";
            }
            synchronized (this) {
                long j = this.zzafH.zzafC.getLong(zzpP(), 0);
                if (j <= 0) {
                    Editor edit = this.zzafH.zzafC.edit();
                    edit.putString(zzpQ(), str);
                    edit.putLong(zzpP(), 1);
                    edit.apply();
                    return;
                }
                Object obj = (UUID.randomUUID().getLeastSignificantBits() & Long.MAX_VALUE) < Long.MAX_VALUE / (j + 1) ? 1 : null;
                Editor edit2 = this.zzafH.zzafC.edit();
                if (obj != null) {
                    edit2.putString(zzpQ(), str);
                }
                edit2.putLong(zzpP(), j + 1);
                edit2.apply();
            }
        }

        public Pair<String, Long> zzpM() {
            long zzpL = zzpL();
            if (zzpL < this.zzafG) {
                return null;
            }
            if (zzpL > this.zzafG * 2) {
                zzpK();
                return null;
            }
            String string = this.zzafH.zzafC.getString(zzpQ(), null);
            zzpL = this.zzafH.zzafC.getLong(zzpP(), 0);
            zzpK();
            return (string == null || zzpL <= 0) ? null : new Pair(string, Long.valueOf(zzpL));
        }

        protected String zzpQ() {
            return String.valueOf(this.mName).concat(":value");
        }
    }

    protected zzta(zzrw com_google_android_gms_internal_zzrw) {
        super(com_google_android_gms_internal_zzrw);
    }

    public void zzca(String str) {
        zzmq();
        zznA();
        Editor edit = this.zzafC.edit();
        if (TextUtils.isEmpty(str)) {
            edit.remove("installation_campaign");
        } else {
            edit.putString("installation_campaign", str);
        }
        if (!edit.commit()) {
            zzbR("Failed to commit campaign data");
        }
    }

    protected void zzmr() {
        this.zzafC = getContext().getSharedPreferences("com.google.android.gms.analytics.prefs", 0);
    }

    public long zzpE() {
        zzmq();
        zznA();
        if (this.zzafD == 0) {
            long j = this.zzafC.getLong("first_run", 0);
            if (j != 0) {
                this.zzafD = j;
            } else {
                j = zznq().currentTimeMillis();
                Editor edit = this.zzafC.edit();
                edit.putLong("first_run", j);
                if (!edit.commit()) {
                    zzbR("Failed to commit first run time");
                }
                this.zzafD = j;
            }
        }
        return this.zzafD;
    }

    public zztd zzpF() {
        return new zztd(zznq(), zzpE());
    }

    public long zzpG() {
        zzmq();
        zznA();
        if (this.zzafE == -1) {
            this.zzafE = this.zzafC.getLong("last_dispatch", 0);
        }
        return this.zzafE;
    }

    public void zzpH() {
        zzmq();
        zznA();
        long currentTimeMillis = zznq().currentTimeMillis();
        Editor edit = this.zzafC.edit();
        edit.putLong("last_dispatch", currentTimeMillis);
        edit.apply();
        this.zzafE = currentTimeMillis;
    }

    public String zzpI() {
        zzmq();
        zznA();
        CharSequence string = this.zzafC.getString("installation_campaign", null);
        return TextUtils.isEmpty(string) ? null : string;
    }

    public zza zzpJ() {
        return this.zzafF;
    }
}
