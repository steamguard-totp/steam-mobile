package com.google.android.gms.internal;

import android.app.Activity;
import android.content.Context;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.View.OnTouchListener;
import android.view.ViewGroup.LayoutParams;
import android.view.ViewParent;
import android.webkit.WebChromeClient;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.google.android.gms.ads.internal.overlay.zze;
import com.google.android.gms.ads.internal.zzd;
import com.google.android.gms.ads.internal.zzt;
import com.google.android.gms.internal.zzcv.zzb;
import java.util.Map;
import org.json.JSONObject;

@zzmb
public interface zzqp extends zzt, zzb, zzjb {
    void destroy();

    Context getContext();

    LayoutParams getLayoutParams();

    void getLocationOnScreen(int[] iArr);

    int getMeasuredHeight();

    int getMeasuredWidth();

    ViewParent getParent();

    String getRequestId();

    int getRequestedOrientation();

    View getView();

    WebView getWebView();

    boolean isDestroyed();

    void loadData(String str, String str2, String str3);

    void loadDataWithBaseURL(String str, String str2, String str3, String str4, String str5);

    void loadUrl(String str);

    void measure(int i, int i2);

    void onPause();

    void onResume();

    void setBackgroundColor(int i);

    void setContext(Context context);

    void setOnClickListener(OnClickListener onClickListener);

    void setOnTouchListener(OnTouchListener onTouchListener);

    void setRequestedOrientation(int i);

    void setWebChromeClient(WebChromeClient webChromeClient);

    void setWebViewClient(WebViewClient webViewClient);

    void stopLoading();

    void zzJ(boolean z);

    void zzK(int i);

    void zzK(boolean z);

    void zzL(boolean z);

    void zzM(boolean z);

    void zza(Context context, zzec com_google_android_gms_internal_zzec, zzgf com_google_android_gms_internal_zzgf);

    void zza(zzec com_google_android_gms_internal_zzec);

    void zza(zzqu com_google_android_gms_internal_zzqu);

    void zza(String str, Map<String, ?> map);

    void zza(String str, JSONObject jSONObject);

    void zzb(zze com_google_android_gms_ads_internal_overlay_zze);

    void zzb(zzgs com_google_android_gms_internal_zzgs);

    zzec zzbD();

    void zzbf(String str);

    void zzbg(String str);

    zzd zzbz();

    void zzc(zze com_google_android_gms_ads_internal_overlay_zze);

    void zzhp();

    void zzi(String str, String str2);

    void zzkP();

    void zzkQ();

    Activity zzkR();

    Context zzkS();

    zze zzkT();

    zze zzkU();

    zzqq zzkV();

    boolean zzkW();

    zzav zzkX();

    zzqa zzkY();

    boolean zzkZ();

    void zzla();

    boolean zzlb();

    boolean zzlc();

    zzqo zzld();

    zzgd zzle();

    zzge zzlf();

    zzqu zzlg();

    boolean zzlh();

    void zzli();

    void zzlj();

    OnClickListener zzlk();

    zzgs zzll();

    void zzlm();
}
