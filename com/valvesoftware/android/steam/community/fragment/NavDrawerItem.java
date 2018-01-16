package com.valvesoftware.android.steam.community.fragment;

import android.content.Intent;
import android.support.v4.widget.DrawerLayout;
import android.view.View;
import com.valvesoftware.android.steam.community.SteamCommunityApplication;
import java.util.ArrayList;
import java.util.List;

public class NavDrawerItem {
    protected final List<NavDrawerItem> children = new ArrayList();
    private final DrawerLayout drawerLayout;
    private final int groupId;
    private final int iconId;
    protected View m_view;
    private int nameId;
    private final Intent onClickIntent;

    public NavDrawerItem(int groupId, int iconId, int nameId, Intent onClickIntent, DrawerLayout drawerLayout) {
        this.groupId = groupId;
        this.iconId = iconId;
        this.nameId = nameId;
        this.drawerLayout = drawerLayout;
        this.onClickIntent = onClickIntent;
        if (this.onClickIntent != null) {
            this.onClickIntent.addFlags(268435456);
        }
    }

    public void onClick() {
        if (this.onClickIntent != null) {
            SteamCommunityApplication.GetInstance().startActivity(this.onClickIntent);
            if (this.drawerLayout != null) {
                this.drawerLayout.closeDrawers();
            }
        }
    }

    public int getNameId() {
        return this.nameId;
    }

    public void add(NavDrawerItem navDrawerItem) {
        this.children.add(navDrawerItem);
    }

    public int getChildrenCount() {
        if (this.children == null) {
            return 0;
        }
        int cChildren = 0;
        for (NavDrawerItem item : this.children) {
            if (!item.isHidden()) {
                cChildren++;
            }
        }
        return cChildren;
    }

    public NavDrawerItem getChild(int childPosition) {
        if (this.children == null) {
            return null;
        }
        int i = 0;
        for (NavDrawerItem item : this.children) {
            if (!item.isHidden()) {
                if (i == childPosition) {
                    return item;
                }
                i++;
            }
        }
        return null;
    }

    public boolean hasChildren() {
        return getChildrenCount() > 0;
    }

    public boolean isHidden() {
        return false;
    }

    public void setView(View view) {
        this.m_view = view;
    }
}
