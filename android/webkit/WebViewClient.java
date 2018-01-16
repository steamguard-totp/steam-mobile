package android.webkit;

import android.graphics.Bitmap;
import android.net.http.SslError;
import android.os.Message;
import android.view.KeyEvent;

public class WebViewClient {
    public static final int ERROR_AUTHENTICATION = -4;
    public static final int ERROR_BAD_URL = -12;
    public static final int ERROR_CONNECT = -6;
    public static final int ERROR_FAILED_SSL_HANDSHAKE = -11;
    public static final int ERROR_FILE = -13;
    public static final int ERROR_FILE_NOT_FOUND = -14;
    public static final int ERROR_HOST_LOOKUP = -2;
    public static final int ERROR_IO = -7;
    public static final int ERROR_PROXY_AUTHENTICATION = -5;
    public static final int ERROR_REDIRECT_LOOP = -9;
    public static final int ERROR_TIMEOUT = -8;
    public static final int ERROR_TOO_MANY_REQUESTS = -15;
    public static final int ERROR_UNKNOWN = -1;
    public static final int ERROR_UNSUPPORTED_AUTH_SCHEME = -3;
    public static final int ERROR_UNSUPPORTED_SCHEME = -10;

    public boolean shouldOverrideUrlLoading(WebView view, String url) {
        return false;
    }

    public void onPageStarted(WebView view, String url, Bitmap favicon) {
    }

    public void onPageFinished(WebView view, String url) {
    }

    public void onLoadResource(WebView view, String url) {
    }

    public void onTooManyRedirects(WebView view, Message cancelMsg, Message continueMsg) {
        cancelMsg.sendToTarget();
    }

    public void onReceivedError(WebView view, int errorCode, String description, String failingUrl) {
    }

    public void onFormResubmission(WebView view, Message dontResend, Message resend) {
        dontResend.sendToTarget();
    }

    public void doUpdateVisitedHistory(WebView view, String url, boolean isReload) {
    }

    public void onReceivedSslError(WebView view, SslErrorHandler handler, SslError error) {
        handler.cancel();
    }

    public void onReceivedHttpAuthRequest(WebView view, HttpAuthHandler handler, String host, String realm) {
        handler.cancel();
    }

    public boolean shouldOverrideKeyEvent(WebView view, KeyEvent event) {
        return false;
    }

    public void onUnhandledKeyEvent(WebView view, KeyEvent event) {
    }

    public void onScaleChanged(WebView view, float oldScale, float newScale) {
    }
}
