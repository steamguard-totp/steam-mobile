package com.valvesoftware.android.steam.community.views;

import android.app.Activity;
import android.app.NotificationManager;
import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.Color;
import android.net.Uri;
import android.net.http.SslCertificate;
import android.net.http.SslError;
import android.os.AsyncTask;
import android.os.Build.VERSION;
import android.os.Handler;
import android.support.v4.app.Fragment;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnTouchListener;
import android.webkit.ConsoleMessage;
import android.webkit.JavascriptInterface;
import android.webkit.JsResult;
import android.webkit.SslErrorHandler;
import android.webkit.ValueCallback;
import android.webkit.WebChromeClient;
import android.webkit.WebChromeClient.FileChooserParams;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.valvesoftware.android.steam.community.Config;
import com.valvesoftware.android.steam.community.Config.SteamUniverse;
import com.valvesoftware.android.steam.community.LoggedInUserAccountInfo;
import com.valvesoftware.android.steam.community.NetErrorTranslator;
import com.valvesoftware.android.steam.community.R;
import com.valvesoftware.android.steam.community.SettingInfo;
import com.valvesoftware.android.steam.community.SettingInfo.AccessRight;
import com.valvesoftware.android.steam.community.SettingInfo.RadioSelectorItem;
import com.valvesoftware.android.steam.community.SteamAppIntents;
import com.valvesoftware.android.steam.community.SteamAppUri;
import com.valvesoftware.android.steam.community.SteamCommunityApplication;
import com.valvesoftware.android.steam.community.SteamUriHandler;
import com.valvesoftware.android.steam.community.SteamUriHandler.Command;
import com.valvesoftware.android.steam.community.SteamUriHandler.CommandProperty;
import com.valvesoftware.android.steam.community.SteamUriHandler.Result;
import com.valvesoftware.android.steam.community.SteamguardState;
import com.valvesoftware.android.steam.community.SteamguardState.Completion;
import com.valvesoftware.android.steam.community.SteamguardState.Scheme;
import com.valvesoftware.android.steam.community.TwoFactorToken;
import com.valvesoftware.android.steam.community.activity.ActivityHelper;
import com.valvesoftware.android.steam.community.activity.BaseActivity;
import com.valvesoftware.android.steam.community.activity.MainActivity;
import com.valvesoftware.android.steam.community.activity.PaypalUriActivity;
import com.valvesoftware.android.steam.community.fragment.LoginFragment;
import com.valvesoftware.android.steam.community.fragment.SettingsFragment.RadioSelectorItemOnClickListener;
import com.valvesoftware.android.steam.community.fragment.SteamguardFragmentWeb;
import com.valvesoftware.android.steam.community.fragment.WebViewFragment;
import java.io.BufferedOutputStream;
import java.io.ByteArrayInputStream;
import java.io.InputStream;
import java.io.OutputStream;
import java.lang.ref.WeakReference;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLDecoder;
import java.net.URLEncoder;
import java.security.cert.Certificate;
import java.security.cert.CertificateException;
import java.security.cert.CertificateFactory;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Locale;

public class SteamWebView extends WebView {
    public static ValueCallback<Uri> m_FilePathCallback = null;
    public static ValueCallback<Uri[]> m_MultiFilePathCallback = null;
    public static ArrayList<String> m_arrayConsoleLog = new ArrayList();
    private String mJavascriptAsyncReturnCode;
    private String mJavascriptAsyncReturnStatus;
    private String mJavascriptAsyncReturnValue;
    private SteamguardJavascriptHandler m_steamguardJavascriptHandler;
    private Object owner;

    private class ReportErrorTask extends AsyncTask<String, Void, Void> {
        private ReportErrorTask() {
        }

        protected Void doInBackground(String... error) {
            try {
                HttpURLConnection clientReport = (HttpURLConnection) new URL("https://steamcommunity.com/steamguard/reporterror").openConnection();
                clientReport.setRequestMethod("POST");
                clientReport.setDoOutput(true);
                OutputStream outputPost = new BufferedOutputStream(clientReport.getOutputStream());
                outputPost.write(String.format(Locale.US, "op=%s&e=%s", new Object[]{URLEncoder.encode("AndroidLogin", charset), URLEncoder.encode(error[0], "UTF-8")}).getBytes("UTF-8"));
                outputPost.flush();
                clientReport.getInputStream();
                outputPost.close();
                clientReport.disconnect();
            } catch (Exception e) {
                "Failed to report console messages: " + e.toString();
            }
            return null;
        }
    }

    private class SteamWebChromeClient extends WebChromeClient {
        private SteamWebChromeClient() {
        }

        public void onProgressChanged(WebView view, int newProgress) {
            super.onProgressChanged(view, newProgress);
            "onProgressChanged: " + newProgress;
            if (newProgress > 70) {
                SteamWebView.this.requestFocusWrapper();
            }
            if (newProgress > 99) {
                SteamWebView.this.hideProgressIndicator();
            }
        }

        public boolean onJsAlert(WebView view, String url, String message, JsResult result) {
            return super.onJsAlert(view, url, message, result);
        }

        public boolean onConsoleMessage(ConsoleMessage consoleMessage) {
            if (SteamWebView.m_arrayConsoleLog.size() < 100) {
                SteamWebView.m_arrayConsoleLog.add(consoleMessage.message());
            }
            consoleMessage.message();
            return true;
        }

        public void openFileChooser(ValueCallback<Uri> filePathCallback) {
            openFileChooser(filePathCallback, null, null);
        }

        public void openFileChooser(ValueCallback<Uri> filePathCallback, String acceptType) {
            openFileChooser(filePathCallback, acceptType, null);
        }

        public void openFileChooser(ValueCallback<Uri> filePathCallback, String acceptType, String capture) {
            if (SteamWebView.m_FilePathCallback != null) {
                SteamWebView.m_FilePathCallback.onReceiveValue(null);
            }
            SteamWebView.m_FilePathCallback = filePathCallback;
            Intent i = new Intent("android.intent.action.GET_CONTENT");
            i.addCategory("android.intent.category.OPENABLE");
            i.setType("image/*");
            try {
                SteamWebView.this.getActivity().startActivityForResult(Intent.createChooser(i, "File Chooser"), 1001);
            } catch (Exception e) {
            }
        }

        public boolean onShowFileChooser(WebView webView, ValueCallback<Uri[]> filePathCallback, FileChooserParams fileChooserParams) {
            if (VERSION.SDK_INT < 21) {
                return super.onShowFileChooser(webView, filePathCallback, fileChooserParams);
            }
            if (SteamWebView.m_MultiFilePathCallback != null) {
                SteamWebView.m_MultiFilePathCallback.onReceiveValue(null);
            }
            SteamWebView.m_MultiFilePathCallback = filePathCallback;
            Intent intent = null;
            if (VERSION.SDK_INT >= 21) {
                intent = fileChooserParams.createIntent();
            }
            try {
                SteamWebView.this.getActivity().startActivityForResult(intent, 1002);
                return true;
            } catch (Exception e) {
                return false;
            }
        }
    }

    private class SteamWebViewClient extends WebViewClient {
        private Handler m_backgroundHandler;
        private Result m_loginContext;
        private WeakReference<WebView> m_urlWebView;

        private SteamWebViewClient() {
            this.m_backgroundHandler = new Handler();
        }

        private void launchPayPalAuth(String redirectUrl) {
            Activity activity = SteamWebView.this.getActivity();
            if ((activity instanceof MainActivity) && ActivityHelper.fragmentOrActivityIsActive(activity)) {
                if (SteamWebView.this.owner instanceof WebViewFragment) {
                    ((WebViewFragment) SteamWebView.this.owner).setInMiddleOfProcessing(true);
                }
                "Launching PayPal auth intent " + redirectUrl;
                ((MainActivity) activity).readyForPaypalComplete(SteamWebView.this);
                SteamWebView.this.getActivity().startActivityForResult(new Intent().setData(SteamAppUri.createSteamAppWebUri(redirectUrl)).setAction("android.intent.action.VIEW").setClass(SteamWebView.this.getActivity(), PaypalUriActivity.class), 1000);
            }
        }

        public boolean shouldOverrideUrlLoading(WebView view, String url) {
            if (url.startsWith("steammobile://") && SteamWebView.this.getContext() == null) {
                return true;
            }
            if (url.startsWith("otpauth://")) {
                return false;
            }
            if (url.startsWith("steammobile://")) {
                Result result = SteamUriHandler.HandleSteamURI(Uri.parse(url));
                if (result.handled) {
                    SteamguardState sgState;
                    switch (result.command) {
                        case opencategoryurl:
                        case openurl:
                            String decodedTargetUriStr = Uri.decode(result.getProperty(CommandProperty.url));
                            if (!SteamWebView.isStoreLaunchAuthPage(decodedTargetUriStr)) {
                                SteamWebView.this.getContext().startActivity(SteamAppIntents.viewWebPage(SteamWebView.this.getContext(), decodedTargetUriStr));
                                break;
                            }
                            launchPayPalAuth(decodedTargetUriStr);
                            break;
                        case openexternalurl:
                            try {
                                SteamWebView.this.getActivity().startActivity(new Intent("android.intent.action.VIEW", Uri.parse(result.getProperty(CommandProperty.url))));
                                break;
                            } catch (Exception e) {
                                break;
                            }
                        case mobileloginsucceeded:
                            if (SteamWebView.this.owner instanceof LoginFragment) {
                                ((LoginFragment) SteamWebView.this.owner).OnMobileLoginSucceeded(result);
                                break;
                            }
                            break;
                        case reloadpage:
                            SteamWebView.this.reload();
                            break;
                        case login:
                            this.m_urlWebView = new WeakReference(view);
                            this.m_loginContext = result;
                            SteamWebView.this.getActivity().startActivity(SteamAppIntents.loginIntent(SteamWebView.this.getActivity()));
                            break;
                        case closethis:
                            Intent resultIntent = SteamWebView.this.getActivity().getIntent();
                            resultIntent.putExtra(CommandProperty.call.toString(), result.getProperty(CommandProperty.call));
                            resultIntent.setAction("com.valvesoftware.android.steam.community.intent.action.WEBVIEW_RESULT");
                            SteamWebView.this.getActivity().setResult(-1, resultIntent);
                            SteamWebView.this.getActivity().finish();
                            break;
                        case notfound:
                            SteamWebView.this.setViewContentsShowFailure("steammobile://" + Command.reloadpage.toString(), SteamCommunityApplication.GetInstance().getString(R.string.Web_Error_Reload));
                            break;
                        case settitle:
                            String title = result.getProperty(CommandProperty.title);
                            if ((SteamWebView.this.owner == null || !(SteamWebView.this.owner instanceof Fragment) || ActivityHelper.fragmentIsActive((Fragment) SteamWebView.this.owner)) && title != null) {
                                try {
                                    SteamWebView.this.getActivity().setTitle(URLDecoder.decode(title));
                                    break;
                                } catch (Exception e2) {
                                    break;
                                }
                            }
                        case chat:
                            SteamWebView.this.getContext().startActivity(SteamAppIntents.chatIntent(SteamWebView.this.getContext(), result.getProperty(CommandProperty.steamid)));
                            break;
                        case twofactorcode:
                            "Page wants two-factor code for GID " + result.getProperty(CommandProperty.gid);
                            if (SteamWebView.this.isLoginPage() || SteamWebView.this.isManagePhonePage() || SteamWebView.this.isManageTwofactorPage()) {
                                sgState = SteamguardState.steamguardStateForGID(result.getProperty(CommandProperty.gid));
                                if (sgState == null) {
                                    SteamWebView.this.m_steamguardJavascriptHandler.setJavascriptResultError(null, -1);
                                    break;
                                }
                                TwoFactorToken twoFactorToken = sgState.getTwoFactorToken();
                                if (twoFactorToken == null) {
                                    SteamWebView.this.m_steamguardJavascriptHandler.setJavascriptResultError(null, -1);
                                    break;
                                }
                                String twoFactorCode = twoFactorToken.generateSteamGuardCode();
                                "Returning two-factor code " + twoFactorCode;
                                SteamWebView.this.m_steamguardJavascriptHandler.setJavascriptResultOkay(twoFactorCode);
                                break;
                            }
                        case steamguardset:
                            if (SteamWebView.this.isSteamguardPage()) {
                                String schemeString = result.getProperty(CommandProperty.scheme);
                                sgState = SteamguardState.steamguardStateForLoggedInUser();
                                Scheme scheme = SteamguardState.stringToScheme(schemeString);
                                String smsPhoneId = result.getProperty(CommandProperty.ph);
                                if (scheme != null) {
                                    sgState.startSetScheme(scheme, smsPhoneId, new Completion() {
                                        public void success() {
                                            SteamWebView.this.m_steamguardJavascriptHandler.setJavascriptResultOkay(null);
                                        }

                                        public void failure(int errorCode, String optDescription) {
                                            SteamWebView.this.m_steamguardJavascriptHandler.setJavascriptResultError(optDescription, errorCode);
                                        }
                                    });
                                    break;
                                }
                                SteamWebView.this.m_steamguardJavascriptHandler.setJavascriptResultError("Internal error, bad Steamguard token type", -1);
                                break;
                            }
                            break;
                        case steamguardvalidate:
                            if (SteamWebView.this.isSteamguardPage()) {
                                SteamguardState.steamguardStateForLoggedInUser().finalizeAddTwoFactor(result.getProperty(CommandProperty.code), new Completion() {
                                    public void success() {
                                        SteamWebView.this.m_steamguardJavascriptHandler.setJavascriptResultOkay(null);
                                    }

                                    public void failure(int errorCode, String optDescription) {
                                        SteamWebView.this.m_steamguardJavascriptHandler.setJavascriptResultError(optDescription, errorCode);
                                    }
                                });
                                break;
                            }
                            break;
                        case steamguardsendemail:
                            if (SteamWebView.this.isSteamguardPage()) {
                                SteamguardState.steamguardStateForLoggedInUser().sendActivationCodeEmail();
                                SteamWebView.this.m_steamguardJavascriptHandler.setJavascriptResultOkay(null);
                                break;
                            }
                            break;
                        case steamguardgetgid:
                            if (SteamWebView.this.isSteamguardPage() || SteamWebView.this.isLoginPage()) {
                                sgState = SteamguardState.steamguardStateForLoggedInUser();
                                if (sgState == null) {
                                    SteamWebView.this.m_steamguardJavascriptHandler.setJavascriptResultOkay(null);
                                    break;
                                }
                                SteamWebView.this.m_steamguardJavascriptHandler.setJavascriptResultOkay(sgState.getTokenGID());
                                break;
                            }
                        case steamguardsuppresstwofactorgid:
                            if (SteamWebView.this.isSteamguardPage() || SteamWebView.this.isLoginPage()) {
                                String gid = result.getProperty(CommandProperty.gid);
                                if ((gid.equals("hide") || gid.equals("show")) && SteamWebView.this.owner != null && (SteamWebView.this.owner instanceof SteamguardFragmentWeb)) {
                                    ((SteamguardFragmentWeb) SteamWebView.this.owner).setTwoFactorVisible(gid.equals("show"));
                                }
                                SteamWebView.this.m_steamguardJavascriptHandler.setJavascriptResultOkay(null);
                                break;
                            }
                        case steamguardgetrevocation:
                            if (SteamWebView.this.isSteamguardPage()) {
                                SteamWebView.this.m_steamguardJavascriptHandler.setJavascriptResultOkay(SteamguardState.steamguardStateForLoggedInUser().getRevocationCode());
                                break;
                            }
                            break;
                        case steamguardconfrefresh:
                            if (SteamWebView.this.isCommunityPage()) {
                                SteamWebView.this.m_steamguardJavascriptHandler.setJavascriptResultOkay(null);
                                break;
                            }
                            break;
                        case steamguardconfcount:
                            if (SteamWebView.this.isCommunityPage()) {
                                SteamWebView.this.m_steamguardJavascriptHandler.setJavascriptResultOkay("0");
                                break;
                            }
                            break;
                        case currentuser:
                            if (SteamWebView.this.isCommunityPage()) {
                                SteamWebView.this.m_steamguardJavascriptHandler.setJavascriptResultOkay("0");
                                break;
                            }
                            break;
                        case logout:
                            if (SteamWebView.this.isCommunityPage()) {
                                SteamWebView.this.m_steamguardJavascriptHandler.setJavascriptResultOkay(null);
                                break;
                            }
                            break;
                        case livetokens:
                            if (SteamWebView.this.isCommunityPage()) {
                                SteamWebView.this.m_steamguardJavascriptHandler.setJavascriptResultOkay(SteamguardState.hasLiveSteamguardStates() ? "1" : "0");
                                break;
                            }
                            break;
                        case steamguard:
                            if (SteamWebView.this.isLoginPage() || SteamWebView.this.isCommunityPage()) {
                                String op = result.getProperty(CommandProperty.op);
                                if (op == null || op.compareTo("setsecret") != 0) {
                                    if (op == null || op.compareTo("conftag") != 0 || !SteamWebView.this.isMobileConfirmationPage()) {
                                        SteamWebView.this.m_steamguardJavascriptHandler.setJavascriptResultError("", -1);
                                        break;
                                    }
                                    String hash = HandleGetConfirmationTag(result.getProperty(CommandProperty.arg1));
                                    if (hash == null) {
                                        SteamWebView.this.m_steamguardJavascriptHandler.setJavascriptResultError("", -1);
                                        break;
                                    }
                                    SteamWebView.this.m_steamguardJavascriptHandler.setJavascriptResultOkay(hash);
                                    break;
                                }
                                int errorCode = -1;
                                String base64String = result.getProperty(CommandProperty.arg1);
                                if (base64String != null) {
                                    errorCode = SteamguardState.installSecret(base64String);
                                }
                                if (errorCode != 0) {
                                    SteamWebView.this.m_steamguardJavascriptHandler.setJavascriptResultError("", errorCode);
                                    break;
                                }
                                SteamWebView.this.m_steamguardJavascriptHandler.setJavascriptResultOkay("");
                                break;
                            }
                            break;
                        case lostauth:
                            LoggedInUserAccountInfo.reacquireWGTokenFromServer(SteamWebView.this);
                            break;
                    }
                }
                return true;
            } else if (url.startsWith(Config.URL_COMMUNITY_BASE) || url.startsWith(Config.URL_COMMUNITY_BASE_INSECURE) || url.startsWith(Config.URL_STORE_BASE) || url.startsWith(Config.URL_STORE_BASE_INSECURE) || url.startsWith(Config.URL_HELP_BASE) || (SteamWebView.this.getActivity() instanceof PaypalUriActivity)) {
                if (SteamWebView.isStoreLaunchAuthPage(url)) {
                    "Launching PayPal auth " + url;
                    launchPayPalAuth(url);
                } else {
                    SteamWebView.this.requestFocusWrapper();
                    view.loadUrl(url);
                    SteamWebView.this.showProgressIndicator();
                }
                return true;
            } else {
                try {
                    "Opening URL " + url + " in external browser.";
                    SteamWebView.this.getActivity().startActivity(new Intent("android.intent.action.VIEW", Uri.parse(url)));
                } catch (Exception e3) {
                }
                return true;
            }
        }

        private String HandleGetConfirmationTag(String tag) {
            SteamguardState sgState = SteamguardState.steamguardStateForLoggedInUser();
            if (sgState == null || tag == null || tag.length() == 0) {
                return null;
            }
            return sgState.getTaggedConfirmationUrlParams(tag);
        }

        public void onReceivedError(WebView view, int errorCode, String description, String failingUrl) {
            "onReceivedError: " + description + " : " + failingUrl;
            if (SteamWebView.this.getContext() != null) {
                SteamWebView.this.setViewContentsShowFailure(failingUrl, description);
            }
        }

        public void onReceivedSslError(WebView view, SslErrorHandler handler, SslError error) {
            "onReceivedSslError: " + error.toString();
            if (SteamWebView.m_arrayConsoleLog.size() < 100) {
                SteamWebView.m_arrayConsoleLog.add(error.toString());
            }
            if (Config.STEAM_UNIVERSE_WEBPHP == SteamUniverse.Dev) {
                handler.proceed();
                return;
            }
            if (error.getCertificate().getIssuedBy().getOName().equals("Symantec Corporation")) {
                CertificateFactory cf;
                InputStream caInput;
                Certificate certificateExpected;
                Certificate certificateSymantec;
                try {
                    cf = CertificateFactory.getInstance("X.509");
                    caInput = SteamWebView.this.getResources().openRawResource(R.raw.a248eakamainet);
                    certificateExpected = cf.generateCertificate(caInput);
                    caInput.close();
                } catch (Exception e) {
                    certificateExpected = null;
                }
                try {
                    cf = CertificateFactory.getInstance("X.509");
                    caInput = SteamWebView.this.getResources().openRawResource(R.raw.symantec);
                    certificateSymantec = cf.generateCertificate(caInput);
                    caInput.close();
                } catch (Exception e2) {
                    certificateSymantec = null;
                }
                byte[] bytes = SslCertificate.saveState(error.getCertificate()).getByteArray("x509-certificate");
                if (bytes != null) {
                    Certificate cert;
                    try {
                        cert = CertificateFactory.getInstance("X.509").generateCertificate(new ByteArrayInputStream(bytes));
                    } catch (CertificateException e3) {
                        cert = null;
                    }
                    if (cert != null) {
                        if (certificateExpected != null && cert.getPublicKey().equals(certificateExpected.getPublicKey())) {
                            handler.proceed();
                            SteamWebView.m_arrayConsoleLog.add("Matched public key exactly, proceeding.");
                            return;
                        } else if (certificateSymantec != null) {
                            try {
                                cert.verify(certificateSymantec.getPublicKey());
                                handler.proceed();
                                SteamWebView.m_arrayConsoleLog.add("Signed by Symantec, proceeding.");
                                return;
                            } catch (Exception e4) {
                                if (SteamWebView.m_arrayConsoleLog.size() < 100) {
                                    SteamWebView.m_arrayConsoleLog.add("Caught exception: " + e4.toString());
                                }
                                super.onReceivedSslError(view, handler, error);
                                return;
                            }
                        }
                    }
                }
            } else if (SteamWebView.m_arrayConsoleLog.size() < 100) {
                SteamWebView.m_arrayConsoleLog.add("Not Symantec. Not proceeding.");
            }
            SettingInfo settingInfo = SteamCommunityApplication.GetInstance().GetSettingInfoDB().m_settingSslUntrustedPrompt;
            if (settingInfo.m_access == AccessRight.NONE) {
                handler.cancel();
            } else if (settingInfo.getRadioSelectorItemValue(SteamCommunityApplication.GetInstance().getApplicationContext()).value == -1) {
                handler.proceed();
            } else {
                final SslErrorHandler hdlrDelayed = handler;
                new RadioSelectorItemOnClickListener(SteamWebView.this.getActivity(), settingInfo, null) {
                    private SslErrorHandler m_hdlrDelayed = hdlrDelayed;

                    public void onSettingChanged(RadioSelectorItem sel) {
                        if (sel.value != 1) {
                            this.m_hdlrDelayed.proceed();
                        } else {
                            this.m_hdlrDelayed.cancel();
                        }
                    }
                }.onClick(null);
            }
        }

        public void onPageStarted(WebView view, String url, Bitmap favicon) {
            SteamWebView.this.setBlackBackground();
            if (url.startsWith(Config.URL_COMMUNITY_BASE + "/mobileconf/")) {
                ((NotificationManager) SteamWebView.this.getContext().getSystemService("notification")).cancel(4);
            }
        }

        public void onPageFinished(WebView view, String url) {
            this.m_backgroundHandler.postDelayed(new Runnable() {
                public void run() {
                    SteamWebView.this.setBackgroundColor(-1);
                }
            }, 500);
            SteamWebView.this.hideProgressIndicator();
            if (SteamWebView.this.isLoginPage() && SteamWebView.m_arrayConsoleLog.size() > 0) {
                String error = "Console messages (" + SteamWebView.m_arrayConsoleLog.size() + "): ";
                Iterator it = SteamWebView.m_arrayConsoleLog.iterator();
                while (it.hasNext()) {
                    error = error + ((String) it.next()) + "\n";
                }
                if (error.length() > 65535) {
                    error = error.substring(0, 65535);
                }
                try {
                    new ReportErrorTask().execute(new String[]{error});
                } catch (Exception e) {
                    "Failed to report console messages: " + e.toString();
                }
                "Page finished with " + SteamWebView.m_arrayConsoleLog.size() + " console messages.";
            }
            SteamWebView.m_arrayConsoleLog.clear();
        }
    }

    public class SteamguardJavascriptHandler {
        @JavascriptInterface
        public String getResultStatus() {
            return SteamWebView.this.mJavascriptAsyncReturnStatus;
        }

        @JavascriptInterface
        public String getResultValue() {
            String result = SteamWebView.this.mJavascriptAsyncReturnValue;
            setJavascriptResultBusy();
            return result;
        }

        @JavascriptInterface
        public String getResultCode() {
            return SteamWebView.this.mJavascriptAsyncReturnCode;
        }

        @JavascriptInterface
        public void setJavascriptResultBusy() {
            SteamWebView.this.mJavascriptAsyncReturnValue = "";
            SteamWebView.this.mJavascriptAsyncReturnStatus = "busy";
        }

        @JavascriptInterface
        public void setJavascriptResultOkay(String data) {
            if (data == null) {
                data = "";
            }
            SteamWebView.this.mJavascriptAsyncReturnValue = data;
            SteamWebView.this.mJavascriptAsyncReturnStatus = "ok";
        }

        @JavascriptInterface
        public void setJavascriptResultError(String message, int code) {
            if (message == null) {
                message = "";
            }
            SteamWebView.this.mJavascriptAsyncReturnValue = message;
            SteamWebView.this.mJavascriptAsyncReturnStatus = "error";
            SteamWebView.this.mJavascriptAsyncReturnCode = String.format(Locale.US, "%d", new Object[]{Integer.valueOf(code)});
        }
    }

    public SteamWebView(Context context) {
        this(context, null);
    }

    public SteamWebView(Context context, AttributeSet attrs) {
        this(context, attrs, 0);
    }

    public SteamWebView(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
        setupView();
    }

    public void setOwner(Object owner) {
        this.owner = owner;
    }

    private Activity getActivity() {
        return (Activity) getContext();
    }

    private boolean isLoginPage() {
        String url = getUrl();
        if (url == null) {
            return false;
        }
        return url.startsWith(Config.URL_COMMUNITY_BASE + "/mobilelogin");
    }

    private boolean isSteamguardPage() {
        String url = getUrl();
        if (url == null) {
            return false;
        }
        return url.startsWith(Config.URL_COMMUNITY_BASE + "/steamguard");
    }

    private boolean isManageTwofactorPage() {
        String url = getUrl();
        if (url == null) {
            return false;
        }
        return url.startsWith(Config.URL_STORE_BASE + "/twofactor/");
    }

    private boolean isManagePhonePage() {
        String url = getUrl();
        if (url == null) {
            return false;
        }
        url + "startsWith " + Config.URL_STORE_BASE + "/phone/";
        return url.startsWith(Config.URL_STORE_BASE + "/phone/");
    }

    private boolean isCommunityPage() {
        String url = getUrl();
        if (url == null) {
            return false;
        }
        if (url.startsWith(Config.URL_COMMUNITY_BASE) || getUrl().startsWith(Config.URL_COMMUNITY_BASE_INSECURE)) {
            return true;
        }
        return false;
    }

    private static boolean isStoreLaunchAuthPage(String url) {
        return (url.startsWith(Config.URL_STORE_BASE) || url.startsWith(Config.URL_STORE_BASE_INSECURE)) && (url.contains("/paypal/launchauth") || url.contains("/paypal/launchauth"));
    }

    public boolean isMobileConfirmationPage() {
        String url = getUrl();
        if (url == null) {
            return false;
        }
        return url.startsWith(Config.URL_COMMUNITY_BASE + "/mobileconf/");
    }

    public String getURL() {
        return super.getUrl();
    }

    protected void setTitle(String title) {
    }

    public void setBlackBackground() {
        if (VERSION.SDK_INT < 16) {
            setBackgroundColor(0);
        } else {
            setBackgroundColor(Color.argb(1, 0, 0, 0));
        }
    }

    protected void setupView() {
        setBlackBackground();
        setWebViewClient(new SteamWebViewClient());
        setWebChromeClient(new SteamWebChromeClient());
        if (!isInEditMode()) {
            getSettings().setJavaScriptEnabled(true);
            getSettings().setDomStorageEnabled(true);
            getSettings().setSupportZoom(true);
            getSettings().setBuiltInZoomControls(true);
            if (VERSION.SDK_INT >= 11) {
                getSettings().setDisplayZoomControls(false);
            }
            if (VERSION.SDK_INT >= 21) {
                getSettings().setMixedContentMode(2);
            }
            if (Config.STEAM_UNIVERSE_WEBPHP != SteamUniverse.Public && VERSION.SDK_INT >= 19) {
                WebView.setWebContentsDebuggingEnabled(true);
            }
            setScrollBarStyle(0);
            setHorizontalScrollBarEnabled(false);
            setFocusable(true);
            setFocusableInTouchMode(true);
            setOnTouchListener(new OnTouchListener() {
                public boolean onTouch(View v, MotionEvent event) {
                    switch (event.getAction()) {
                        case 0:
                        case 1:
                            if (!v.hasFocus()) {
                                if (!(v instanceof SteamWebView)) {
                                    v.requestFocus();
                                    break;
                                }
                                ((SteamWebView) v).requestFocusWrapper();
                                break;
                            }
                            break;
                    }
                    return false;
                }
            });
            this.m_steamguardJavascriptHandler = new SteamguardJavascriptHandler();
            addJavascriptInterface(this.m_steamguardJavascriptHandler, "SGHandler");
            requestFocusWrapper();
        }
    }

    public void reload() {
        showProgressIndicator();
        super.reload();
    }

    private void requestFocusWrapper() {
        if (this.owner == null || ActivityHelper.fragmentOrActivityIsActive(this.owner)) {
            requestFocus();
        }
    }

    public void loadUrl(String sUrl) {
        if (sUrl != null) {
            "loadUrl: " + sUrl;
            if (sUrl.startsWith("javascript:")) {
                super.loadUrl(sUrl);
            } else if (this.owner == null || ActivityHelper.fragmentOrActivityIsActive(this.owner)) {
                requestFocusWrapper();
                if (getActivity() instanceof PaypalUriActivity) {
                    ((PaypalUriActivity) getActivity()).SetBrowserBarLocation(sUrl);
                }
                super.loadUrl(sUrl);
                if (sUrl != null) {
                    showProgressIndicator();
                }
            }
        }
    }

    public void setViewContentsShowFailure(String hrefRetry, String description) {
        loadData("<html><head><META http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\"></head><body bgcolor=\"#181818\" text=\"#D6D6D6\" link=\"#FFFFFF\" alink=\"#FFFFFF\" vlink=\"#FFFFFF\"><br/><h2 align=\"center\">" + SteamCommunityApplication.GetInstance().getString(R.string.Web_Error_Title) + "</h2><p align=\"left\">" + NetErrorTranslator.translateError(description) + "</p><p align=\"left\"><small>" + description + "</small></p><p align=\"center\"><a href=\"" + hrefRetry + "\">" + SteamCommunityApplication.GetInstance().getString(R.string.Web_Error_Retry_Now) + "</a></p></body></html>", "text/html; charset=UTF-8", "utf-8");
    }

    public static String extractUrlFromOpenUrlUri(Uri uri) {
        String uriString = uri.toString();
        String keyPattern = "openurl?url=";
        if (uriString.indexOf(keyPattern) != -1) {
            return uriString.substring(uriString.indexOf(keyPattern) + keyPattern.length());
        }
        return null;
    }

    protected void showProgressIndicator() {
        if (getActivity() instanceof BaseActivity) {
            ((BaseActivity) getActivity()).showProgressIndicator();
        }
    }

    protected void hideProgressIndicator() {
        if (getActivity() instanceof BaseActivity) {
            ((BaseActivity) getActivity()).hideProgressIndicator();
        }
    }
}
