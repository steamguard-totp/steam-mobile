package com.google.android.gms.ads;

import android.app.Activity;
import android.content.Intent;
import android.content.res.Configuration;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup.LayoutParams;
import com.google.android.gms.dynamic.zze;
import com.google.android.gms.internal.zzeh;
import com.google.android.gms.internal.zzkr;
import com.google.android.gms.internal.zzpy;

public class AdActivity extends Activity {
    private zzkr zzrA;

    private void zzbp() {
        if (this.zzrA != null) {
            try {
                this.zzrA.zzbp();
            } catch (Throwable e) {
                zzpy.zzc("Could not forward setContentViewSet to ad overlay:", e);
            }
        }
    }

    protected void onActivityResult(int i, int i2, Intent intent) {
        try {
            this.zzrA.onActivityResult(i, i2, intent);
        } catch (Throwable e) {
            zzpy.zzc("Could not forward onActivityResult to ad overlay:", e);
        }
        super.onActivityResult(i, i2, intent);
    }

    public void onBackPressed() {
        boolean z = true;
        try {
            if (this.zzrA != null) {
                z = this.zzrA.zzhk();
            }
        } catch (Throwable e) {
            zzpy.zzc("Could not forward onBackPressed to ad overlay:", e);
        }
        if (z) {
            super.onBackPressed();
        }
    }

    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        try {
            this.zzrA.zzn(zze.zzA(configuration));
        } catch (Throwable e) {
            zzpy.zzc("Failed to wrap configuration.", e);
        }
    }

    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.zzrA = zzeh.zzeP().zzc((Activity) this);
        if (this.zzrA == null) {
            zzpy.zzbe("Could not create ad overlay.");
            finish();
            return;
        }
        try {
            this.zzrA.onCreate(bundle);
        } catch (Throwable e) {
            zzpy.zzc("Could not forward onCreate to ad overlay:", e);
            finish();
        }
    }

    protected void onDestroy() {
        try {
            if (this.zzrA != null) {
                this.zzrA.onDestroy();
            }
        } catch (Throwable e) {
            zzpy.zzc("Could not forward onDestroy to ad overlay:", e);
        }
        super.onDestroy();
    }

    protected void onPause() {
        try {
            if (this.zzrA != null) {
                this.zzrA.onPause();
            }
        } catch (Throwable e) {
            zzpy.zzc("Could not forward onPause to ad overlay:", e);
            finish();
        }
        super.onPause();
    }

    protected void onRestart() {
        super.onRestart();
        try {
            if (this.zzrA != null) {
                this.zzrA.onRestart();
            }
        } catch (Throwable e) {
            zzpy.zzc("Could not forward onRestart to ad overlay:", e);
            finish();
        }
    }

    protected void onResume() {
        super.onResume();
        try {
            if (this.zzrA != null) {
                this.zzrA.onResume();
            }
        } catch (Throwable e) {
            zzpy.zzc("Could not forward onResume to ad overlay:", e);
            finish();
        }
    }

    protected void onSaveInstanceState(Bundle bundle) {
        try {
            if (this.zzrA != null) {
                this.zzrA.onSaveInstanceState(bundle);
            }
        } catch (Throwable e) {
            zzpy.zzc("Could not forward onSaveInstanceState to ad overlay:", e);
            finish();
        }
        super.onSaveInstanceState(bundle);
    }

    protected void onStart() {
        super.onStart();
        try {
            if (this.zzrA != null) {
                this.zzrA.onStart();
            }
        } catch (Throwable e) {
            zzpy.zzc("Could not forward onStart to ad overlay:", e);
            finish();
        }
    }

    protected void onStop() {
        try {
            if (this.zzrA != null) {
                this.zzrA.onStop();
            }
        } catch (Throwable e) {
            zzpy.zzc("Could not forward onStop to ad overlay:", e);
            finish();
        }
        super.onStop();
    }

    public void setContentView(int i) {
        super.setContentView(i);
        zzbp();
    }

    public void setContentView(View view) {
        super.setContentView(view);
        zzbp();
    }

    public void setContentView(View view, LayoutParams layoutParams) {
        super.setContentView(view, layoutParams);
        zzbp();
    }
}
