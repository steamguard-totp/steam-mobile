package com.google.android.gms.auth.api.signin.internal;

import android.content.ActivityNotFoundException;
import android.content.Intent;
import android.os.Bundle;
import android.os.Parcelable;
import android.support.v4.app.FragmentActivity;
import android.support.v4.app.LoaderManager.LoaderCallbacks;
import android.support.v4.content.Loader;
import android.util.Log;
import android.view.accessibility.AccessibilityEvent;
import com.google.android.gms.auth.api.signin.SignInAccount;
import com.google.android.gms.common.annotation.KeepName;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Status;

@KeepName
public class SignInHubActivity extends FragmentActivity {
    private zzl zzajC;
    private SignInConfiguration zzajD;
    private boolean zzajE;
    private int zzajF;
    private Intent zzajG;

    private class zza implements LoaderCallbacks<Void> {
        final /* synthetic */ SignInHubActivity zzajH;

        private zza(SignInHubActivity signInHubActivity) {
            this.zzajH = signInHubActivity;
        }

        public Loader<Void> onCreateLoader(int i, Bundle bundle) {
            return new zzb(this.zzajH, GoogleApiClient.zzuM());
        }

        public /* synthetic */ void onLoadFinished(Loader loader, Object obj) {
            zza(loader, (Void) obj);
        }

        public void zza(Loader<Void> loader, Void voidR) {
            this.zzajH.setResult(this.zzajH.zzajF, this.zzajH.zzajG);
            this.zzajH.finish();
        }
    }

    private void zza(int i, Intent intent) {
        if (intent != null) {
            SignInAccount signInAccount = (SignInAccount) intent.getParcelableExtra("signInAccount");
            if (signInAccount != null && signInAccount.zzqP() != null) {
                Parcelable zzqP = signInAccount.zzqP();
                this.zzajC.zzb(zzqP, this.zzajD.zzra());
                intent.removeExtra("signInAccount");
                intent.putExtra("googleSignInAccount", zzqP);
                this.zzajE = true;
                this.zzajF = i;
                this.zzajG = intent;
                zzrb();
                return;
            } else if (intent.hasExtra("errorCode")) {
                zzbn(intent.getIntExtra("errorCode", 8));
                return;
            }
        }
        zzbn(8);
    }

    private void zzbn(int i) {
        Parcelable status = new Status(i);
        Intent intent = new Intent();
        intent.putExtra("googleSignInStatus", status);
        setResult(0, intent);
        finish();
    }

    private void zzj(Intent intent) {
        intent.setPackage("com.google.android.gms");
        intent.putExtra("config", this.zzajD);
        try {
            startActivityForResult(intent, 40962);
        } catch (ActivityNotFoundException e) {
            Log.w("AuthSignInClient", "Could not launch sign in Intent. Google Play Service is probably being updated...");
            zzbn(8);
        }
    }

    private void zzrb() {
        getSupportLoaderManager().initLoader(0, null, new zza());
    }

    public boolean dispatchPopulateAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        return true;
    }

    protected void onActivityResult(int i, int i2, Intent intent) {
        setResult(0);
        switch (i) {
            case 40962:
                zza(i2, intent);
                return;
            default:
                return;
        }
    }

    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.zzajC = zzl.zzaa(this);
        Intent intent = getIntent();
        if (!"com.google.android.gms.auth.GOOGLE_SIGN_IN".equals(intent.getAction())) {
            String str = "AuthSignInClient";
            String str2 = "Unknown action: ";
            String valueOf = String.valueOf(intent.getAction());
            Log.e(str, valueOf.length() != 0 ? str2.concat(valueOf) : new String(str2));
            finish();
        }
        this.zzajD = (SignInConfiguration) intent.getParcelableExtra("config");
        if (this.zzajD == null) {
            Log.e("AuthSignInClient", "Activity started with invalid configuration.");
            setResult(0);
            finish();
        } else if (bundle == null) {
            zzj(new Intent("com.google.android.gms.auth.GOOGLE_SIGN_IN"));
        } else {
            this.zzajE = bundle.getBoolean("signingInGoogleApiClients");
            if (this.zzajE) {
                this.zzajF = bundle.getInt("signInResultCode");
                this.zzajG = (Intent) bundle.getParcelable("signInResultData");
                zzrb();
            }
        }
    }

    protected void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putBoolean("signingInGoogleApiClients", this.zzajE);
        if (this.zzajE) {
            bundle.putInt("signInResultCode", this.zzajF);
            bundle.putParcelable("signInResultData", this.zzajG);
        }
    }
}
