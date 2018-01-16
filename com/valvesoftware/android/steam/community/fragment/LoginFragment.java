package com.valvesoftware.android.steam.community.fragment;

import android.os.Build.VERSION;
import android.os.Bundle;
import android.os.Handler;
import android.support.v4.app.Fragment;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnLayoutChangeListener;
import android.view.ViewGroup;
import com.valvesoftware.android.steam.community.Config;
import com.valvesoftware.android.steam.community.Config.WebAPI;
import com.valvesoftware.android.steam.community.LoggedInUserAccountInfo;
import com.valvesoftware.android.steam.community.LoggedInUserAccountInfo.LoginInformation;
import com.valvesoftware.android.steam.community.LoggedInUserAccountInfo.LoginState;
import com.valvesoftware.android.steam.community.R;
import com.valvesoftware.android.steam.community.SteamCommunityApplication;
import com.valvesoftware.android.steam.community.SteamUriHandler.CommandProperty;
import com.valvesoftware.android.steam.community.SteamUriHandler.Result;
import com.valvesoftware.android.steam.community.SteamguardState;
import com.valvesoftware.android.steam.community.activity.LoginChangedListener;
import com.valvesoftware.android.steam.community.views.SteamWebView;
import org.json.JSONException;
import org.json.JSONObject;

public class LoginFragment extends Fragment {
    private static final String loginUrl = (Config.URL_COMMUNITY_BASE + "/mobilelogin?oauth_client_id=" + WebAPI.OAUTH_CLIENT_ID + "&oauth_scope=read_profile%20write_profile%20read_client%20write_client");
    private boolean hidingTwoFactorCode = false;
    private LoginChangedListener loginChangedListener;
    private SteamWebView steamWebView;
    private Handler twoFactorCodeHandler = new Handler();
    private TwoFactorCodeListView twoFactorCodeListView;

    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        super.onCreateView(inflater, container, savedInstanceState);
        View view = inflater.inflate(R.layout.login, container, false);
        this.twoFactorCodeListView = (TwoFactorCodeListView) view.findViewById(R.id.login_twofactor_view);
        this.steamWebView = (SteamWebView) view.findViewById(R.id.webview);
        this.steamWebView.setOwner(this);
        if (VERSION.SDK_INT >= 11) {
            this.steamWebView.addOnLayoutChangeListener(new OnLayoutChangeListener() {
                public void onLayoutChange(View v, int left, final int top, int right, final int bottom, int oldLeft, int oldTop, int oldRight, int oldBottom) {
                    LoginFragment.this.twoFactorCodeHandler.post(new Runnable() {
                        public void run() {
                            int height = bottom - top;
                            if (height <= 50) {
                                if (LoginFragment.this.twoFactorCodeListView.getVisibility() == 0) {
                                    LoginFragment.this.twoFactorCodeListView.setVisibility(8);
                                    LoginFragment.this.hidingTwoFactorCode = true;
                                }
                            } else if (LoginFragment.this.hidingTwoFactorCode && height > LoginFragment.this.twoFactorCodeListView.getHeight() + 50) {
                                LoginFragment.this.hidingTwoFactorCode = false;
                                LoginFragment.this.twoFactorCodeListView.setVisibility(0);
                                LoginFragment.this.twoFactorCodeListView.syncFragments();
                            }
                        }
                    });
                }
            });
        }
        loadPage();
        return view;
    }

    public void OnMobileLoginSucceeded(Result result) {
        boolean bSuccess;
        try {
            JSONObject doc = new JSONObject();
            String steamID = result.getProperty(CommandProperty.steamid);
            doc.put("x_steamid", steamID);
            doc.put("access_token", result.getProperty(CommandProperty.oauth_token));
            doc.put("wgtoken", result.getProperty(CommandProperty.wgtoken));
            doc.put("wgtoken_secure", result.getProperty(CommandProperty.wgtoken_secure));
            String webCookie = result.getProperty(CommandProperty.webcookie, null);
            if (webCookie != null) {
                doc.put("x_webcookie", webCookie);
            }
            bSuccess = HandleLoginDocument(doc);
            if (bSuccess) {
                SteamguardState sgState = SteamguardState.steamguardStateForSteamID(steamID);
                if (sgState != null) {
                    sgState.startGetTwoFactorStatus();
                }
            }
        } catch (Exception e) {
            bSuccess = false;
        }
        if (!bSuccess) {
            loadPage();
        }
    }

    private void loadPage() {
        this.steamWebView.loadUrl(loginUrl);
    }

    private boolean HandleLoginDocument(JSONObject doc) throws JSONException {
        if (!doc.has("access_token") || !doc.has("x_steamid")) {
            return false;
        }
        if (LoggedInUserAccountInfo.isLoggedIn()) {
            LoggedInUserAccountInfo.logOut();
        }
        LoginInformation loginInformation = LoggedInUserAccountInfo.getLoginInformation();
        loginInformation.loginState = LoginState.LoggedIn;
        loginInformation.accessToken = doc.getString("access_token");
        loginInformation.steamId = doc.getString("x_steamid");
        loginInformation.wgtoken = doc.getString("wgtoken");
        loginInformation.wgtokenSecure = doc.getString("wgtoken_secure");
        LoggedInUserAccountInfo.setLoginInformation(loginInformation);
        SteamCommunityApplication.GetInstance().UpdateCachedLoginInformation();
        dispatchOnLoginChangedSuccessfully();
        return true;
    }

    private void dispatchOnLoginChangedSuccessfully() {
        if (this.loginChangedListener != null) {
            this.loginChangedListener.onLoginChangedSuccessfully();
        }
    }

    public void setLoginChangedListener(LoginChangedListener loginChangedListener) {
        this.loginChangedListener = loginChangedListener;
    }
}
