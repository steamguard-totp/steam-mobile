package com.google.android.gms.internal;

import android.content.Context;
import com.google.android.gms.analytics.GoogleAnalytics;
import com.google.android.gms.analytics.Logger;
import com.google.android.gms.analytics.Tracker;

public class zzazq {
    private Context mContext;
    private Tracker zzaaC;
    private GoogleAnalytics zzaaE;

    static class zza implements Logger {
        zza() {
        }

        private static int zzmX(int i) {
            switch (i) {
                case 2:
                    return 0;
                case 3:
                case 4:
                    return 1;
                case 5:
                    return 2;
                default:
                    return 3;
            }
        }

        public void error(String str) {
            zzayx.e(str);
        }

        public int getLogLevel() {
            return zzmX(zzayx.getLogLevel());
        }

        public void warn(String str) {
            zzayx.zzbe(str);
        }
    }

    public zzazq(Context context) {
        this.mContext = context;
    }

    private synchronized void zzhx(String str) {
        if (this.zzaaE == null) {
            this.zzaaE = GoogleAnalytics.getInstance(this.mContext);
            this.zzaaE.setLogger(new zza());
            this.zzaaC = this.zzaaE.newTracker(str);
        }
    }

    public Tracker zzhw(String str) {
        zzhx(str);
        return this.zzaaC;
    }
}
