package com.valvesoftware.android.steam.community.fragment;

import android.os.Bundle;
import android.util.Log;
import com.valvesoftware.android.steam.community.R;
import com.valvesoftware.android.steam.community.activity.ActivityHelper;
import com.valvesoftware.android.steam.community.activity.MainActivity;
import com.valvesoftware.android.steam.community.jsontranslators.GroupTranslator;
import com.valvesoftware.android.steam.community.jsontranslators.SearchResultsTranslator;
import com.valvesoftware.android.steam.community.model.Group;
import com.valvesoftware.android.steam.community.model.SearchResults;
import com.valvesoftware.android.steam.community.webrequests.Endpoints;
import com.valvesoftware.android.steam.community.webrequests.RequestBuilder;
import com.valvesoftware.android.steam.community.webrequests.RequestErrorInfo;
import com.valvesoftware.android.steam.community.webrequests.ResponseListener;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import org.json.JSONObject;

public class GroupSearchFragment extends BaseSearchListFragment {
    private List<Group> searchResults = new ArrayList();

    private void display() {
        if (this.searchResults != null && ActivityHelper.fragmentOrActivityIsActive(getActivity())) {
            this.adapter = new GroupsListAdapter(this.searchResults, getActivity(), false);
            setListAdapter(this.adapter);
        }
    }

    protected void query(String query) {
        RequestBuilder requestBuilder = Endpoints.getGroupsSearchRequestBuilder(query, this.queryOffset, 50);
        requestBuilder.setResponseListener(new ResponseListener() {
            public void onSuccess(JSONObject response) {
                SearchResults searchResults = SearchResultsTranslator.translate(response);
                GroupSearchFragment.this.setNumTotalResults(searchResults.total);
                GroupSearchFragment.this.setNumCurrentResults(searchResults.getCurrentCount());
                GroupSearchFragment.this.getDetailedGroupInfo(searchResults.getResultIds());
            }

            public void onError(RequestErrorInfo errorInfo) {
                Log.e("error", "error processing data");
            }
        });
        sendRequest(requestBuilder);
    }

    protected void setTitleBarText(String query) {
        MainActivity mainActivity = getBaseActivity();
        if (mainActivity != null && ActivityHelper.fragmentIsActive(this)) {
            mainActivity.setTitle(getResources().getString(R.string.Search_Groups_Results).replace("#", query));
        }
    }

    protected void startSearch() {
        displayInProgress();
        Bundle args = getArguments();
        if (args != null) {
            String friendsSearchString = args.getString("groups");
            if (friendsSearchString != null) {
                this.queryString = friendsSearchString;
                setTitleBarText(this.queryString);
                query(this.queryString);
            }
        }
    }

    private void getDetailedGroupInfo(Collection<String> ids) {
        List<RequestBuilder> requestBuilders = Endpoints.getGroupSummariesRequestBuilder(ids);
        this.searchResults.clear();
        for (RequestBuilder requestBuilder : requestBuilders) {
            requestBuilder.setResponseListener(new ResponseListener() {
                public void onSuccess(JSONObject response) {
                    GroupSearchFragment.this.searchResults.addAll(GroupTranslator.translateList(response));
                    GroupSearchFragment.this.searchComplete();
                    GroupSearchFragment.this.display();
                }

                public void onError(RequestErrorInfo errorInfo) {
                    errorInfo.toString();
                    GroupSearchFragment.this.searchComplete();
                }
            });
            sendRequest(requestBuilder);
        }
    }
}
