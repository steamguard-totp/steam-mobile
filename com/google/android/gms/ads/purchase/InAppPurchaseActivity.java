package com.google.android.gms.ads.purchase;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import com.google.android.gms.internal.zzeh;
import com.google.android.gms.internal.zzla;
import com.google.android.gms.internal.zzpy;

public class InAppPurchaseActivity extends Activity {
    private zzla zzZW;

    protected void onActivityResult(int i, int i2, Intent intent) {
        try {
            if (this.zzZW != null) {
                this.zzZW.onActivityResult(i, i2, intent);
            }
        } catch (Throwable e) {
            zzpy.zzc("Could not forward onActivityResult to in-app purchase manager:", e);
        }
        super.onActivityResult(i, i2, intent);
    }

    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.zzZW = zzeh.zzeP().zzb((Activity) this);
        if (this.zzZW == null) {
            zzpy.zzbe("Could not create in-app purchase manager.");
            finish();
            return;
        }
        try {
            this.zzZW.onCreate();
        } catch (Throwable e) {
            zzpy.zzc("Could not forward onCreate to in-app purchase manager:", e);
            finish();
        }
    }

    protected void onDestroy() {
        try {
            if (this.zzZW != null) {
                this.zzZW.onDestroy();
            }
        } catch (Throwable e) {
            zzpy.zzc("Could not forward onDestroy to in-app purchase manager:", e);
        }
        super.onDestroy();
    }
}
