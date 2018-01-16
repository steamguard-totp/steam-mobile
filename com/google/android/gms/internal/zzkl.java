package com.google.android.gms.internal;

import android.app.AlertDialog.Builder;
import android.app.DownloadManager;
import android.app.DownloadManager.Request;
import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.res.Resources;
import android.net.Uri;
import android.os.Environment;
import android.text.TextUtils;
import android.webkit.URLUtil;
import com.google.android.gms.R;
import com.google.android.gms.ads.internal.zzv;
import java.util.Map;

@zzmb
public class zzkl extends zzko {
    private final Context mContext;
    private final Map<String, String> zzFs;

    public zzkl(zzqp com_google_android_gms_internal_zzqp, Map<String, String> map) {
        super(com_google_android_gms_internal_zzqp, "storePicture");
        this.zzFs = map;
        this.mContext = com_google_android_gms_internal_zzqp.zzkR();
    }

    public void execute() {
        if (this.mContext == null) {
            zzay("Activity context is not available");
        } else if (zzv.zzcJ().zzC(this.mContext).zzfi()) {
            final String str = (String) this.zzFs.get("iurl");
            if (TextUtils.isEmpty(str)) {
                zzay("Image url cannot be empty.");
            } else if (URLUtil.isValidUrl(str)) {
                final String zzax = zzax(str);
                if (zzv.zzcJ().zzaX(zzax)) {
                    Resources resources = zzv.zzcN().getResources();
                    Builder zzB = zzv.zzcJ().zzB(this.mContext);
                    zzB.setTitle(resources != null ? resources.getString(R.string.store_picture_title) : "Save image");
                    zzB.setMessage(resources != null ? resources.getString(R.string.store_picture_message) : "Allow Ad to store image in Picture gallery?");
                    zzB.setPositiveButton(resources != null ? resources.getString(R.string.accept) : "Accept", new OnClickListener(this) {
                        final /* synthetic */ zzkl zzLI;

                        public void onClick(DialogInterface dialogInterface, int i) {
                            try {
                                ((DownloadManager) this.zzLI.mContext.getSystemService("download")).enqueue(this.zzLI.zzj(str, zzax));
                            } catch (IllegalStateException e) {
                                this.zzLI.zzay("Could not store picture.");
                            }
                        }
                    });
                    zzB.setNegativeButton(resources != null ? resources.getString(R.string.decline) : "Decline", new OnClickListener(this) {
                        final /* synthetic */ zzkl zzLI;

                        {
                            this.zzLI = r1;
                        }

                        public void onClick(DialogInterface dialogInterface, int i) {
                            this.zzLI.zzay("User canceled the download.");
                        }
                    });
                    zzB.create().show();
                    return;
                }
                r1 = "Image type not recognized: ";
                str = String.valueOf(zzax);
                zzay(str.length() != 0 ? r1.concat(str) : new String(r1));
            } else {
                r1 = "Invalid image url: ";
                str = String.valueOf(str);
                zzay(str.length() != 0 ? r1.concat(str) : new String(r1));
            }
        } else {
            zzay("Feature is not supported by the device.");
        }
    }

    String zzax(String str) {
        return Uri.parse(str).getLastPathSegment();
    }

    Request zzj(String str, String str2) {
        Request request = new Request(Uri.parse(str));
        request.setDestinationInExternalPublicDir(Environment.DIRECTORY_PICTURES, str2);
        zzv.zzcL().zza(request);
        return request;
    }
}
