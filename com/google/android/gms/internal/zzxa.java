package com.google.android.gms.internal;

import android.content.Context;
import android.graphics.Bitmap;
import android.net.Uri;
import com.google.android.gms.cast.framework.media.ImageHints;
import com.google.android.gms.internal.zzxb.zzb;

public class zzxa implements com.google.android.gms.internal.zzxb.zza {
    private Bitmap mBitmap;
    private final Context zzOZ;
    private final ImageHints zzarV;
    private Uri zzarW;
    private zzxb zzarX;
    private zzb zzarY;
    private boolean zzarZ;
    private zza zzasa;

    public interface zza {
        void zzc(Bitmap bitmap);
    }

    public zzxa(Context context) {
        this(context, new ImageHints(-1, 0, 0));
    }

    public zzxa(Context context, ImageHints imageHints) {
        this.zzOZ = context;
        this.zzarV = imageHints;
        this.zzarY = new zzb();
        reset();
    }

    private void reset() {
        if (this.zzarX != null) {
            this.zzarX.cancel(true);
            this.zzarX = null;
        }
        this.zzarW = null;
        this.mBitmap = null;
        this.zzarZ = false;
    }

    public void clear() {
        reset();
        this.zzasa = null;
    }

    public void onPostExecute(Bitmap bitmap) {
        this.mBitmap = bitmap;
        this.zzarZ = true;
        if (this.zzasa != null) {
            this.zzasa.zzc(this.mBitmap);
        }
        this.zzarX = null;
    }

    public void zza(zza com_google_android_gms_internal_zzxa_zza) {
        this.zzasa = com_google_android_gms_internal_zzxa_zza;
    }

    public boolean zzo(Uri uri) {
        if (uri == null) {
            reset();
            return true;
        } else if (uri.equals(this.zzarW)) {
            return this.zzarZ;
        } else {
            reset();
            this.zzarW = uri;
            if (this.zzarV.getWidthInPixels() == 0 || this.zzarV.getHeightInPixels() == 0) {
                this.zzarX = this.zzarY.zza(this.zzOZ, this);
            } else {
                this.zzarX = this.zzarY.zza(this.zzOZ, this.zzarV.getWidthInPixels(), this.zzarV.getHeightInPixels(), false, this);
            }
            this.zzarX.zzp(this.zzarW);
            return false;
        }
    }
}
