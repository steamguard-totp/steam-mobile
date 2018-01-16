package com.google.android.gms.ads.mediation;

import android.os.Bundle;

public interface MediationAdapter {

    public static class zza {
        private int zzZN;

        public zza zzak(int i) {
            this.zzZN = i;
            return this;
        }

        public Bundle zzlL() {
            Bundle bundle = new Bundle();
            bundle.putInt("capabilities", this.zzZN);
            return bundle;
        }
    }

    void onDestroy();

    void onPause();

    void onResume();
}
