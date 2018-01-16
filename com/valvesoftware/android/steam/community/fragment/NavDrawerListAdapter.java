package com.valvesoftware.android.steam.community.fragment;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.BaseExpandableListAdapter;
import android.widget.ImageView;
import android.widget.TextView;
import com.valvesoftware.android.steam.community.R;
import java.util.List;

public class NavDrawerListAdapter extends BaseExpandableListAdapter {
    private final Context context;
    private final LayoutInflater layoutInflater;
    private final List<NavDrawerItem> navigationItems;

    public NavDrawerListAdapter(Context context, List<NavDrawerItem> navigationItems) {
        this.context = context;
        this.navigationItems = navigationItems;
        this.layoutInflater = (LayoutInflater) context.getSystemService("layout_inflater");
    }

    public int getGroupCount() {
        return this.navigationItems.size();
    }

    public int getChildrenCount(int groupPosition) {
        if (groupPosition >= this.navigationItems.size()) {
            return 0;
        }
        return ((NavDrawerItem) this.navigationItems.get(groupPosition)).getChildrenCount();
    }

    public NavDrawerItem getGroup(int groupPosition) {
        if (groupPosition >= this.navigationItems.size()) {
            return null;
        }
        return (NavDrawerItem) this.navigationItems.get(groupPosition);
    }

    public NavDrawerItem getChild(int groupPosition, int childPosition) {
        if (groupPosition >= this.navigationItems.size()) {
            return null;
        }
        NavDrawerItem group = (NavDrawerItem) this.navigationItems.get(groupPosition);
        if (group == null || childPosition >= group.getChildrenCount()) {
            return null;
        }
        return group.getChild(childPosition);
    }

    public long getGroupId(int groupPosition) {
        return (long) groupPosition;
    }

    public long getChildId(int groupPosition, int childPosition) {
        return (long) childPosition;
    }

    public boolean hasStableIds() {
        return false;
    }

    public View getGroupView(final int groupPosition, boolean isExpanded, View convertView, ViewGroup parent) {
        View v = convertView;
        final NavDrawerItem current = getGroup(groupPosition);
        if (v == null) {
            v = this.layoutInflater.inflate(R.layout.nav_group_list_item, null);
        } else {
            NavDrawerItem old = (NavDrawerItem) v.getTag();
            if (old != null) {
                old.setView(null);
            }
            View navNotificationCtn = v.findViewById(R.id.nav_item_notification_count_ctn);
            if (navNotificationCtn != null) {
                navNotificationCtn.setVisibility(8);
            }
        }
        v.setTag(current);
        current.setView(v);
        TextView navItemName = (TextView) v.findViewById(R.id.nav_item_name);
        ImageView expandCollapseIcon = (ImageView) v.findViewById(R.id.group_expand_collapse_icon);
        if (current.hasChildren()) {
            v.setClickable(false);
        } else {
            v.setOnClickListener(new OnClickListener() {
                public void onClick(View view) {
                    String.format("position: %d ", new Object[]{Integer.valueOf(groupPosition)}) + NavDrawerListAdapter.this.context.getResources().getString(current.getNameId());
                    current.onClick();
                }
            });
        }
        if (current.hasChildren()) {
            if (isExpanded) {
                expandCollapseIcon.setImageResource(R.drawable.ic_action_expand_less);
            } else {
                expandCollapseIcon.setImageResource(R.drawable.ic_action_expand_more);
            }
            expandCollapseIcon.setVisibility(0);
        } else {
            expandCollapseIcon.setVisibility(8);
        }
        navItemName.setText(current.getNameId());
        return v;
    }

    public View getChildView(int groupPosition, int childPosition, boolean isLastChild, View convertView, ViewGroup parent) {
        View v = convertView;
        final NavDrawerItem current = getChild(groupPosition, childPosition);
        if (v == null) {
            v = this.layoutInflater.inflate(R.layout.nav_list_item, null);
        } else {
            NavDrawerItem old = (NavDrawerItem) v.getTag();
            if (old != null) {
                old.setView(null);
            }
        }
        v.setTag(current);
        current.setView(v);
        TextView navItemName = (TextView) v.findViewById(R.id.nav_item_name);
        v.setOnClickListener(new OnClickListener() {
            public void onClick(View view) {
                current.onClick();
            }
        });
        if (current.isHidden()) {
            v.setVisibility(8);
        }
        navItemName.setText(current.getNameId());
        if (current instanceof NavDrawerNotificationItem) {
            navItemName.append(" ");
            navItemName.append(Integer.valueOf(((NavDrawerNotificationItem) current).getNotificationCount()).toString());
        }
        return v;
    }

    public boolean isChildSelectable(int groupPosition, int childPosition) {
        return true;
    }
}
