package com.google.android.gms.internal;

import android.app.Dialog;
import android.app.PendingIntent;
import android.content.DialogInterface;
import android.content.DialogInterface.OnCancelListener;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.GoogleApiAvailability;
import com.google.android.gms.common.api.GoogleApiActivity;

public abstract class zzzw extends zzaaw implements OnCancelListener {
    protected boolean mStarted;
    protected final GoogleApiAvailability zzaxX;
    protected boolean zzayG;
    private ConnectionResult zzayH;
    private int zzayI;
    private final Handler zzayJ;

    private class zza implements Runnable {
        final /* synthetic */ zzzw zzayK;

        private zza(zzzw com_google_android_gms_internal_zzzw) {
            this.zzayK = com_google_android_gms_internal_zzzw;
        }

        public void run() {
            if (!this.zzayK.mStarted) {
                return;
            }
            if (this.zzayK.zzayH.hasResolution()) {
                this.zzayK.zzaBs.startActivityForResult(GoogleApiActivity.zzb(this.zzayK.getActivity(), this.zzayK.zzayH.getResolution(), this.zzayK.zzayI, false), 1);
            } else if (this.zzayK.zzaxX.isUserResolvableError(this.zzayK.zzayH.getErrorCode())) {
                this.zzayK.zzaxX.zza(this.zzayK.getActivity(), this.zzayK.zzaBs, this.zzayK.zzayH.getErrorCode(), 2, this.zzayK);
            } else if (this.zzayK.zzayH.getErrorCode() == 18) {
                final Dialog zza = this.zzayK.zzaxX.zza(this.zzayK.getActivity(), this.zzayK);
                this.zzayK.zzaxX.zza(this.zzayK.getActivity().getApplicationContext(), new com.google.android.gms.internal.zzaar.zza(this) {
                    final /* synthetic */ zza zzayM;

                    public void zzvb() {
                        this.zzayM.zzayK.zzva();
                        if (zza.isShowing()) {
                            zza.dismiss();
                        }
                    }
                });
            } else {
                this.zzayK.zza(this.zzayK.zzayH, this.zzayK.zzayI);
            }
        }
    }

    protected zzzw(zzaax com_google_android_gms_internal_zzaax) {
        this(com_google_android_gms_internal_zzaax, GoogleApiAvailability.getInstance());
    }

    zzzw(zzaax com_google_android_gms_internal_zzaax, GoogleApiAvailability googleApiAvailability) {
        super(com_google_android_gms_internal_zzaax);
        this.zzayI = -1;
        this.zzayJ = new Handler(Looper.getMainLooper());
        this.zzaxX = googleApiAvailability;
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void onActivityResult(int r6, int r7, android.content.Intent r8) {
        /*
        r5 = this;
        r4 = 18;
        r2 = 13;
        r0 = 1;
        r1 = 0;
        switch(r6) {
            case 1: goto L_0x0027;
            case 2: goto L_0x0010;
            default: goto L_0x0009;
        };
    L_0x0009:
        r0 = r1;
    L_0x000a:
        if (r0 == 0) goto L_0x003d;
    L_0x000c:
        r5.zzva();
    L_0x000f:
        return;
    L_0x0010:
        r2 = r5.zzaxX;
        r3 = r5.getActivity();
        r2 = r2.isGooglePlayServicesAvailable(r3);
        if (r2 != 0) goto L_0x0047;
    L_0x001c:
        r1 = r5.zzayH;
        r1 = r1.getErrorCode();
        if (r1 != r4) goto L_0x000a;
    L_0x0024:
        if (r2 != r4) goto L_0x000a;
    L_0x0026:
        goto L_0x000f;
    L_0x0027:
        r3 = -1;
        if (r7 == r3) goto L_0x000a;
    L_0x002a:
        if (r7 != 0) goto L_0x0009;
    L_0x002c:
        if (r8 == 0) goto L_0x0045;
    L_0x002e:
        r0 = "<<ResolutionFailureErrorDetail>>";
        r0 = r8.getIntExtra(r0, r2);
    L_0x0034:
        r2 = new com.google.android.gms.common.ConnectionResult;
        r3 = 0;
        r2.<init>(r0, r3);
        r5.zzayH = r2;
        goto L_0x0009;
    L_0x003d:
        r0 = r5.zzayH;
        r1 = r5.zzayI;
        r5.zza(r0, r1);
        goto L_0x000f;
    L_0x0045:
        r0 = r2;
        goto L_0x0034;
    L_0x0047:
        r0 = r1;
        goto L_0x001c;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.zzzw.onActivityResult(int, int, android.content.Intent):void");
    }

    public void onCancel(DialogInterface dialogInterface) {
        zza(new ConnectionResult(13, null), this.zzayI);
        zzva();
    }

    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (bundle != null) {
            this.zzayG = bundle.getBoolean("resolving_error", false);
            if (this.zzayG) {
                this.zzayI = bundle.getInt("failed_client_id", -1);
                this.zzayH = new ConnectionResult(bundle.getInt("failed_status"), (PendingIntent) bundle.getParcelable("failed_resolution"));
            }
        }
    }

    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putBoolean("resolving_error", this.zzayG);
        if (this.zzayG) {
            bundle.putInt("failed_client_id", this.zzayI);
            bundle.putInt("failed_status", this.zzayH.getErrorCode());
            bundle.putParcelable("failed_resolution", this.zzayH.getResolution());
        }
    }

    public void onStart() {
        super.onStart();
        this.mStarted = true;
    }

    public void onStop() {
        super.onStop();
        this.mStarted = false;
    }

    protected abstract void zza(ConnectionResult connectionResult, int i);

    public void zzb(ConnectionResult connectionResult, int i) {
        if (!this.zzayG) {
            this.zzayG = true;
            this.zzayI = i;
            this.zzayH = connectionResult;
            this.zzayJ.post(new zza());
        }
    }

    protected abstract void zzuW();

    protected void zzva() {
        this.zzayI = -1;
        this.zzayG = false;
        this.zzayH = null;
        zzuW();
    }
}
