package com.valvesoftware.android.steam.community.activity;

import android.annotation.SuppressLint;
import android.app.AlertDialog.Builder;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.content.res.Configuration;
import android.graphics.Bitmap;
import android.graphics.PorterDuff.Mode;
import android.net.Uri;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.support.v4.app.Fragment;
import android.support.v4.view.MenuItemCompat;
import android.support.v4.widget.DrawerLayout;
import android.support.v4.widget.SearchViewCompat;
import android.support.v4.widget.SearchViewCompat.OnCloseListenerCompat;
import android.support.v4.widget.SearchViewCompat.OnQueryTextListenerCompat;
import android.support.v7.app.ActionBar;
import android.support.v7.app.ActionBarActivity;
import android.support.v7.app.ActionBarDrawerToggle;
import android.support.v7.widget.Toolbar;
import android.text.TextWatcher;
import android.util.Pair;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuItem;
import android.view.MenuItem.OnMenuItemClickListener;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.inputmethod.InputMethodManager;
import android.widget.ExpandableListView;
import android.widget.ExpandableListView.OnChildClickListener;
import android.widget.ExpandableListView.OnGroupClickListener;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.TextView;
import com.valvesoftware.android.steam.community.AndroidUtils;
import com.valvesoftware.android.steam.community.GcmRegistrar;
import com.valvesoftware.android.steam.community.LoggedInUserAccountInfo;
import com.valvesoftware.android.steam.community.NotificationCountUpdateListener;
import com.valvesoftware.android.steam.community.PersonaRepository;
import com.valvesoftware.android.steam.community.R;
import com.valvesoftware.android.steam.community.RepositoryCallback;
import com.valvesoftware.android.steam.community.SettingInfoDB;
import com.valvesoftware.android.steam.community.SteamAppIntents;
import com.valvesoftware.android.steam.community.SteamCommunityApplication;
import com.valvesoftware.android.steam.community.UmqCommunicator;
import com.valvesoftware.android.steam.community.fragment.NavDrawerItem;
import com.valvesoftware.android.steam.community.fragment.NavDrawerListAdapter;
import com.valvesoftware.android.steam.community.fragment.NavDrawerNotificationItem;
import com.valvesoftware.android.steam.community.fragment.NavDrawerNotificationItem.NavDrawerGroupItem;
import com.valvesoftware.android.steam.community.fragment.SearchBarFragment;
import com.valvesoftware.android.steam.community.model.Persona;
import com.valvesoftware.android.steam.community.model.UserNotificationCounts;
import com.valvesoftware.android.steam.community.model.UserNotificationCounts.EUserNotification;
import com.valvesoftware.android.steam.community.views.MenuBar;
import com.valvesoftware.android.steam.community.views.SteamMenuItem;
import com.valvesoftware.android.steam.community.webrequests.Endpoints;
import com.valvesoftware.android.steam.community.webrequests.ImageRequestBuilder;
import com.valvesoftware.android.steam.community.webrequests.ImageResponseListener;
import com.valvesoftware.android.steam.community.webrequests.RequestErrorInfo;
import com.valvesoftware.android.steam.community.webrequests.ResponseListener;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
import org.json.JSONObject;

public abstract class BaseActivity extends ActionBarActivity {
    protected int activityLayoutId = R.layout.main_activity;
    private DrawerLayout drawerLayout;
    private ExpandableListView expandableListView;
    private SteamMenuItem extraMenuItem;
    private String limitedMenuBarSettingKey = "limitedMenuBarNeeded";
    protected Persona loggedInUser;
    List<Pair<EUserNotification, NavDrawerNotificationItem>> m_listNotificationNavItems = new ArrayList();
    private MenuBar menuBar;
    private NavDrawerListAdapter navDrawerListAdapter;
    private LinearLayout navigationHeadersLayout;
    private View progressView;
    private OnClickListener refreshClickListener;
    private MenuItem refreshItem;
    private TextWatcher searchTextWatcher;
    private Handler signOutHandler = new Handler();
    private Boolean useLimitedMenuBar = null;
    protected final UserNotificationCounts userNotificationCounts = new UserNotificationCounts();

    private boolean useLimitedMenuBar() {
        if (this.useLimitedMenuBar == null) {
            this.useLimitedMenuBar = Boolean.valueOf(getSharedPreferences(BaseActivity.class.getSimpleName(), 0).getBoolean(this.limitedMenuBarSettingKey, false));
        }
        return this.useLimitedMenuBar.booleanValue();
    }

    private void setUseLimitedMenuBar(boolean value) {
        Editor editor = getSharedPreferences(BaseActivity.class.getSimpleName(), 0).edit();
        editor.putBoolean(this.limitedMenuBarSettingKey, value);
        editor.commit();
        this.useLimitedMenuBar = Boolean.valueOf(value);
    }

    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        Configuration config = getResources().getConfiguration();
        if (config.locale == null) {
            config.locale = Locale.getDefault();
        }
        if (isTaskRoot()) {
            UmqCommunicator.getInstance().setNotificationCountUpdateListener(new NotificationCountUpdateListener() {
                public void notificationCountsChanged(UserNotificationCounts notificationCounts) {
                    BaseActivity.this.userNotificationCounts.UpdateNotificationCounts(notificationCounts);
                    BaseActivity.this.onNotificationCountsChanged();
                }
            });
            LoggedInUserAccountInfo.updateLanguage();
            setContentView(this.activityLayoutId);
            this.navigationHeadersLayout = new LinearLayout(this);
            this.navigationHeadersLayout.setOrientation(1);
            setupView();
            if (LoggedInUserAccountInfo.getLoginSteamID() != null && LoggedInUserAccountInfo.getLoginSteamID().length() > 0) {
                new GcmRegistrar().registerWithGcm();
                return;
            }
            return;
        }
        finish();
    }

    @SuppressLint({"NewApi"})
    protected void setupView() {
        this.drawerLayout = (DrawerLayout) findViewById(R.id.drawer_layout);
        this.expandableListView = (ExpandableListView) findViewById(R.id.navigation);
        Toolbar toolbar = (Toolbar) findViewById(R.id.steam_toolbar);
        this.menuBar = (MenuBar) findViewById(R.id.menu_bar);
        this.progressView = ((LayoutInflater) getSystemService("layout_inflater")).inflate(R.layout.progress_layout, null);
        ((ProgressBar) this.progressView.findViewById(R.id.progressBar)).getIndeterminateDrawable().setColorFilter(R.color.holo_gray_light, Mode.DST);
        if (useLimitedMenuBar()) {
            toolbar.setVisibility(8);
            this.menuBar.setVisibility(0);
            this.menuBar.setHamburgerClickedListener(new OnClickListener() {
                public void onClick(View v) {
                    BaseActivity.this.drawerLayout.openDrawer(8388611);
                    BaseActivity.this.closeKeyboard();
                }
            });
        } else {
            try {
                setSupportActionBar(toolbar);
                getSupportActionBar().setDisplayShowHomeEnabled(true);
                getSupportActionBar();
                ActionBarDrawerToggle mDrawerToggle = new ActionBarDrawerToggle(this, this.drawerLayout, toolbar, R.string.app_name, R.string.app_name) {
                    public void onDrawerOpened(View drawerView) {
                        super.onDrawerOpened(drawerView);
                        BaseActivity.this.closeKeyboard();
                    }

                    public void onDrawerSlide(View drawerView, float slideOffset) {
                        super.onDrawerSlide(drawerView, 0.0f);
                    }
                };
                this.drawerLayout.setDrawerListener(mDrawerToggle);
                mDrawerToggle.syncState();
            } catch (Throwable t) {
                if (VERSION.SDK_INT > 15) {
                    setUseLimitedMenuBar(true);
                    recreate();
                    return;
                }
                RuntimeException runtimeException = new RuntimeException(t);
            }
        }
        setupNavDrawer();
        View v = findViewById(R.id.nav_header_view);
        if (v != null) {
            v.setOnClickListener(new OnClickListener() {
                public void onClick(View view) {
                    if (BaseActivity.this.drawerLayout.isDrawerOpen(BaseActivity.this.expandableListView)) {
                        BaseActivity.this.startActivity(SteamAppIntents.visitProfileIntent(BaseActivity.this, LoggedInUserAccountInfo.getLoginSteamID()));
                        BaseActivity.this.drawerLayout.closeDrawers();
                    }
                }
            });
        }
        String key = "NavigationDrawerShown";
        SharedPreferences sp = getSharedPreferences(MainActivity.class.getSimpleName(), 0);
        if (!sp.getBoolean(key, false)) {
            this.drawerLayout.openDrawer(8388611);
            Editor editor = sp.edit();
            editor.putBoolean(key, true);
            editor.commit();
        }
    }

    public boolean onPrepareOptionsMenu(Menu menu) {
        super.onPrepareOptionsMenu(menu);
        if (useLimitedMenuBar()) {
            if (this.searchTextWatcher != null) {
                setupSearchBarForLimitedMenuBar(this.searchTextWatcher);
            } else {
                this.menuBar.setSearchClickedListener(null);
            }
            this.menuBar.setRefreshClickedListener(this.refreshClickListener);
            if (this.extraMenuItem != null) {
                this.menuBar.setExtraMenuItem(this.extraMenuItem);
            }
        } else {
            menu.clear();
            if (this.searchTextWatcher != null) {
                MenuItem searchViewMenuItem = menu.add("");
                searchViewMenuItem.setIcon(R.drawable.ic_action_search);
                MenuItemCompat.setShowAsAction(searchViewMenuItem, 2);
                View searchView = SearchViewCompat.newSearchView(this);
                if (searchView != null) {
                    View v = searchView.findViewById(getResources().getIdentifier("android:id/search_button", null, null));
                    if (v != null && (v instanceof ImageView)) {
                        ((ImageView) v).setImageResource(R.drawable.ic_action_search);
                    }
                    SearchViewCompat.setOnQueryTextListener(searchView, new OnQueryTextListenerCompat() {
                        public boolean onQueryTextChange(String newText) {
                            if (BaseActivity.this.searchTextWatcher != null) {
                                if (newText == null) {
                                    newText = "";
                                }
                                BaseActivity.this.searchTextWatcher.onTextChanged(newText, 0, 0, newText.length());
                            }
                            return true;
                        }
                    });
                    SearchViewCompat.setOnCloseListener(searchView, new OnCloseListenerCompat() {
                        public boolean onClose() {
                            ActivityHelper.hideKeyboard(BaseActivity.this);
                            return false;
                        }
                    });
                    MenuItemCompat.setActionView(searchViewMenuItem, searchView);
                } else {
                    final SearchBarFragment searchBar = getSearchBar();
                    if (searchBar != null) {
                        searchViewMenuItem.setOnMenuItemClickListener(new OnMenuItemClickListener() {
                            public boolean onMenuItemClick(MenuItem item) {
                                searchBar.setSearchTextChangedListener(BaseActivity.this.searchTextWatcher);
                                searchBar.openSearch();
                                return true;
                            }
                        });
                    }
                }
            }
            if (this.refreshClickListener != null) {
                this.refreshItem = menu.add("");
                this.refreshItem.setIcon(R.drawable.ic_action_refresh);
                MenuItemCompat.setShowAsAction(this.refreshItem, 2);
                this.refreshItem.setOnMenuItemClickListener(new OnMenuItemClickListener() {
                    public boolean onMenuItemClick(MenuItem item) {
                        if (BaseActivity.this.refreshClickListener != null) {
                            BaseActivity.this.refreshClickListener.onClick(null);
                        }
                        return true;
                    }
                });
            }
            if (this.extraMenuItem != null) {
                MenuItem item = menu.add("");
                item.setIcon(this.extraMenuItem.iconResourceId);
                MenuItemCompat.setShowAsAction(item, 2);
                item.setOnMenuItemClickListener(new OnMenuItemClickListener() {
                    public boolean onMenuItemClick(MenuItem item) {
                        if (BaseActivity.this.extraMenuItem.onClickListener != null) {
                            BaseActivity.this.extraMenuItem.onClickListener.onClick(null);
                        }
                        return true;
                    }
                });
            }
        }
        return true;
    }

    protected boolean closeDrawer() {
        if (!this.drawerLayout.isDrawerOpen(8388611)) {
            return false;
        }
        this.drawerLayout.closeDrawers();
        return true;
    }

    public void showProgressIndicator() {
        if (!isFinishing()) {
            if (useLimitedMenuBar() && this.menuBar != null) {
                this.menuBar.showProgressIndicator();
            } else if (this.refreshItem != null && MenuItemCompat.getActionView(this.refreshItem) != this.progressView) {
                new Handler(Looper.getMainLooper()).post(new Runnable() {
                    public void run() {
                        MenuItemCompat.setActionView(BaseActivity.this.refreshItem, BaseActivity.this.progressView);
                    }
                });
            }
        }
    }

    public void hideProgressIndicator() {
        hideProgressIndicator(500);
    }

    protected void hideProgressIndicator(int delayMs) {
        if (!isFinishing()) {
            new Handler(Looper.getMainLooper()).postDelayed(new Runnable() {
                public void run() {
                    if (!BaseActivity.this.isFinishing()) {
                        if (BaseActivity.this.useLimitedMenuBar() && BaseActivity.this.menuBar != null) {
                            BaseActivity.this.menuBar.hideProgressIndicator();
                        } else if (BaseActivity.this.refreshItem != null) {
                            MenuItemCompat.setActionView(BaseActivity.this.refreshItem, null);
                        }
                    }
                }
            }, (long) delayMs);
        }
    }

    public void setRefreshButtonClickListener(OnClickListener refreshClickListener) {
        if (!useLimitedMenuBar() || this.menuBar == null) {
            this.refreshClickListener = refreshClickListener;
        } else {
            this.menuBar.setRefreshClickedListener(refreshClickListener);
        }
        invalidateOptionsMenu();
    }

    public void setSearchTextListener(TextWatcher searchTextWatcher) {
        this.searchTextWatcher = searchTextWatcher;
        if (useLimitedMenuBar()) {
            setupSearchBarForLimitedMenuBar(searchTextWatcher);
        } else {
            invalidateOptionsMenu();
        }
    }

    private void setupSearchBarForLimitedMenuBar(final TextWatcher searchTextWatcher) {
        if (searchTextWatcher == null) {
            this.menuBar.setSearchClickedListener(null);
            return;
        }
        final SearchBarFragment searchBar = getSearchBar();
        if (searchBar != null) {
            this.menuBar.setSearchClickedListener(new OnClickListener() {
                public void onClick(View item) {
                    searchBar.setSearchTextChangedListener(searchTextWatcher);
                    searchBar.openSearch();
                }
            });
        }
    }

    public void setExtraToolbarItem(SteamMenuItem toolbarItem) {
        this.extraMenuItem = toolbarItem;
        if (useLimitedMenuBar()) {
            this.menuBar.setExtraMenuItem(this.extraMenuItem);
        } else {
            invalidateOptionsMenu();
        }
    }

    public void setTitle(CharSequence t) {
        if (!useLimitedMenuBar() || this.menuBar == null) {
            super.setTitle(t);
        } else {
            this.menuBar.setTitle(t);
        }
    }

    protected void clearExtraMenuItems() {
        this.extraMenuItem = null;
        if (useLimitedMenuBar()) {
            this.menuBar.setExtraMenuItem(null);
        }
    }

    protected void clearTitleLabel() {
        setTitle("");
    }

    protected void clearSearchButtonListener() {
        this.searchTextWatcher = null;
        if (this.menuBar != null) {
            this.menuBar.setSearchClickedListener(null);
        }
    }

    protected void clearRefreshButtonListener() {
        setRefreshButtonClickListener(null);
    }

    protected void hideKeyboard() {
        ((InputMethodManager) getSystemService("input_method")).hideSoftInputFromWindow(findViewById(16908290).getWindowToken(), 0);
    }

    protected SearchBarFragment getSearchBar() {
        Fragment f = getSupportFragmentManager().findFragmentById(R.id.searchbar);
        if (f instanceof SearchBarFragment) {
            return (SearchBarFragment) f;
        }
        return null;
    }

    protected void hideSearchBar() {
        SearchBarFragment searchBar = getSearchBar();
        if (searchBar != null) {
            searchBar.closeSearch();
        }
    }

    private void setupNavHeader() {
        this.navigationHeadersLayout.removeAllViews();
        this.navigationHeadersLayout.addView(getNavigationDrawerHeader());
    }

    protected void setupNavDrawer() {
        setupNavHeader();
        this.expandableListView.addHeaderView(this.navigationHeadersLayout);
        refreshNavDrawer();
    }

    protected void refreshNavDrawer() {
        setupNavHeader();
        this.navDrawerListAdapter = new NavDrawerListAdapter(this, getNavigationItems());
        this.expandableListView.setAdapter(this.navDrawerListAdapter);
        this.expandableListView.setOnGroupExpandListener(new CustomOnGroupExpandListener(this.expandableListView));
        this.expandableListView.setOnChildClickListener(new OnChildClickListener() {
            public boolean onChildClick(ExpandableListView parent, View v, int groupPosition, int childPosition, long id) {
                v.setSelected(true);
                return false;
            }
        });
        this.expandableListView.setOnGroupClickListener(new OnGroupClickListener() {
            public boolean onGroupClick(ExpandableListView parent, View v, int groupPosition, long id) {
                v.setSelected(true);
                return false;
            }
        });
    }

    private View getNavigationDrawerHeader() {
        View headerView = View.inflate(this, R.layout.nav_header, null);
        ImageView avatarView = (ImageView) headerView.findViewById(R.id.avatar);
        TextView nameView = (TextView) headerView.findViewById(R.id.name);
        headerView.setOnClickListener(new OnClickListener() {
            public void onClick(View v) {
                BaseActivity.this.startActivity(SteamAppIntents.visitProfileIntent(BaseActivity.this, LoggedInUserAccountInfo.getLoginSteamID()));
                BaseActivity.this.closeDrawer();
            }
        });
        loadUserInfo(avatarView, nameView);
        return headerView;
    }

    private List<NavDrawerItem> getNavigationItems() {
        int i;
        Context context = SteamCommunityApplication.GetInstance();
        List<NavDrawerItem> navDrawerItems = new ArrayList();
        navDrawerItems.add(new NavDrawerItem(-1, R.drawable.ic_action_steamguard, R.string.Steam_Guard, SteamAppIntents.viewSteamGuard(context), this.drawerLayout));
        navDrawerItems.add(new NavDrawerItem(-1, R.drawable.ic_action_steamguard, R.string.Confirmations, SteamAppIntents.viewConfirmations(context), this.drawerLayout));
        navDrawerItems.add(new NavDrawerItem(R.string.menu_chat, 0, R.string.menu_chat, SteamAppIntents.viewFriendsList(context), this.drawerLayout));
        navDrawerItems.add(getNotificationNavigationItems(this.drawerLayout));
        NavDrawerItem storeGroup = new NavDrawerItem(R.string.Store_Caps, 0, R.string.Store, null, this.drawerLayout);
        storeGroup.add(new NavDrawerItem(R.string.Store_Caps, 0, R.string.Catalog, SteamAppIntents.viewCatalog(context), this.drawerLayout));
        storeGroup.add(new NavDrawerItem(R.string.Store_Caps, 0, R.string.Cart, SteamAppIntents.viewShoppingCart(context), this.drawerLayout));
        storeGroup.add(new NavDrawerItem(R.string.Store_Caps, 0, R.string.Search, SteamAppIntents.searchSteam(context), this.drawerLayout));
        storeGroup.add(new NavDrawerItem(R.string.Store_Caps, 0, R.string.Wishlist, SteamAppIntents.viewWishList(context), this.drawerLayout));
        storeGroup.add(new NavDrawerItem(R.string.Store_Caps, 0, R.string.Steam_News, SteamAppIntents.viewSteamNews(context), this.drawerLayout));
        storeGroup.add(new NavDrawerItem(R.string.Settings_Caps, 0, R.string.Account_Details, SteamAppIntents.viewAccountDetails(context), this.drawerLayout));
        navDrawerItems.add(storeGroup);
        NavDrawerItem communityGroup = new NavDrawerItem(R.string.Community_Caps, 0, R.string.menu_community, null, this.drawerLayout);
        communityGroup.add(new NavDrawerItem(R.string.Community_Caps, 0, R.string.menu_community_home, SteamAppIntents.communityURLIntent(context, "/"), this.drawerLayout));
        communityGroup.add(new NavDrawerItem(R.string.Community_Caps, 0, R.string.menu_community_discussions, SteamAppIntents.communityURLIntent(context, "/discussions/"), this.drawerLayout));
        communityGroup.add(new NavDrawerItem(R.string.Community_Caps, 0, R.string.menu_community_market, SteamAppIntents.communityURLIntent(context, "/market/"), this.drawerLayout));
        communityGroup.add(new NavDrawerItem(R.string.Community_Caps, 0, R.string.menu_community_broadcasts, SteamAppIntents.communityURLIntent(context, "/?subsection=broadcasts"), this.drawerLayout));
        navDrawerItems.add(communityGroup);
        NavDrawerItem personalGroup = new NavDrawerItem(R.string.menu_personal, 0, R.string.menu_personal, null, this.drawerLayout);
        personalGroup.add(new NavDrawerItem(R.string.menu_personal, 0, R.string.menu_personal_activity, SteamAppIntents.profileURLIntent(context, "/home/"), this.drawerLayout));
        personalGroup.add(new NavDrawerItem(R.string.menu_personal, 0, R.string.menu_personal_profile, SteamAppIntents.profileURLIntent(context, "/"), this.drawerLayout));
        personalGroup.add(new NavDrawerItem(R.string.menu_personal, 0, R.string.menu_personal_friends, SteamAppIntents.profileURLIntent(context, "/friends/"), this.drawerLayout));
        personalGroup.add(new NavDrawerItem(R.string.menu_personal, 0, R.string.menu_personal_groups, SteamAppIntents.profileURLIntent(context, "/groups/"), this.drawerLayout));
        personalGroup.add(new NavDrawerItem(R.string.menu_personal, 0, R.string.menu_personal_content, SteamAppIntents.profileURLIntent(context, "/screenshots/"), this.drawerLayout));
        personalGroup.add(new NavDrawerItem(R.string.menu_personal, 0, R.string.menu_personal_badges, SteamAppIntents.profileURLIntent(context, "/badges/"), this.drawerLayout));
        personalGroup.add(new NavDrawerItem(R.string.menu_personal, 0, R.string.menu_personal_inventory, SteamAppIntents.profileURLIntent(context, "/inventory/"), this.drawerLayout));
        navDrawerItems.add(personalGroup);
        navDrawerItems.add(new NavDrawerItem(R.string.Library, 0, R.string.Library, SteamAppIntents.viewLibrary(context), this.drawerLayout));
        navDrawerItems.add(new NavDrawerItem(R.string.menu_support, 0, R.string.menu_support, SteamAppIntents.helpURLIntent(context, "/"), this.drawerLayout));
        NavDrawerItem settingsGroup = new NavDrawerItem(R.string.Settings_Caps, 0, R.string.Settings, null, this.drawerLayout);
        settingsGroup.add(new NavDrawerItem(R.string.Settings_Caps, 0, R.string.ApplicationPreferences, SteamAppIntents.viewSettings(context), this.drawerLayout));
        if (LoggedInUserAccountInfo.dontLoginToChat()) {
            i = R.string.chat_go_online;
        } else {
            i = R.string.chat_go_offline;
        }
        settingsGroup.add(new NavDrawerItem(R.string.Settings_Caps, 0, i, null, this.drawerLayout) {
            public void onClick() {
                ResponseListener listener = new ResponseListener() {
                    public void onSuccess(JSONObject response) {
                        LoggedInUserAccountInfo.setDontLoginToChat(!LoggedInUserAccountInfo.dontLoginToChat());
                        if (BaseActivity.this.navDrawerListAdapter != null) {
                            BaseActivity.this.navDrawerListAdapter.notifyDataSetChanged();
                        }
                    }

                    public void onError(RequestErrorInfo errorInfo) {
                    }
                };
                UmqCommunicator umqCommunicator = UmqCommunicator.getInstance();
                if (LoggedInUserAccountInfo.dontLoginToChat()) {
                    umqCommunicator.loginToUmq(listener);
                    umqCommunicator.start();
                    return;
                }
                umqCommunicator.logOffFromUmq(listener);
            }

            public int getNameId() {
                return LoggedInUserAccountInfo.dontLoginToChat() ? R.string.chat_go_online : R.string.chat_go_offline;
            }
        });
        settingsGroup.add(new NavDrawerItem(R.string.Settings_Caps, 0, R.string.Sign_Out, null, this.drawerLayout) {
            public void onClick() {
                new Builder(BaseActivity.this).setTitle(R.string.Sign_Out).setIcon(17301543).setPositiveButton(17039379, new DialogInterface.OnClickListener() {
                    public void onClick(DialogInterface dialog, int whichButton) {
                        new GcmRegistrar().unregister();
                        BaseActivity.this.signOutHandler.postDelayed(new Runnable() {
                            public void run() {
                                UmqCommunicator.getInstance().signOutOfAppCompletely();
                                LoggedInUserAccountInfo.logOut();
                                BaseActivity.this.loggedInUser = null;
                                BaseActivity.this.refreshNavDrawer();
                                BaseActivity.this.finish();
                                Intent loginIntent = SteamAppIntents.loginIntent(SteamCommunityApplication.GetInstance());
                                loginIntent.addFlags(268435456);
                                BaseActivity.this.startActivity(loginIntent);
                            }
                        }, 500);
                    }
                }).setNegativeButton(17039369, null).show();
            }
        });
        navDrawerItems.add(settingsGroup);
        return navDrawerItems;
    }

    protected NavDrawerItem getNotificationNavigationItems(DrawerLayout drawerLayout) {
        Context context = SteamCommunityApplication.GetInstance();
        NavDrawerNotificationItem navDrawerGroupItem = new NavDrawerGroupItem(R.string.Notifications, R.string.Notifications, drawerLayout);
        registerNotificationDrawerItem(EUserNotification.k_EUserNotificationInvalid, navDrawerGroupItem);
        NavDrawerNotificationItem commentNotifications = new NavDrawerNotificationItem(R.string.Notifications, R.string.notification_comments, SteamAppIntents.notificationCommentsIntent(context), drawerLayout, false);
        registerNotificationDrawerItem(EUserNotification.k_EUserNotificationComment, commentNotifications);
        navDrawerGroupItem.add(commentNotifications);
        NavDrawerNotificationItem items = new NavDrawerNotificationItem(R.string.Notifications, R.string.notification_items, SteamAppIntents.notificationItemsIntent(context), drawerLayout, false);
        registerNotificationDrawerItem(EUserNotification.k_EUserNotificationItem, items);
        navDrawerGroupItem.add(items);
        NavDrawerNotificationItem invites = new NavDrawerNotificationItem(R.string.Notifications, R.string.notification_invites, SteamAppIntents.notificationInvitesIntent(context), drawerLayout, false);
        registerNotificationDrawerItem(EUserNotification.k_EUserNotificationFriendInvite, invites);
        navDrawerGroupItem.add(invites);
        NavDrawerNotificationItem gifts = new NavDrawerNotificationItem(R.string.Notifications, R.string.notification_gifts, SteamAppIntents.notificationGiftsIntent(context), drawerLayout, false);
        registerNotificationDrawerItem(EUserNotification.k_EUserNotificationGift, gifts);
        navDrawerGroupItem.add(gifts);
        NavDrawerNotificationItem tradeOffers = new NavDrawerNotificationItem(R.string.Notifications, R.string.notification_trade, SteamAppIntents.notificationTradeOffersIntent(context), drawerLayout, true);
        registerNotificationDrawerItem(EUserNotification.k_EUserNotificationTradeOffer, tradeOffers);
        navDrawerGroupItem.add(tradeOffers);
        NavDrawerNotificationItem offlineMessages = new NavDrawerNotificationItem(R.string.Notifications, R.string.notification_chat, SteamAppIntents.viewFriendsList(context), drawerLayout, true);
        registerNotificationDrawerItem(EUserNotification.k_EUserNotificationOfflineMessage, offlineMessages);
        navDrawerGroupItem.add(offlineMessages);
        NavDrawerNotificationItem asyncgame = new NavDrawerNotificationItem(R.string.Notifications, R.string.notification_asyncgameinvite, SteamAppIntents.notificationAsyncGameIntent(context), drawerLayout, true);
        registerNotificationDrawerItem(EUserNotification.k_EUserNotificationAsyncGameState, asyncgame);
        navDrawerGroupItem.add(asyncgame);
        NavDrawerNotificationItem moderatormessages = new NavDrawerNotificationItem(R.string.Notifications, R.string.notification_moderatormessages, SteamAppIntents.notificationModeratorMessageIntent(context), drawerLayout, true);
        registerNotificationDrawerItem(EUserNotification.k_EUserNotificationModeratorMessage, moderatormessages);
        navDrawerGroupItem.add(moderatormessages);
        NavDrawerNotificationItem helprequestreply = new NavDrawerNotificationItem(R.string.Notifications, R.string.notification_helprequestreply, SteamAppIntents.notificationHelpRequestReplyIntent(context), drawerLayout, true);
        registerNotificationDrawerItem(EUserNotification.k_EUserNotificationHelpRequestReply, helprequestreply);
        navDrawerGroupItem.add(helprequestreply);
        return navDrawerGroupItem;
    }

    protected void registerNotificationDrawerItem(EUserNotification eUserNotification, NavDrawerNotificationItem item) {
        if (eUserNotification == EUserNotification.k_EUserNotificationInvalid) {
            item.setNotificationCount(this.userNotificationCounts.GetTotalNotificationCount());
        } else {
            item.setNotificationCount(this.userNotificationCounts.GetNotificationCount(eUserNotification));
        }
        this.m_listNotificationNavItems.add(new Pair(eUserNotification, item));
    }

    protected void onNotificationCountsChanged() {
        boolean bNeedRefresh = false;
        int cTotalNotifications = this.userNotificationCounts.GetTotalNotificationCount();
        for (Pair<EUserNotification, NavDrawerNotificationItem> pair : this.m_listNotificationNavItems) {
            int count;
            if (pair.first == EUserNotification.k_EUserNotificationInvalid) {
                count = cTotalNotifications;
            } else {
                count = this.userNotificationCounts.GetNotificationCount((EUserNotification) pair.first);
            }
            boolean bWasHidden = ((NavDrawerNotificationItem) pair.second).isHidden();
            ((NavDrawerNotificationItem) pair.second).setNotificationCount(count);
            if (bWasHidden != ((NavDrawerNotificationItem) pair.second).isHidden()) {
                bNeedRefresh = true;
            }
        }
        if (bNeedRefresh) {
            this.expandableListView.setAdapter(this.navDrawerListAdapter);
        }
    }

    protected void showMenuAndActionBar() {
        if (useLimitedMenuBar()) {
            this.menuBar.setVisibility(0);
        } else {
            ActionBar supportActionBar = getSupportActionBar();
            if (supportActionBar != null) {
                supportActionBar.show();
            }
        }
        this.drawerLayout.setDrawerLockMode(0);
    }

    protected void hideMenuAndActionBar() {
        if (useLimitedMenuBar()) {
            this.menuBar.setVisibility(8);
        } else {
            ActionBar supportActionBar = getSupportActionBar();
            if (supportActionBar != null) {
                supportActionBar.hide();
            }
        }
        this.drawerLayout.setDrawerLockMode(1);
    }

    private void loadUserInfo(final ImageView avatarView, final TextView nameView) {
        if (this.loggedInUser != null) {
            AndroidUtils.setTextViewText(nameView, this.loggedInUser.personaName);
            loadAvatar(this.loggedInUser, avatarView);
        }
        if (LoggedInUserAccountInfo.getLoginSteamID() != null && LoggedInUserAccountInfo.getLoginSteamID().length() > 0) {
            PersonaRepository.getDetailedPersonaInfo(LoggedInUserAccountInfo.getLoginSteamID(), new RepositoryCallback<Persona>() {
                public void dataAvailable(Persona persona) {
                    BaseActivity.this.loggedInUser = persona;
                    AndroidUtils.setTextViewText(nameView, BaseActivity.this.loggedInUser.personaName);
                    BaseActivity.this.loadAvatar(BaseActivity.this.loggedInUser, avatarView);
                }

                public void end() {
                }
            });
        }
    }

    private void loadAvatar(Persona persona, final ImageView avatarView) {
        ImageRequestBuilder requestBuilder = Endpoints.getImageUrlRequestBuilder(persona.fullAvatarUrl);
        requestBuilder.setResponseListener(new ImageResponseListener() {
            public void onSuccess(Bitmap bitmap) {
                avatarView.setImageBitmap(bitmap);
            }
        });
        SteamCommunityApplication.GetInstance().sendRequest(requestBuilder);
    }

    private void closeKeyboard() {
        InputMethodManager inputMethodManager = (InputMethodManager) getSystemService("input_method");
        View view = getCurrentFocus();
        if (view != null) {
            inputMethodManager.hideSoftInputFromWindow(view.getWindowToken(), 0);
        }
    }

    protected void onActivityResult(int requestCode, int resultCode, Intent data) {
        if (data != null && requestCode == SettingInfoDB.ringToneSelectorRequestCode) {
            Uri uri = (Uri) data.getParcelableExtra("android.intent.extra.ringtone.PICKED_URI");
            if (uri != null) {
                SteamCommunityApplication.GetInstance().GetSettingInfoDB().m_settingRing.setValueAndCommit(SteamCommunityApplication.GetInstance(), uri.toString());
            }
        }
    }
}
