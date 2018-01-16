package com.google.android.gms.internal;

import android.content.Context;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;

@zzmb
public class zzkx implements zzkv {
    private final Context mContext;
    final Set<WebView> zzOG = Collections.synchronizedSet(new HashSet());

    public zzkx(Context context) {
        this.mContext = context;
    }

    public void zza(String str, final String str2, final String str3) {
        zzpy.zzbc("Fetching assets for the given html");
        zzpi.zzWR.post(new Runnable(this) {
            final /* synthetic */ zzkx zzOJ;

            public void run() {
                final WebView zzij = this.zzOJ.zzij();
                zzij.setWebViewClient(new WebViewClient(this) {
                    final /* synthetic */ AnonymousClass1 zzOK;

                    public void onPageFinished(WebView webView, String str) {
                        zzpy.zzbc("Loading assets have finished");
                        this.zzOK.zzOJ.zzOG.remove(zzij);
                    }

                    public void onReceivedError(WebView webView, int i, String str, String str2) {
                        zzpy.zzbe("Loading assets have failed.");
                        this.zzOK.zzOJ.zzOG.remove(zzij);
                    }
                });
                this.zzOJ.zzOG.add(zzij);
                zzij.loadDataWithBaseURL(str2, str3, "text/html", "UTF-8", null);
                zzpy.zzbc("Fetching assets finished.");
            }
        });
    }

    public WebView zzij() {
        WebView webView = new WebView(this.mContext);
        webView.getSettings().setJavaScriptEnabled(true);
        return webView;
    }
}
