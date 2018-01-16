package com.google.android.gms.internal;

import android.annotation.TargetApi;
import android.content.Context;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.AsyncTask;
import android.os.Build.VERSION;

public class zzxb extends AsyncTask<Uri, Long, Bitmap> {
    private static final zzyu zzaoQ = new zzyu("FetchBitmapTask");
    private final zzxc zzasb;
    private final zza zzasc;

    public interface zza {
        void onPostExecute(Bitmap bitmap);
    }

    public static class zzb {
        public zzxb zza(Context context, int i, int i2, boolean z, zza com_google_android_gms_internal_zzxb_zza) {
            return new zzxb(context, i, i2, z, com_google_android_gms_internal_zzxb_zza);
        }

        public zzxb zza(Context context, zza com_google_android_gms_internal_zzxb_zza) {
            return new zzxb(context, com_google_android_gms_internal_zzxb_zza);
        }
    }

    private class zzc extends com.google.android.gms.internal.zzxd.zza {
        final /* synthetic */ zzxb zzasd;

        private zzc(zzxb com_google_android_gms_internal_zzxb) {
            this.zzasd = com_google_android_gms_internal_zzxb;
        }

        public void zzb(long j, long j2) {
            this.zzasd.publishProgress(new Long[]{Long.valueOf(j), Long.valueOf(j2)});
        }

        public int zzsd() {
            return 10084208;
        }
    }

    public zzxb(Context context, int i, int i2, boolean z, long j, int i3, int i4, int i5, zza com_google_android_gms_internal_zzxb_zza) {
        this.zzasb = zzwq.zza(context.getApplicationContext(), this, new zzc(), i, i2, z, j, i3, i4, i5);
        this.zzasc = com_google_android_gms_internal_zzxb_zza;
    }

    public zzxb(Context context, int i, int i2, boolean z, zza com_google_android_gms_internal_zzxb_zza) {
        this(context, i, i2, z, 2097152, 5, 333, 10000, com_google_android_gms_internal_zzxb_zza);
    }

    public zzxb(Context context, zza com_google_android_gms_internal_zzxb_zza) {
        this(context, 0, 0, false, 2097152, 5, 333, 10000, com_google_android_gms_internal_zzxb_zza);
    }

    protected Bitmap doInBackground(Uri... uriArr) {
        Bitmap bitmap = null;
        if (uriArr.length == 1 && uriArr[0] != null) {
            try {
                bitmap = this.zzasb.zzq(uriArr[0]);
            } catch (Throwable e) {
                zzaoQ.zzb(e, "Unable to call %s on %s.", "doFetch", zzxc.class.getSimpleName());
            }
        }
        return bitmap;
    }

    protected void onPostExecute(Bitmap bitmap) {
        if (this.zzasc != null) {
            this.zzasc.onPostExecute(bitmap);
        }
    }

    @TargetApi(11)
    public AsyncTask<Uri, Long, Bitmap> zzp(Uri uri) {
        if (VERSION.SDK_INT >= 11) {
            return executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new Uri[]{uri});
        }
        return execute(new Uri[]{uri});
    }
}
