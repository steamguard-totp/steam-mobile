package com.valvesoftware.android.steam.community.fragment;

import android.widget.Filterable;
import android.widget.ListAdapter;

/* compiled from: FriendsListAdapter */
interface FilterableAdapter<T> extends Filterable, ListAdapter {
    void add(T t);

    void clear();

    void notifyDataSetChanged();
}
