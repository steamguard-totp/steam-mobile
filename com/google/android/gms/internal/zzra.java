package com.google.android.gms.internal;

import android.text.TextUtils;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.google.android.gms.common.internal.zzaa;
import java.net.URI;
import java.net.URISyntaxException;

@zzmb
public class zzra extends WebViewClient {
    private final zzqp zzGt;
    private final zzlk zzPD;
    private final String zzZL;
    private boolean zzZM = false;

    public zzra(zzlk com_google_android_gms_internal_zzlk, zzqp com_google_android_gms_internal_zzqp, String str) {
        this.zzZL = zzbm(str);
        this.zzGt = com_google_android_gms_internal_zzqp;
        this.zzPD = com_google_android_gms_internal_zzlk;
    }

    private String zzbm(String str) {
        if (!TextUtils.isEmpty(str)) {
            try {
                if (str.endsWith("/")) {
                    str = str.substring(0, str.length() - 1);
                }
            } catch (IndexOutOfBoundsException e) {
                zzpy.e(e.getMessage());
            }
        }
        return str;
    }

    public void onLoadResource(WebView webView, String str) {
        String str2 = "JavascriptAdWebViewClient::onLoadResource: ";
        String valueOf = String.valueOf(str);
        zzpy.zzbc(valueOf.length() != 0 ? str2.concat(valueOf) : new String(str2));
        if (!zzbl(str)) {
            this.zzGt.zzkV().onLoadResource(this.zzGt.getWebView(), str);
        }
    }

    public void onPageFinished(WebView webView, String str) {
        String str2 = "JavascriptAdWebViewClient::onPageFinished: ";
        String valueOf = String.valueOf(str);
        zzpy.zzbc(valueOf.length() != 0 ? str2.concat(valueOf) : new String(str2));
        if (!this.zzZM) {
            this.zzPD.zzix();
            this.zzZM = true;
        }
    }

    public boolean shouldOverrideUrlLoading(WebView webView, String str) {
        String str2 = "JavascriptAdWebViewClient::shouldOverrideUrlLoading: ";
        String valueOf = String.valueOf(str);
        zzpy.zzbc(valueOf.length() != 0 ? str2.concat(valueOf) : new String(str2));
        if (!zzbl(str)) {
            return this.zzGt.zzkV().shouldOverrideUrlLoading(this.zzGt.getWebView(), str);
        }
        zzpy.zzbc("shouldOverrideUrlLoading: received passback url");
        return true;
    }

    protected boolean zzbl(String str) {
        Object zzbm = zzbm(str);
        if (TextUtils.isEmpty(zzbm)) {
            return false;
        }
        try {
            URI uri = new URI(zzbm);
            if ("passback".equals(uri.getScheme())) {
                zzpy.zzbc("Passback received");
                this.zzPD.zziy();
                return true;
            } else if (TextUtils.isEmpty(this.zzZL)) {
                return false;
            } else {
                URI uri2 = new URI(this.zzZL);
                String host = uri2.getHost();
                String host2 = uri.getHost();
                String path = uri2.getPath();
                String path2 = uri.getPath();
                if (!zzaa.equal(host, host2) || !zzaa.equal(path, path2)) {
                    return false;
                }
                zzpy.zzbc("Passback received");
                this.zzPD.zziy();
                return true;
            }
        } catch (URISyntaxException e) {
            zzpy.e(e.getMessage());
            return false;
        }
    }
}
