package com.google.android.gms.ads.internal;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.net.Uri.Builder;
import android.os.AsyncTask;
import android.os.Bundle;
import android.os.RemoteException;
import android.text.TextUtils;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnTouchListener;
import android.view.ViewGroup.LayoutParams;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.google.ads.mediation.admob.AdMobAdapter;
import com.google.android.gms.common.internal.zzac;
import com.google.android.gms.dynamic.zzd;
import com.google.android.gms.dynamic.zze;
import com.google.android.gms.internal.zzch;
import com.google.android.gms.internal.zzci;
import com.google.android.gms.internal.zzdy;
import com.google.android.gms.internal.zzec;
import com.google.android.gms.internal.zzeh;
import com.google.android.gms.internal.zzek;
import com.google.android.gms.internal.zzel;
import com.google.android.gms.internal.zzer;
import com.google.android.gms.internal.zzet;
import com.google.android.gms.internal.zzew;
import com.google.android.gms.internal.zzfn;
import com.google.android.gms.internal.zzfx;
import com.google.android.gms.internal.zzgj;
import com.google.android.gms.internal.zzkz;
import com.google.android.gms.internal.zzld;
import com.google.android.gms.internal.zzmb;
import com.google.android.gms.internal.zznt;
import com.google.android.gms.internal.zzph;
import com.google.android.gms.internal.zzpy;
import com.google.android.gms.internal.zzqa;
import java.util.Map;
import java.util.TreeMap;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

@zzmb
public class zzu extends com.google.android.gms.internal.zzep.zza {
    private final Context mContext;
    private zzel zzti;
    private final zzqa zztr;
    private final zzec zzum;
    private final Future<zzch> zzun = zzcz();
    private final zzb zzuo;
    private WebView zzup = new WebView(this.mContext);
    private zzch zzuq;
    private AsyncTask<Void, Void, String> zzur;

    private class zza extends AsyncTask<Void, Void, String> {
        final /* synthetic */ zzu zzus;

        private zza(zzu com_google_android_gms_ads_internal_zzu) {
            this.zzus = com_google_android_gms_ads_internal_zzu;
        }

        protected /* synthetic */ Object doInBackground(Object[] objArr) {
            return zza((Void[]) objArr);
        }

        protected /* synthetic */ void onPostExecute(Object obj) {
            zzD((String) obj);
        }

        protected void zzD(String str) {
            if (this.zzus.zzup != null && str != null) {
                this.zzus.zzup.loadUrl(str);
            }
        }

        protected String zza(Void... voidArr) {
            Throwable e;
            try {
                this.zzus.zzuq = (zzch) this.zzus.zzun.get(((Long) zzfx.zzEz.get()).longValue(), TimeUnit.MILLISECONDS);
            } catch (InterruptedException e2) {
                e = e2;
                zzpy.zzc("Failed to load ad data", e);
            } catch (ExecutionException e3) {
                e = e3;
                zzpy.zzc("Failed to load ad data", e);
            } catch (TimeoutException e4) {
                zzpy.zzbe("Timed out waiting for ad data");
            }
            return this.zzus.zzcx();
        }
    }

    private static class zzb {
        private final String zzut;
        private final Map<String, String> zzuu = new TreeMap();
        private String zzuv;
        private String zzuw;

        public zzb(String str) {
            this.zzut = str;
        }

        public String getQuery() {
            return this.zzuv;
        }

        public String zzcB() {
            return this.zzuw;
        }

        public String zzcC() {
            return this.zzut;
        }

        public Map<String, String> zzcD() {
            return this.zzuu;
        }

        public void zzi(zzdy com_google_android_gms_internal_zzdy) {
            this.zzuv = com_google_android_gms_internal_zzdy.zzyM.zzAD;
            Bundle bundle = com_google_android_gms_internal_zzdy.zzyP != null ? com_google_android_gms_internal_zzdy.zzyP.getBundle(AdMobAdapter.class.getName()) : null;
            if (bundle != null) {
                String str = (String) zzfx.zzEy.get();
                for (String str2 : bundle.keySet()) {
                    if (str.equals(str2)) {
                        this.zzuw = bundle.getString(str2);
                    } else if (str2.startsWith("csa_")) {
                        this.zzuu.put(str2.substring("csa_".length()), bundle.getString(str2));
                    }
                }
            }
        }
    }

    public zzu(Context context, zzec com_google_android_gms_internal_zzec, String str, zzqa com_google_android_gms_internal_zzqa) {
        this.mContext = context;
        this.zztr = com_google_android_gms_internal_zzqa;
        this.zzum = com_google_android_gms_internal_zzec;
        this.zzuo = new zzb(str);
        zzcw();
    }

    private String zzB(String str) {
        if (this.zzuq == null) {
            return str;
        }
        Uri parse = Uri.parse(str);
        try {
            parse = this.zzuq.zzd(parse, this.mContext);
        } catch (Throwable e) {
            zzpy.zzc("Unable to process ad data", e);
        } catch (Throwable e2) {
            zzpy.zzc("Unable to parse ad click url", e2);
        }
        return parse.toString();
    }

    private void zzC(String str) {
        Intent intent = new Intent("android.intent.action.VIEW");
        intent.setData(Uri.parse(str));
        this.mContext.startActivity(intent);
    }

    private void zzcw() {
        zzj(0);
        this.zzup.setVerticalScrollBarEnabled(false);
        this.zzup.getSettings().setJavaScriptEnabled(true);
        this.zzup.setWebViewClient(new WebViewClient(this) {
            final /* synthetic */ zzu zzus;

            {
                this.zzus = r1;
            }

            public boolean shouldOverrideUrlLoading(WebView webView, String str) {
                if (str.startsWith(this.zzus.zzcy())) {
                    return false;
                }
                if (str.startsWith((String) zzfx.zzEu.get())) {
                    if (this.zzus.zzti != null) {
                        try {
                            this.zzus.zzti.onAdFailedToLoad(3);
                        } catch (Throwable e) {
                            zzpy.zzc("Could not call AdListener.onAdFailedToLoad().", e);
                        }
                    }
                    this.zzus.zzj(0);
                    return true;
                } else if (str.startsWith((String) zzfx.zzEv.get())) {
                    if (this.zzus.zzti != null) {
                        try {
                            this.zzus.zzti.onAdFailedToLoad(0);
                        } catch (Throwable e2) {
                            zzpy.zzc("Could not call AdListener.onAdFailedToLoad().", e2);
                        }
                    }
                    this.zzus.zzj(0);
                    return true;
                } else if (str.startsWith((String) zzfx.zzEw.get())) {
                    if (this.zzus.zzti != null) {
                        try {
                            this.zzus.zzti.onAdLoaded();
                        } catch (Throwable e22) {
                            zzpy.zzc("Could not call AdListener.onAdLoaded().", e22);
                        }
                    }
                    this.zzus.zzj(this.zzus.zzA(str));
                    return true;
                } else if (str.startsWith("gmsg://")) {
                    return true;
                } else {
                    if (this.zzus.zzti != null) {
                        try {
                            this.zzus.zzti.onAdLeftApplication();
                        } catch (Throwable e222) {
                            zzpy.zzc("Could not call AdListener.onAdLeftApplication().", e222);
                        }
                    }
                    this.zzus.zzC(this.zzus.zzB(str));
                    return true;
                }
            }
        });
        this.zzup.setOnTouchListener(new OnTouchListener(this) {
            final /* synthetic */ zzu zzus;

            {
                this.zzus = r1;
            }

            public boolean onTouch(View view, MotionEvent motionEvent) {
                if (this.zzus.zzuq != null) {
                    try {
                        this.zzus.zzuq.zza(motionEvent);
                    } catch (Throwable e) {
                        zzpy.zzc("Unable to process ad data", e);
                    }
                }
                return false;
            }
        });
    }

    private Future<zzch> zzcz() {
        return zzph.zza(new Callable<zzch>(this) {
            final /* synthetic */ zzu zzus;

            {
                this.zzus = r1;
            }

            public /* synthetic */ Object call() throws Exception {
                return zzcA();
            }

            public zzch zzcA() throws Exception {
                return new zzch(this.zzus.zztr.zzaZ, this.zzus.mContext, false);
            }
        });
    }

    public void destroy() throws RemoteException {
        zzac.zzdn("destroy must be called on the main UI thread.");
        this.zzur.cancel(true);
        this.zzun.cancel(true);
        this.zzup.destroy();
        this.zzup = null;
    }

    public String getMediationAdapterClassName() throws RemoteException {
        return null;
    }

    public boolean isLoading() throws RemoteException {
        return false;
    }

    public boolean isReady() throws RemoteException {
        return false;
    }

    public void pause() throws RemoteException {
        zzac.zzdn("pause must be called on the main UI thread.");
    }

    public void resume() throws RemoteException {
        zzac.zzdn("resume must be called on the main UI thread.");
    }

    public void setManualImpressionsEnabled(boolean z) throws RemoteException {
    }

    public void setUserId(String str) throws RemoteException {
        throw new IllegalStateException("Unused method");
    }

    public void showInterstitial() throws RemoteException {
        throw new IllegalStateException("Unused method");
    }

    public void stopLoading() throws RemoteException {
    }

    int zzA(String str) {
        int i = 0;
        Object queryParameter = Uri.parse(str).getQueryParameter("height");
        if (!TextUtils.isEmpty(queryParameter)) {
            try {
                i = zzeh.zzeO().zzb(this.mContext, Integer.parseInt(queryParameter));
            } catch (NumberFormatException e) {
            }
        }
        return i;
    }

    public void zza(zzec com_google_android_gms_internal_zzec) throws RemoteException {
        throw new IllegalStateException("AdSize must be set before initialization");
    }

    public void zza(zzek com_google_android_gms_internal_zzek) throws RemoteException {
        throw new IllegalStateException("Unused method");
    }

    public void zza(zzel com_google_android_gms_internal_zzel) throws RemoteException {
        this.zzti = com_google_android_gms_internal_zzel;
    }

    public void zza(zzer com_google_android_gms_internal_zzer) throws RemoteException {
        throw new IllegalStateException("Unused method");
    }

    public void zza(zzet com_google_android_gms_internal_zzet) throws RemoteException {
        throw new IllegalStateException("Unused method");
    }

    public void zza(zzfn com_google_android_gms_internal_zzfn) {
        throw new IllegalStateException("Unused method");
    }

    public void zza(zzgj com_google_android_gms_internal_zzgj) throws RemoteException {
        throw new IllegalStateException("Unused method");
    }

    public void zza(zzkz com_google_android_gms_internal_zzkz) throws RemoteException {
        throw new IllegalStateException("Unused method");
    }

    public void zza(zzld com_google_android_gms_internal_zzld, String str) throws RemoteException {
        throw new IllegalStateException("Unused method");
    }

    public void zza(zznt com_google_android_gms_internal_zznt) throws RemoteException {
        throw new IllegalStateException("Unused method");
    }

    public boolean zzb(zzdy com_google_android_gms_internal_zzdy) throws RemoteException {
        zzac.zzb(this.zzup, (Object) "This Search Ad has already been torn down");
        this.zzuo.zzi(com_google_android_gms_internal_zzdy);
        this.zzur = new zza().execute(new Void[0]);
        return true;
    }

    public zzd zzbC() throws RemoteException {
        zzac.zzdn("getAdFrame must be called on the main UI thread.");
        return zze.zzA(this.zzup);
    }

    public zzec zzbD() throws RemoteException {
        return this.zzum;
    }

    public void zzbF() throws RemoteException {
        throw new IllegalStateException("Unused method");
    }

    public zzew zzbG() {
        return null;
    }

    String zzcx() {
        String valueOf;
        Uri zzc;
        Throwable e;
        String valueOf2;
        Builder builder = new Builder();
        builder.scheme("https://").appendEncodedPath((String) zzfx.zzEx.get());
        builder.appendQueryParameter("query", this.zzuo.getQuery());
        builder.appendQueryParameter("pubId", this.zzuo.zzcC());
        Map zzcD = this.zzuo.zzcD();
        for (String valueOf3 : zzcD.keySet()) {
            builder.appendQueryParameter(valueOf3, (String) zzcD.get(valueOf3));
        }
        Uri build = builder.build();
        if (this.zzuq != null) {
            try {
                zzc = this.zzuq.zzc(build, this.mContext);
            } catch (zzci e2) {
                e = e2;
                zzpy.zzc("Unable to process ad data", e);
                zzc = build;
                valueOf2 = String.valueOf(zzcy());
                valueOf3 = String.valueOf(zzc.getEncodedQuery());
                return new StringBuilder((String.valueOf(valueOf2).length() + 1) + String.valueOf(valueOf3).length()).append(valueOf2).append("#").append(valueOf3).toString();
            } catch (RemoteException e3) {
                e = e3;
                zzpy.zzc("Unable to process ad data", e);
                zzc = build;
                valueOf2 = String.valueOf(zzcy());
                valueOf3 = String.valueOf(zzc.getEncodedQuery());
                return new StringBuilder((String.valueOf(valueOf2).length() + 1) + String.valueOf(valueOf3).length()).append(valueOf2).append("#").append(valueOf3).toString();
            }
            valueOf2 = String.valueOf(zzcy());
            valueOf3 = String.valueOf(zzc.getEncodedQuery());
            return new StringBuilder((String.valueOf(valueOf2).length() + 1) + String.valueOf(valueOf3).length()).append(valueOf2).append("#").append(valueOf3).toString();
        }
        zzc = build;
        valueOf2 = String.valueOf(zzcy());
        valueOf3 = String.valueOf(zzc.getEncodedQuery());
        return new StringBuilder((String.valueOf(valueOf2).length() + 1) + String.valueOf(valueOf3).length()).append(valueOf2).append("#").append(valueOf3).toString();
    }

    String zzcy() {
        String str;
        CharSequence zzcB = this.zzuo.zzcB();
        if (TextUtils.isEmpty(zzcB)) {
            str = "www.google.com";
        } else {
            CharSequence charSequence = zzcB;
        }
        String valueOf = String.valueOf("https://");
        String str2 = (String) zzfx.zzEx.get();
        return new StringBuilder(((String.valueOf(valueOf).length() + 0) + String.valueOf(str).length()) + String.valueOf(str2).length()).append(valueOf).append(str).append(str2).toString();
    }

    void zzj(int i) {
        if (this.zzup != null) {
            this.zzup.setLayoutParams(new LayoutParams(-1, i));
        }
    }
}
