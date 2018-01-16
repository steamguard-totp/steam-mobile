package com.valvesoftware.android.steam.community.fragment;

import android.os.Build.VERSION;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import com.valvesoftware.android.steam.community.R;
import com.valvesoftware.android.steam.community.activity.MainActivity;
import com.valvesoftware.android.steam.community.views.SteamWebView;

public class WebViewFragment extends Fragment implements IBackButtonSupport {
    private boolean inMiddleOfProcessing = false;
    private boolean m_bWebViewPaused = false;
    protected SteamWebView m_webView;

    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        LinearLayout view = (LinearLayout) inflater.inflate(R.layout.webview_fragment, container, false);
        this.m_webView = (SteamWebView) view.findViewById(R.id.webView);
        this.m_webView.setOwner(this);
        return view;
    }

    public void onPause() {
        super.onPause();
        if (VERSION.SDK_INT >= 11) {
            this.m_webView.onPause();
            this.m_bWebViewPaused = true;
        }
    }

    public void onResume() {
        super.onResume();
        if (this.m_bWebViewPaused) {
            if (VERSION.SDK_INT >= 11) {
                this.m_webView.onResume();
            }
            this.m_bWebViewPaused = false;
        }
        String url = null;
        Bundle args = getArguments();
        if (args != null) {
            url = args.getString("url");
        }
        if (!(url == null || this.inMiddleOfProcessing || this.m_webView.getURL() != null)) {
            this.m_webView.loadUrl(url);
        }
        if (getActivity() instanceof MainActivity) {
            ((MainActivity) getActivity()).setRefreshButtonClickListener(new OnClickListener() {
                public void onClick(View view) {
                    WebViewFragment.this.m_webView.reload();
                }
            });
        }
    }

    public boolean canGoBack() {
        boolean bRet = this.m_webView.canGoBack();
        "canGoBack is returning " + bRet + " for URL " + this.m_webView.getUrl();
        return bRet;
    }

    public void goBack() {
        this.m_webView.goBack();
    }

    public void loadUrl(String url) {
        if (url != null) {
            this.m_webView.loadUrl(url);
        }
    }

    public void setInMiddleOfProcessing(boolean inMiddleOfProcessing) {
        this.inMiddleOfProcessing = inMiddleOfProcessing;
    }

    public boolean refreshConfirmationsPageIfActive() {
        if (!this.m_webView.isMobileConfirmationPage()) {
            return false;
        }
        this.m_webView.reload();
        return true;
    }
}
