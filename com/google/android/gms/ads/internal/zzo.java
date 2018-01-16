package com.google.android.gms.ads.internal;

import android.graphics.Bitmap;
import android.graphics.Bitmap.CompressFormat;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Bundle;
import android.os.IBinder;
import android.os.RemoteException;
import android.text.TextUtils;
import android.util.Base64;
import android.view.View;
import android.view.View.OnClickListener;
import com.google.android.gms.dynamic.zzd;
import com.google.android.gms.dynamic.zze;
import com.google.android.gms.internal.zzgp;
import com.google.android.gms.internal.zzgq;
import com.google.android.gms.internal.zzgz;
import com.google.android.gms.internal.zzhx;
import com.google.android.gms.internal.zzjn;
import com.google.android.gms.internal.zzjw;
import com.google.android.gms.internal.zzjx;
import com.google.android.gms.internal.zzmb;
import com.google.android.gms.internal.zzov;
import com.google.android.gms.internal.zzpy;
import com.google.android.gms.internal.zzqp;
import com.google.android.gms.internal.zzqq.zza;
import java.io.ByteArrayOutputStream;
import java.io.OutputStream;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.CountDownLatch;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

@zzmb
public class zzo {

    class AnonymousClass1 implements zza {
        final /* synthetic */ zzgp zztN;
        final /* synthetic */ String zztO;
        final /* synthetic */ zzqp zztP;

        AnonymousClass1(zzgp com_google_android_gms_internal_zzgp, String str, zzqp com_google_android_gms_internal_zzqp) {
            this.zztN = com_google_android_gms_internal_zzgp;
            this.zztO = str;
            this.zztP = com_google_android_gms_internal_zzqp;
        }

        public void zza(zzqp com_google_android_gms_internal_zzqp, boolean z) {
            try {
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("headline", this.zztN.getHeadline());
                jSONObject.put("body", this.zztN.getBody());
                jSONObject.put("call_to_action", this.zztN.getCallToAction());
                jSONObject.put("price", this.zztN.getPrice());
                jSONObject.put("star_rating", String.valueOf(this.zztN.getStarRating()));
                jSONObject.put("store", this.zztN.getStore());
                jSONObject.put("icon", zzo.zza(this.zztN.zzfL()));
                JSONArray jSONArray = new JSONArray();
                List<Object> images = this.zztN.getImages();
                if (images != null) {
                    for (Object zzf : images) {
                        jSONArray.put(zzo.zza(zzo.zze(zzf)));
                    }
                }
                jSONObject.put("images", jSONArray);
                jSONObject.put("extras", zzo.zza(this.zztN.getExtras(), this.zztO));
                JSONObject jSONObject2 = new JSONObject();
                jSONObject2.put("assets", jSONObject);
                jSONObject2.put("template_id", "2");
                this.zztP.zza("google.afma.nativeExpressAds.loadAssets", jSONObject2);
            } catch (Throwable e) {
                zzpy.zzc("Exception occurred when loading assets", e);
            }
        }
    }

    class AnonymousClass2 implements zza {
        final /* synthetic */ String zztO;
        final /* synthetic */ zzqp zztP;
        final /* synthetic */ zzgq zztQ;

        AnonymousClass2(zzgq com_google_android_gms_internal_zzgq, String str, zzqp com_google_android_gms_internal_zzqp) {
            this.zztQ = com_google_android_gms_internal_zzgq;
            this.zztO = str;
            this.zztP = com_google_android_gms_internal_zzqp;
        }

        public void zza(zzqp com_google_android_gms_internal_zzqp, boolean z) {
            try {
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("headline", this.zztQ.getHeadline());
                jSONObject.put("body", this.zztQ.getBody());
                jSONObject.put("call_to_action", this.zztQ.getCallToAction());
                jSONObject.put("advertiser", this.zztQ.getAdvertiser());
                jSONObject.put("logo", zzo.zza(this.zztQ.zzfQ()));
                JSONArray jSONArray = new JSONArray();
                List<Object> images = this.zztQ.getImages();
                if (images != null) {
                    for (Object zzf : images) {
                        jSONArray.put(zzo.zza(zzo.zze(zzf)));
                    }
                }
                jSONObject.put("images", jSONArray);
                jSONObject.put("extras", zzo.zza(this.zztQ.getExtras(), this.zztO));
                JSONObject jSONObject2 = new JSONObject();
                jSONObject2.put("assets", jSONObject);
                jSONObject2.put("template_id", "1");
                this.zztP.zza("google.afma.nativeExpressAds.loadAssets", jSONObject2);
            } catch (Throwable e) {
                zzpy.zzc("Exception occurred when loading assets", e);
            }
        }
    }

    class AnonymousClass3 implements zzhx {
        final /* synthetic */ CountDownLatch zzsA;

        AnonymousClass3(CountDownLatch countDownLatch) {
            this.zzsA = countDownLatch;
        }

        public void zza(zzqp com_google_android_gms_internal_zzqp, Map<String, String> map) {
            this.zzsA.countDown();
            com_google_android_gms_internal_zzqp.getView().setVisibility(0);
        }
    }

    class AnonymousClass4 implements zzhx {
        final /* synthetic */ CountDownLatch zzsA;

        AnonymousClass4(CountDownLatch countDownLatch) {
            this.zzsA = countDownLatch;
        }

        public void zza(zzqp com_google_android_gms_internal_zzqp, Map<String, String> map) {
            zzpy.zzbe("Adapter returned an ad, but assets substitution failed");
            this.zzsA.countDown();
            com_google_android_gms_internal_zzqp.destroy();
        }
    }

    class AnonymousClass5 implements zzhx {
        final /* synthetic */ zzjw zztR;
        final /* synthetic */ zzf.zza zztS;
        final /* synthetic */ zzjx zztT;

        AnonymousClass5(zzjw com_google_android_gms_internal_zzjw, zzf.zza com_google_android_gms_ads_internal_zzf_zza, zzjx com_google_android_gms_internal_zzjx) {
            this.zztR = com_google_android_gms_internal_zzjw;
            this.zztS = com_google_android_gms_ads_internal_zzf_zza;
            this.zztT = com_google_android_gms_internal_zzjx;
        }

        public void zza(zzqp com_google_android_gms_internal_zzqp, Map<String, String> map) {
            View view = com_google_android_gms_internal_zzqp.getView();
            if (view != null) {
                try {
                    if (this.zztR != null) {
                        if (this.zztR.getOverrideClickHandling()) {
                            zzo.zza(com_google_android_gms_internal_zzqp);
                            return;
                        }
                        this.zztR.zzk(zze.zzA(view));
                        this.zztS.onClick();
                    } else if (this.zztT == null) {
                    } else {
                        if (this.zztT.getOverrideClickHandling()) {
                            zzo.zza(com_google_android_gms_internal_zzqp);
                            return;
                        }
                        this.zztT.zzk(zze.zzA(view));
                        this.zztS.onClick();
                    }
                } catch (Throwable e) {
                    zzpy.zzc("Unable to call handleClick on mapper", e);
                }
            }
        }
    }

    private static zzgp zza(zzjw com_google_android_gms_internal_zzjw) throws RemoteException {
        return new zzgp(com_google_android_gms_internal_zzjw.getHeadline(), com_google_android_gms_internal_zzjw.getImages(), com_google_android_gms_internal_zzjw.getBody(), com_google_android_gms_internal_zzjw.zzfL(), com_google_android_gms_internal_zzjw.getCallToAction(), com_google_android_gms_internal_zzjw.getStarRating(), com_google_android_gms_internal_zzjw.getStore(), com_google_android_gms_internal_zzjw.getPrice(), null, com_google_android_gms_internal_zzjw.getExtras(), null, null);
    }

    private static zzgq zza(zzjx com_google_android_gms_internal_zzjx) throws RemoteException {
        return new zzgq(com_google_android_gms_internal_zzjx.getHeadline(), com_google_android_gms_internal_zzjx.getImages(), com_google_android_gms_internal_zzjx.getBody(), com_google_android_gms_internal_zzjx.zzfQ(), com_google_android_gms_internal_zzjx.getCallToAction(), com_google_android_gms_internal_zzjx.getAdvertiser(), null, com_google_android_gms_internal_zzjx.getExtras());
    }

    static zzhx zza(zzjw com_google_android_gms_internal_zzjw, zzjx com_google_android_gms_internal_zzjx, zzf.zza com_google_android_gms_ads_internal_zzf_zza) {
        return new AnonymousClass5(com_google_android_gms_internal_zzjw, com_google_android_gms_ads_internal_zzf_zza, com_google_android_gms_internal_zzjx);
    }

    static zzhx zza(CountDownLatch countDownLatch) {
        return new AnonymousClass3(countDownLatch);
    }

    private static String zza(Bitmap bitmap) {
        OutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        if (bitmap == null) {
            zzpy.zzbe("Bitmap is null. Returning empty string");
            return "";
        }
        bitmap.compress(CompressFormat.PNG, 100, byteArrayOutputStream);
        String encodeToString = Base64.encodeToString(byteArrayOutputStream.toByteArray(), 0);
        String valueOf = String.valueOf("data:image/png;base64,");
        encodeToString = String.valueOf(encodeToString);
        return encodeToString.length() != 0 ? valueOf.concat(encodeToString) : new String(valueOf);
    }

    static String zza(zzgz com_google_android_gms_internal_zzgz) {
        if (com_google_android_gms_internal_zzgz == null) {
            zzpy.zzbe("Image is null. Returning empty string");
            return "";
        }
        try {
            Uri uri = com_google_android_gms_internal_zzgz.getUri();
            if (uri != null) {
                return uri.toString();
            }
        } catch (RemoteException e) {
            zzpy.zzbe("Unable to get image uri. Trying data uri next");
        }
        return zzb(com_google_android_gms_internal_zzgz);
    }

    private static JSONObject zza(Bundle bundle, String str) throws JSONException {
        JSONObject jSONObject = new JSONObject();
        if (bundle == null || TextUtils.isEmpty(str)) {
            return jSONObject;
        }
        JSONObject jSONObject2 = new JSONObject(str);
        Iterator keys = jSONObject2.keys();
        while (keys.hasNext()) {
            String str2 = (String) keys.next();
            if (bundle.containsKey(str2)) {
                if ("image".equals(jSONObject2.getString(str2))) {
                    Object obj = bundle.get(str2);
                    if (obj instanceof Bitmap) {
                        jSONObject.put(str2, zza((Bitmap) obj));
                    } else {
                        zzpy.zzbe("Invalid type. An image type extra should return a bitmap");
                    }
                } else if (bundle.get(str2) instanceof Bitmap) {
                    zzpy.zzbe("Invalid asset type. Bitmap should be returned only for image type");
                } else {
                    jSONObject.put(str2, String.valueOf(bundle.get(str2)));
                }
            }
        }
        return jSONObject;
    }

    public static void zza(zzov com_google_android_gms_internal_zzov, zzf.zza com_google_android_gms_ads_internal_zzf_zza) {
        zzjx com_google_android_gms_internal_zzjx = null;
        if (com_google_android_gms_internal_zzov != null && zzh(com_google_android_gms_internal_zzov)) {
            zzqp com_google_android_gms_internal_zzqp = com_google_android_gms_internal_zzov.zzMZ;
            Object view = com_google_android_gms_internal_zzqp != null ? com_google_android_gms_internal_zzqp.getView() : null;
            if (view == null) {
                zzpy.zzbe("AdWebView is null");
                return;
            }
            try {
                List list = com_google_android_gms_internal_zzov.zzKA != null ? com_google_android_gms_internal_zzov.zzKA.zzJU : null;
                if (list == null || list.isEmpty()) {
                    zzpy.zzbe("No template ids present in mediation response");
                    return;
                }
                zzjw zzgJ = com_google_android_gms_internal_zzov.zzKB != null ? com_google_android_gms_internal_zzov.zzKB.zzgJ() : null;
                if (com_google_android_gms_internal_zzov.zzKB != null) {
                    com_google_android_gms_internal_zzjx = com_google_android_gms_internal_zzov.zzKB.zzgK();
                }
                if (list.contains("2") && zzgJ != null) {
                    zzgJ.zzl(zze.zzA(view));
                    if (!zzgJ.getOverrideImpressionRecording()) {
                        zzgJ.recordImpression();
                    }
                    com_google_android_gms_internal_zzqp.zzkV().zza("/nativeExpressViewClicked", zza(zzgJ, null, com_google_android_gms_ads_internal_zzf_zza));
                } else if (!list.contains("1") || com_google_android_gms_internal_zzjx == null) {
                    zzpy.zzbe("No matching template id and mapper");
                } else {
                    com_google_android_gms_internal_zzjx.zzl(zze.zzA(view));
                    if (!com_google_android_gms_internal_zzjx.getOverrideImpressionRecording()) {
                        com_google_android_gms_internal_zzjx.recordImpression();
                    }
                    com_google_android_gms_internal_zzqp.zzkV().zza("/nativeExpressViewClicked", zza(null, com_google_android_gms_internal_zzjx, com_google_android_gms_ads_internal_zzf_zza));
                }
            } catch (Throwable e) {
                zzpy.zzc("Error occurred while recording impression and registering for clicks", e);
            }
        }
    }

    private static void zza(zzqp com_google_android_gms_internal_zzqp) {
        OnClickListener zzlk = com_google_android_gms_internal_zzqp.zzlk();
        if (zzlk != null) {
            zzlk.onClick(com_google_android_gms_internal_zzqp.getView());
        }
    }

    private static void zza(zzqp com_google_android_gms_internal_zzqp, zzgp com_google_android_gms_internal_zzgp, String str) {
        com_google_android_gms_internal_zzqp.zzkV().zza(new AnonymousClass1(com_google_android_gms_internal_zzgp, str, com_google_android_gms_internal_zzqp));
    }

    private static void zza(zzqp com_google_android_gms_internal_zzqp, zzgq com_google_android_gms_internal_zzgq, String str) {
        com_google_android_gms_internal_zzqp.zzkV().zza(new AnonymousClass2(com_google_android_gms_internal_zzgq, str, com_google_android_gms_internal_zzqp));
    }

    private static void zza(zzqp com_google_android_gms_internal_zzqp, CountDownLatch countDownLatch) {
        com_google_android_gms_internal_zzqp.zzkV().zza("/nativeExpressAssetsLoaded", zza(countDownLatch));
        com_google_android_gms_internal_zzqp.zzkV().zza("/nativeExpressAssetsLoadingFailed", zzb(countDownLatch));
    }

    public static boolean zza(zzqp com_google_android_gms_internal_zzqp, zzjn com_google_android_gms_internal_zzjn, CountDownLatch countDownLatch) {
        boolean z = false;
        try {
            z = zzb(com_google_android_gms_internal_zzqp, com_google_android_gms_internal_zzjn, countDownLatch);
        } catch (Throwable e) {
            zzpy.zzc("Unable to invoke load assets", e);
        } catch (RuntimeException e2) {
            countDownLatch.countDown();
            throw e2;
        }
        if (!z) {
            countDownLatch.countDown();
        }
        return z;
    }

    static zzhx zzb(CountDownLatch countDownLatch) {
        return new AnonymousClass4(countDownLatch);
    }

    private static String zzb(zzgz com_google_android_gms_internal_zzgz) {
        try {
            zzd zzfK = com_google_android_gms_internal_zzgz.zzfK();
            if (zzfK == null) {
                zzpy.zzbe("Drawable is null. Returning empty string");
                return "";
            }
            Drawable drawable = (Drawable) zze.zzE(zzfK);
            if (drawable instanceof BitmapDrawable) {
                return zza(((BitmapDrawable) drawable).getBitmap());
            }
            zzpy.zzbe("Drawable is not an instance of BitmapDrawable. Returning empty string");
            return "";
        } catch (RemoteException e) {
            zzpy.zzbe("Unable to get drawable. Returning empty string");
            return "";
        }
    }

    private static boolean zzb(zzqp com_google_android_gms_internal_zzqp, zzjn com_google_android_gms_internal_zzjn, CountDownLatch countDownLatch) throws RemoteException {
        View view = com_google_android_gms_internal_zzqp.getView();
        if (view == null) {
            zzpy.zzbe("AdWebView is null");
            return false;
        }
        view.setVisibility(4);
        List list = com_google_android_gms_internal_zzjn.zzKA.zzJU;
        if (list == null || list.isEmpty()) {
            zzpy.zzbe("No template ids present in mediation response");
            return false;
        }
        zza(com_google_android_gms_internal_zzqp, countDownLatch);
        zzjw zzgJ = com_google_android_gms_internal_zzjn.zzKB.zzgJ();
        zzjx zzgK = com_google_android_gms_internal_zzjn.zzKB.zzgK();
        if (list.contains("2") && zzgJ != null) {
            zza(com_google_android_gms_internal_zzqp, zza(zzgJ), com_google_android_gms_internal_zzjn.zzKA.zzJT);
        } else if (!list.contains("1") || zzgK == null) {
            zzpy.zzbe("No matching template id and mapper");
            return false;
        } else {
            zza(com_google_android_gms_internal_zzqp, zza(zzgK), com_google_android_gms_internal_zzjn.zzKA.zzJT);
        }
        String str = com_google_android_gms_internal_zzjn.zzKA.zzJR;
        String str2 = com_google_android_gms_internal_zzjn.zzKA.zzJS;
        if (str2 != null) {
            com_google_android_gms_internal_zzqp.loadDataWithBaseURL(str2, str, "text/html", "UTF-8", null);
        } else {
            com_google_android_gms_internal_zzqp.loadData(str, "text/html", "UTF-8");
        }
        return true;
    }

    private static zzgz zze(Object obj) {
        return obj instanceof IBinder ? zzgz.zza.zzB((IBinder) obj) : null;
    }

    public static View zzg(zzov com_google_android_gms_internal_zzov) {
        if (com_google_android_gms_internal_zzov == null) {
            zzpy.e("AdState is null");
            return null;
        } else if (zzh(com_google_android_gms_internal_zzov) && com_google_android_gms_internal_zzov.zzMZ != null) {
            return com_google_android_gms_internal_zzov.zzMZ.getView();
        } else {
            try {
                zzd view = com_google_android_gms_internal_zzov.zzKB != null ? com_google_android_gms_internal_zzov.zzKB.getView() : null;
                if (view != null) {
                    return (View) zze.zzE(view);
                }
                zzpy.zzbe("View in mediation adapter is null.");
                return null;
            } catch (Throwable e) {
                zzpy.zzc("Could not get View from mediation adapter.", e);
                return null;
            }
        }
    }

    public static boolean zzh(zzov com_google_android_gms_internal_zzov) {
        return (com_google_android_gms_internal_zzov == null || !com_google_android_gms_internal_zzov.zzRK || com_google_android_gms_internal_zzov.zzKA == null || com_google_android_gms_internal_zzov.zzKA.zzJR == null) ? false : true;
    }
}
