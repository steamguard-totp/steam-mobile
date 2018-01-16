package com.valvesoftware.android.steam.community.fragment;

import android.content.Intent;
import android.support.v4.widget.DrawerLayout;
import android.view.View;
import android.widget.TextView;
import com.valvesoftware.android.steam.community.R;

public class NavDrawerNotificationItem extends NavDrawerItem {
    protected boolean m_hideWhenCountIsZero;
    protected int m_notificationCount;

    public static class NavDrawerGroupItem extends NavDrawerNotificationItem {
        public NavDrawerGroupItem(int groupId, int nameId, DrawerLayout drawerLayout) {
            super(groupId, nameId, null, drawerLayout, false);
        }

        public void setView(View view) {
            super.setView(view);
            setNotificationCount(this.m_notificationCount);
        }

        public void setNotificationCount(int notificationCount) {
            this.m_notificationCount = notificationCount;
            if (this.m_view != null) {
                TextView navNotificationCount = (TextView) this.m_view.findViewById(R.id.nav_item_notification_count);
                View navNotificationCtn = this.m_view.findViewById(R.id.nav_item_notification_count_ctn);
                if (navNotificationCount != null && navNotificationCtn != null) {
                    navNotificationCount.setText(Integer.valueOf(getNotificationCount()).toString());
                    if (this.m_notificationCount > 0) {
                        navNotificationCtn.setVisibility(0);
                    } else {
                        navNotificationCtn.setVisibility(8);
                    }
                }
            }
        }
    }

    public NavDrawerNotificationItem(int groupId, int nameId, Intent onClickIntent, DrawerLayout drawerLayout, boolean hideWhenCountIsZero) {
        super(groupId, 0, nameId, onClickIntent, drawerLayout);
        this.m_hideWhenCountIsZero = hideWhenCountIsZero;
    }

    public void setNotificationCount(int notificationCount) {
        this.m_notificationCount = notificationCount;
        if (this.m_view != null) {
            TextView navItemName = (TextView) this.m_view.findViewById(R.id.nav_item_name);
            navItemName.setText(getNameId());
            navItemName.append(" ");
            navItemName.append(Integer.valueOf(getNotificationCount()).toString());
        }
    }

    public int getNotificationCount() {
        return this.m_notificationCount;
    }

    public boolean isHidden() {
        return this.m_hideWhenCountIsZero && this.m_notificationCount == 0;
    }
}
