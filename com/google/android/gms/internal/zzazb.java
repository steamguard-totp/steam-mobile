package com.google.android.gms.internal;

import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import com.google.android.gms.R;

public class zzazb {
    private final Intent mIntent;
    private final Context zzaQB;
    private final Context zzamG;
    private final zzazm zzbGB;

    public zzazb(Intent intent, Context context, Context context2, zzazm com_google_android_gms_internal_zzazm) {
        this.zzamG = context;
        this.zzaQB = context2;
        this.mIntent = intent;
        this.zzbGB = com_google_android_gms_internal_zzazm;
    }

    private void zzl(String str, String str2, String str3) {
        AlertDialog create = new Builder(this.zzamG).create();
        create.setTitle(str);
        create.setMessage(str2);
        create.setButton(-1, str3, new OnClickListener(this) {
            final /* synthetic */ zzazb zzbIe;

            {
                this.zzbIe = r1;
            }

            public void onClick(DialogInterface dialogInterface, int i) {
                String packageName = this.zzbIe.zzamG.getPackageName();
                Intent launchIntentForPackage = this.zzbIe.zzamG.getPackageManager().getLaunchIntentForPackage(packageName);
                if (launchIntentForPackage != null) {
                    String str = "Invoke the launch activity for package name: ";
                    packageName = String.valueOf(packageName);
                    zzayx.zzbd(packageName.length() != 0 ? str.concat(packageName) : new String(str));
                    this.zzbIe.zzamG.startActivity(launchIntentForPackage);
                    return;
                }
                String str2 = "No launch activity found for package name: ";
                packageName = String.valueOf(packageName);
                zzayx.zzbe(packageName.length() != 0 ? str2.concat(packageName) : new String(str2));
            }
        });
        create.show();
    }

    public void zzQA() {
        try {
            this.zzbGB.zzx(this.mIntent.getData());
            zzl(this.zzaQB.getResources().getString(R.string.tagmanager_preview_dialog_title), this.zzaQB.getResources().getString(R.string.tagmanager_preview_dialog_message), this.zzaQB.getResources().getString(R.string.tagmanager_preview_dialog_button));
        } catch (Exception e) {
            String str = "Calling preview threw an exception: ";
            String valueOf = String.valueOf(e.getMessage());
            zzayx.e(valueOf.length() != 0 ? str.concat(valueOf) : new String(str));
        }
    }
}
