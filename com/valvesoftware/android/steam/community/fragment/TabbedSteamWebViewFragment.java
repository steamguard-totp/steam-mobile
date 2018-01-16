package com.valvesoftware.android.steam.community.fragment;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.RadioGroup;
import android.widget.RadioGroup.OnCheckedChangeListener;
import android.widget.ToggleButton;
import com.valvesoftware.android.steam.community.R;
import com.valvesoftware.android.steam.community.SteamAppUri;
import com.valvesoftware.android.steam.community.SteamCommunityApplication;
import com.valvesoftware.android.steam.community.activity.ActivityHelper;
import com.valvesoftware.android.steam.community.jsontranslators.UrlCategoryTranslator;
import com.valvesoftware.android.steam.community.model.UrlCategory;
import com.valvesoftware.android.steam.community.webrequests.Endpoints;
import com.valvesoftware.android.steam.community.webrequests.RequestBuilder;
import com.valvesoftware.android.steam.community.webrequests.RequestErrorInfo;
import com.valvesoftware.android.steam.community.webrequests.ResponseListener;
import java.util.List;
import org.json.JSONObject;

public class TabbedSteamWebViewFragment extends WebViewFragment {
    private static final int[] m_categoryButtons = new int[]{R.id.web_select_1, R.id.web_select_2, R.id.web_select_3, R.id.web_select_4, R.id.web_select_5, R.id.web_select_6, R.id.web_select_7, R.id.web_select_8};
    private LinearLayout btnLayout;
    private int m_selectedTab = 0;
    private final OnCheckedChangeListener m_toggleListener = new OnCheckedChangeListener() {
        public void onCheckedChanged(RadioGroup radioGroup, int i) {
            for (int j = 0; j < radioGroup.getChildCount(); j++) {
                ToggleButton view = (ToggleButton) radioGroup.getChildAt(j);
                view.setChecked(view.getId() == i);
                if (view.getId() == i) {
                    TabbedSteamWebViewFragment.this.m_selectedTab = j;
                }
            }
        }
    };

    private class ToggleOnClickListener implements OnClickListener {
        String m_clickUrl;

        ToggleOnClickListener(String clickUrl) {
            this.m_clickUrl = clickUrl;
        }

        public void onClick(View v) {
            ToggleButton button = (ToggleButton) v;
            RadioGroup group = (RadioGroup) v.getParent();
            boolean wasChecked = group.getCheckedRadioButtonId() == v.getId();
            group.check(v.getId());
            String url = this.m_clickUrl;
            if (wasChecked) {
                button.setChecked(true);
            } else {
                TabbedSteamWebViewFragment.this.m_webView.loadUrl(url);
            }
            TabbedSteamWebViewFragment.this.UpdateToggleButtonStyles();
        }
    }

    public void onResume() {
        super.onResume();
        Bundle args = getArguments();
        if (args != null) {
            String url = args.getString("url");
            if (url != null) {
                getCategoryUrlInfo(url);
                return;
            }
        }
        getCategoryUrlInfo(Endpoints.MOBILE_STOREFRONT_ACCOUNTDETAILS_CATEGORIES_URL);
    }

    private void setCategories(List<UrlCategory> categoryList) {
        if (ActivityHelper.fragmentIsActive(this) && categoryList != null && categoryList.size() > 0) {
            int i;
            if (this.m_selectedTab > categoryList.size() - 1) {
                this.m_selectedTab = categoryList.size() - 1;
            }
            this.btnLayout.setWeightSum((float) categoryList.size());
            LinearLayout linearLayout = this.btnLayout;
            if (categoryList.size() > 1) {
                i = 0;
            } else {
                i = 8;
            }
            linearLayout.setVisibility(i);
            int i2 = 0;
            while (i2 < categoryList.size()) {
                boolean z;
                ToggleButton catButton = (ToggleButton) getActivity().findViewById(m_categoryButtons[i2]);
                catButton.setVisibility(0);
                catButton.setText(((UrlCategory) categoryList.get(i2)).title);
                catButton.setTextOn(((UrlCategory) categoryList.get(i2)).title);
                catButton.setTextOff(((UrlCategory) categoryList.get(i2)).title);
                catButton.setOnClickListener(new ToggleOnClickListener(((UrlCategory) categoryList.get(i2)).url));
                if (i2 == this.m_selectedTab) {
                    z = true;
                } else {
                    z = false;
                }
                catButton.setChecked(z);
                i2++;
            }
            while (i2 < m_categoryButtons.length) {
                ((ToggleButton) getActivity().findViewById(m_categoryButtons[i2])).setVisibility(8);
                i2++;
            }
            UpdateToggleButtonStyles();
            this.m_webView.loadUrl(((UrlCategory) categoryList.get(this.m_selectedTab)).url);
        }
    }

    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        View view = super.onCreateView(inflater, container, savedInstanceState);
        ((RadioGroup) view.findViewById(R.id.toggleGroup)).setOnCheckedChangeListener(this.m_toggleListener);
        this.btnLayout = (LinearLayout) view.findViewById(R.id.web_select_layout);
        return view;
    }

    private void setCategoriesFailed() {
        this.m_webView.setViewContentsShowFailure(SteamAppUri.catalog().toString(), SteamCommunityApplication.GetInstance().getString(R.string.Web_Error_Reload));
    }

    private void UpdateToggleButtonStyles() {
        for (int m_categoryButton : m_categoryButtons) {
            ToggleButton catButton = (ToggleButton) getActivity().findViewById(m_categoryButton);
            if (catButton != null) {
                ActivityHelper.UpdateToggleButtonStyles(catButton);
            }
        }
    }

    private void getCategoryUrlInfo(String url) {
        RequestBuilder requestBuilder = Endpoints.getGenericJsonGetRequestBuilder(url);
        requestBuilder.setResponseListener(new ResponseListener() {
            public void onSuccess(JSONObject response) {
                if (response.optBoolean("success", false)) {
                    List<UrlCategory> categoryList = UrlCategoryTranslator.translate(response);
                    if (categoryList.isEmpty()) {
                        TabbedSteamWebViewFragment.this.setCategoriesFailed();
                        return;
                    } else {
                        TabbedSteamWebViewFragment.this.setCategories(categoryList);
                        return;
                    }
                }
                TabbedSteamWebViewFragment.this.setCategoriesFailed();
            }

            public void onError(RequestErrorInfo errorInfo) {
                TabbedSteamWebViewFragment.this.setCategoriesFailed();
            }
        });
        SteamCommunityApplication.GetInstance().sendRequest(requestBuilder);
    }
}
