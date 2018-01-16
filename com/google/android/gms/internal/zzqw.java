package com.google.android.gms.internal;

import android.annotation.TargetApi;
import android.app.AlertDialog.Builder;
import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnCancelListener;
import android.content.DialogInterface.OnClickListener;
import android.os.Message;
import android.view.View;
import android.webkit.ConsoleMessage;
import android.webkit.ConsoleMessage.MessageLevel;
import android.webkit.GeolocationPermissions.Callback;
import android.webkit.JsPromptResult;
import android.webkit.JsResult;
import android.webkit.WebChromeClient;
import android.webkit.WebChromeClient.CustomViewCallback;
import android.webkit.WebStorage.QuotaUpdater;
import android.webkit.WebView;
import android.webkit.WebView.WebViewTransport;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.google.android.gms.ads.internal.overlay.zze;
import com.google.android.gms.ads.internal.zzv;

@TargetApi(11)
@zzmb
public class zzqw extends WebChromeClient {
    private final zzqp zzGt;

    class AnonymousClass1 implements OnCancelListener {
        final /* synthetic */ JsResult zzZH;

        AnonymousClass1(JsResult jsResult) {
            this.zzZH = jsResult;
        }

        public void onCancel(DialogInterface dialogInterface) {
            this.zzZH.cancel();
        }
    }

    class AnonymousClass2 implements OnClickListener {
        final /* synthetic */ JsResult zzZH;

        AnonymousClass2(JsResult jsResult) {
            this.zzZH = jsResult;
        }

        public void onClick(DialogInterface dialogInterface, int i) {
            this.zzZH.cancel();
        }
    }

    class AnonymousClass3 implements OnClickListener {
        final /* synthetic */ JsResult zzZH;

        AnonymousClass3(JsResult jsResult) {
            this.zzZH = jsResult;
        }

        public void onClick(DialogInterface dialogInterface, int i) {
            this.zzZH.confirm();
        }
    }

    class AnonymousClass4 implements OnCancelListener {
        final /* synthetic */ JsPromptResult zzZI;

        AnonymousClass4(JsPromptResult jsPromptResult) {
            this.zzZI = jsPromptResult;
        }

        public void onCancel(DialogInterface dialogInterface) {
            this.zzZI.cancel();
        }
    }

    class AnonymousClass5 implements OnClickListener {
        final /* synthetic */ JsPromptResult zzZI;

        AnonymousClass5(JsPromptResult jsPromptResult) {
            this.zzZI = jsPromptResult;
        }

        public void onClick(DialogInterface dialogInterface, int i) {
            this.zzZI.cancel();
        }
    }

    class AnonymousClass6 implements OnClickListener {
        final /* synthetic */ JsPromptResult zzZI;
        final /* synthetic */ EditText zzZJ;

        AnonymousClass6(JsPromptResult jsPromptResult, EditText editText) {
            this.zzZI = jsPromptResult;
            this.zzZJ = editText;
        }

        public void onClick(DialogInterface dialogInterface, int i) {
            this.zzZI.confirm(this.zzZJ.getText().toString());
        }
    }

    static /* synthetic */ class AnonymousClass7 {
        static final /* synthetic */ int[] zzZK = new int[MessageLevel.values().length];

        static {
            try {
                zzZK[MessageLevel.ERROR.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                zzZK[MessageLevel.WARNING.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                zzZK[MessageLevel.LOG.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                zzZK[MessageLevel.TIP.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                zzZK[MessageLevel.DEBUG.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
        }
    }

    public zzqw(zzqp com_google_android_gms_internal_zzqp) {
        this.zzGt = com_google_android_gms_internal_zzqp;
    }

    private final Context zza(WebView webView) {
        if (!(webView instanceof zzqp)) {
            return webView.getContext();
        }
        zzqp com_google_android_gms_internal_zzqp = (zzqp) webView;
        Context zzkR = com_google_android_gms_internal_zzqp.zzkR();
        return zzkR == null ? com_google_android_gms_internal_zzqp.getContext() : zzkR;
    }

    private static void zza(Builder builder, String str, JsResult jsResult) {
        builder.setMessage(str).setPositiveButton(17039370, new AnonymousClass3(jsResult)).setNegativeButton(17039360, new AnonymousClass2(jsResult)).setOnCancelListener(new AnonymousClass1(jsResult)).create().show();
    }

    private static void zza(Context context, Builder builder, String str, String str2, JsPromptResult jsPromptResult) {
        View linearLayout = new LinearLayout(context);
        linearLayout.setOrientation(1);
        View textView = new TextView(context);
        textView.setText(str);
        View editText = new EditText(context);
        editText.setText(str2);
        linearLayout.addView(textView);
        linearLayout.addView(editText);
        builder.setView(linearLayout).setPositiveButton(17039370, new AnonymousClass6(jsPromptResult, editText)).setNegativeButton(17039360, new AnonymousClass5(jsPromptResult)).setOnCancelListener(new AnonymousClass4(jsPromptResult)).create().show();
    }

    private final boolean zzlK() {
        return zzv.zzcJ().zza(this.zzGt.getContext().getPackageManager(), this.zzGt.getContext().getPackageName(), "android.permission.ACCESS_FINE_LOCATION") || zzv.zzcJ().zza(this.zzGt.getContext().getPackageManager(), this.zzGt.getContext().getPackageName(), "android.permission.ACCESS_COARSE_LOCATION");
    }

    public final void onCloseWindow(WebView webView) {
        if (webView instanceof zzqp) {
            zze zzkT = ((zzqp) webView).zzkT();
            if (zzkT == null) {
                zzpy.zzbe("Tried to close an AdWebView not associated with an overlay.");
                return;
            } else {
                zzkT.close();
                return;
            }
        }
        zzpy.zzbe("Tried to close a WebView that wasn't an AdWebView.");
    }

    public final boolean onConsoleMessage(ConsoleMessage consoleMessage) {
        String valueOf = String.valueOf(consoleMessage.message());
        String valueOf2 = String.valueOf(consoleMessage.sourceId());
        valueOf = new StringBuilder((String.valueOf(valueOf).length() + 19) + String.valueOf(valueOf2).length()).append("JS: ").append(valueOf).append(" (").append(valueOf2).append(":").append(consoleMessage.lineNumber()).append(")").toString();
        if (valueOf.contains("Application Cache")) {
            return super.onConsoleMessage(consoleMessage);
        }
        switch (AnonymousClass7.zzZK[consoleMessage.messageLevel().ordinal()]) {
            case 1:
                zzpy.e(valueOf);
                break;
            case 2:
                zzpy.zzbe(valueOf);
                break;
            case 3:
            case 4:
                zzpy.zzbd(valueOf);
                break;
            case 5:
                zzpy.zzbc(valueOf);
                break;
            default:
                zzpy.zzbd(valueOf);
                break;
        }
        return super.onConsoleMessage(consoleMessage);
    }

    public final boolean onCreateWindow(WebView webView, boolean z, boolean z2, Message message) {
        WebViewTransport webViewTransport = (WebViewTransport) message.obj;
        WebView webView2 = new WebView(webView.getContext());
        webView2.setWebViewClient(this.zzGt.zzkV());
        webViewTransport.setWebView(webView2);
        message.sendToTarget();
        return true;
    }

    public final void onExceededDatabaseQuota(String str, String str2, long j, long j2, long j3, QuotaUpdater quotaUpdater) {
        long j4 = 5242880 - j3;
        if (j4 <= 0) {
            quotaUpdater.updateQuota(j);
            return;
        }
        if (j == 0) {
            if (j2 > j4 || j2 > 1048576) {
                j2 = 0;
            }
        } else if (j2 == 0) {
            j2 = Math.min(Math.min(131072, j4) + j, 1048576);
        } else {
            if (j2 <= Math.min(1048576 - j, j4)) {
                j += j2;
            }
            j2 = j;
        }
        quotaUpdater.updateQuota(j2);
    }

    public final void onGeolocationPermissionsShowPrompt(String str, Callback callback) {
        if (callback != null) {
            callback.invoke(str, zzlK(), true);
        }
    }

    public final void onHideCustomView() {
        zze zzkT = this.zzGt.zzkT();
        if (zzkT == null) {
            zzpy.zzbe("Could not get ad overlay when hiding custom view.");
        } else {
            zzkT.zzhi();
        }
    }

    public final boolean onJsAlert(WebView webView, String str, String str2, JsResult jsResult) {
        return zza(zza(webView), str, str2, null, jsResult, null, false);
    }

    public final boolean onJsBeforeUnload(WebView webView, String str, String str2, JsResult jsResult) {
        return zza(zza(webView), str, str2, null, jsResult, null, false);
    }

    public final boolean onJsConfirm(WebView webView, String str, String str2, JsResult jsResult) {
        return zza(zza(webView), str, str2, null, jsResult, null, false);
    }

    public final boolean onJsPrompt(WebView webView, String str, String str2, String str3, JsPromptResult jsPromptResult) {
        return zza(zza(webView), str, str2, str3, null, jsPromptResult, true);
    }

    public final void onReachedMaxAppCacheSize(long j, long j2, QuotaUpdater quotaUpdater) {
        long j3 = 131072 + j;
        if (5242880 - j2 < j3) {
            quotaUpdater.updateQuota(0);
        } else {
            quotaUpdater.updateQuota(j3);
        }
    }

    public final void onShowCustomView(View view, CustomViewCallback customViewCallback) {
        zza(view, -1, customViewCallback);
    }

    protected final void zza(View view, int i, CustomViewCallback customViewCallback) {
        zze zzkT = this.zzGt.zzkT();
        if (zzkT == null) {
            zzpy.zzbe("Could not get ad overlay when showing custom view.");
            customViewCallback.onCustomViewHidden();
            return;
        }
        zzkT.zza(view, customViewCallback);
        zzkT.setRequestedOrientation(i);
    }

    protected boolean zza(Context context, String str, String str2, String str3, JsResult jsResult, JsPromptResult jsPromptResult, boolean z) {
        try {
            Builder builder = new Builder(context);
            builder.setTitle(str);
            if (z) {
                zza(context, builder, str2, str3, jsPromptResult);
            } else {
                zza(builder, str2, jsResult);
            }
        } catch (Throwable e) {
            zzpy.zzc("Fail to display Dialog.", e);
        }
        return true;
    }
}
