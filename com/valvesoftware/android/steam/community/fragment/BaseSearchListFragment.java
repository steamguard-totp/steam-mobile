package com.valvesoftware.android.steam.community.fragment;

import android.app.Activity;
import android.os.Bundle;
import android.support.v4.app.ListFragment;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.TextView;
import com.valvesoftware.android.steam.community.R;
import com.valvesoftware.android.steam.community.SteamCommunityApplication;
import com.valvesoftware.android.steam.community.activity.ActivityHelper;
import com.valvesoftware.android.steam.community.activity.MainActivity;
import com.valvesoftware.android.steam.community.webrequests.RequestBuilder;

public abstract class BaseSearchListFragment extends ListFragment {
    protected BaseAdapter adapter;
    protected TextView footerBtnNext;
    protected TextView footerBtnPrev;
    protected View footerButtons;
    protected int numCurrentResults;
    protected int numTotalResults;
    protected TextView progressLabel;
    protected int queryOffset = 0;
    protected String queryString;

    protected abstract void query(String str);

    protected abstract void setTitleBarText(String str);

    protected abstract void startSearch();

    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        View view = inflater.inflate(R.layout.search_results_fragment, container, false);
        this.progressLabel = (TextView) view.findViewById(R.id.search_progress_label);
        this.footerButtons = view.findViewById(R.id.search_footer_buttons);
        this.footerButtons.setVisibility(8);
        this.footerBtnPrev = (TextView) view.findViewById(R.id.search_footer_button_prev);
        this.footerBtnNext = (TextView) view.findViewById(R.id.search_footer_button_next);
        this.footerBtnNext.setOnClickListener(new OnClickListener() {
            public void onClick(View view) {
                BaseSearchListFragment.this.queryOffset += 50;
                BaseSearchListFragment.this.query(BaseSearchListFragment.this.queryString);
            }
        });
        this.footerBtnPrev.setOnClickListener(new OnClickListener() {
            public void onClick(View view) {
                BaseSearchListFragment.this.queryOffset = Math.max(0, BaseSearchListFragment.this.queryOffset - 50);
                BaseSearchListFragment.this.query(BaseSearchListFragment.this.queryString);
            }
        });
        return view;
    }

    public void onResume() {
        super.onResume();
        startSearch();
    }

    protected MainActivity getBaseActivity() {
        Activity parentActivity = getActivity();
        if (parentActivity instanceof MainActivity) {
            return (MainActivity) parentActivity;
        }
        return null;
    }

    protected void sendRequest(RequestBuilder requestBuilder) {
        SteamCommunityApplication.GetInstance().sendRequest(requestBuilder);
    }

    protected void searchComplete() {
        if (ActivityHelper.fragmentOrActivityIsActive(getActivity())) {
            hideInProgress();
            displayResultsSummary();
            displayPagingElementsIfNeeded();
        }
    }

    protected void setNumTotalResults(int numTotalResults) {
        this.numTotalResults = numTotalResults;
    }

    protected void setNumCurrentResults(int numCurrentResults) {
        this.numCurrentResults = numCurrentResults;
    }

    protected void displayResultsSummary() {
        int resid = R.string.Search_Label_Results;
        if (this.numTotalResults <= 0) {
            resid = R.string.Search_Label_ResultsNone;
        } else if (this.numCurrentResults == this.numTotalResults) {
            resid = R.string.Search_Label_ResultsAll;
        }
        this.progressLabel.setText(getResources().getString(resid).replace("#", this.numCurrentResults == this.numTotalResults ? String.valueOf(this.numTotalResults) : String.valueOf(this.queryOffset + 1) + "-" + String.valueOf(this.queryOffset + this.numCurrentResults)).replace("$", String.valueOf(this.numTotalResults)));
        this.progressLabel.setVisibility(0);
    }

    protected void hideInProgress() {
        this.progressLabel.setVisibility(8);
    }

    protected void displayPagingElementsIfNeeded() {
        int i = 0;
        View view = this.footerButtons;
        int i2 = (hasNextPage() || hasPrevPage()) ? 0 : 8;
        view.setVisibility(i2);
        TextView textView = this.footerBtnNext;
        if (hasNextPage()) {
            i2 = 0;
        } else {
            i2 = 4;
        }
        textView.setVisibility(i2);
        TextView textView2 = this.footerBtnPrev;
        if (!hasPrevPage()) {
            i = 4;
        }
        textView2.setVisibility(i);
    }

    protected void displayInProgress() {
        this.progressLabel.setText(R.string.Search_Label_Searching);
        this.progressLabel.setVisibility(0);
    }

    private boolean hasNextPage() {
        return this.queryOffset <= this.numTotalResults + -50;
    }

    private boolean hasPrevPage() {
        return this.queryOffset > 0;
    }
}
