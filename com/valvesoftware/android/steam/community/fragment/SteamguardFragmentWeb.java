package com.valvesoftware.android.steam.community.fragment;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import com.valvesoftware.android.steam.community.R;
import com.valvesoftware.android.steam.community.SteamAppUri;
import com.valvesoftware.android.steam.community.TimeCorrector;
import com.valvesoftware.android.steam.community.activity.ActivityHelper;
import com.valvesoftware.android.steam.community.views.SteamWebView;

public class SteamguardFragmentWeb extends Fragment implements IBackButtonSupport {
    private SteamWebView m_webView;
    private BroadcastReceiver receiver;
    private TwoFactorCodeListView twoFactorCodeListView;
    private FrameLayout twoFactorContainer;

    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        super.onCreateView(inflater, container, savedInstanceState);
        View view = inflater.inflate(R.layout.steamguard_fragment_web, container, false);
        this.twoFactorContainer = (FrameLayout) view.findViewById(R.id.twofactor_container);
        this.twoFactorCodeListView = (TwoFactorCodeListView) view.findViewById(R.id.two_factor_code_view);
        LinearLayout webViewContainer = (LinearLayout) view.findViewById(R.id.webview_container);
        this.m_webView = new SteamWebView(getActivity());
        this.m_webView.setOwner(this);
        webViewContainer.addView(this.m_webView);
        String strDefaultUrl = null;
        Bundle args = getArguments();
        if (args != null) {
            strDefaultUrl = args.getString("defaultUrl");
        }
        if (strDefaultUrl != null) {
            this.m_webView.loadUrl(strDefaultUrl);
        } else {
            this.m_webView.loadUrl(SteamAppUri.STEAMGUARD_PRECHANGE);
        }
        return view;
    }

    public void onResume() {
        super.onResume();
        this.receiver = new BroadcastReceiver() {
            public void onReceive(Context context, Intent intent) {
                SteamguardFragmentWeb.this.twoFactorCodeListView.syncFragments();
            }
        };
        TimeCorrector.getInstance().hintSync();
        if (ActivityHelper.fragmentIsActive(this)) {
            getActivity().setTitle(R.string.steamguard_steam_guard);
        }
        this.twoFactorCodeListView.syncFragments();
    }

    public void onPause() {
        super.onPause();
        this.twoFactorCodeListView.stop();
        unregister();
    }

    public boolean canGoBack() {
        return this.m_webView.canGoBack();
    }

    public void goBack() {
        this.m_webView.goBack();
    }

    public void setTwoFactorVisible(boolean bVisible) {
        boolean z = false;
        this.twoFactorContainer.setVisibility(bVisible ? 0 : 8);
        TwoFactorCodeListView twoFactorCodeListView = this.twoFactorCodeListView;
        if (!bVisible) {
            z = true;
        }
        twoFactorCodeListView.setInvisibleIfNoCodes(z);
        this.twoFactorCodeListView.syncFragments();
        if (bVisible) {
            TimeCorrector.getInstance().hintSync();
        }
    }

    private void unregister() {
        try {
            getActivity().getApplicationContext().unregisterReceiver(this.receiver);
        } catch (IllegalArgumentException e) {
        }
    }
}
