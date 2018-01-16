package com.valvesoftware.android.steam.community.fragment;

import android.widget.Filter;
import android.widget.Filter.FilterResults;
import java.util.ArrayList;
import java.util.List;

public class GenericFilter<T> extends Filter {
    private final FilterableAdapter associatedAdapter;
    private final List<T> originalList;
    private final T searchItem;

    public GenericFilter(List<T> original, FilterableAdapter adapter, T searchItem) {
        this.searchItem = searchItem;
        this.originalList = new ArrayList(original);
        this.associatedAdapter = adapter;
    }

    protected FilterResults performFiltering(CharSequence chars) {
        String filterSeq = chars != null ? chars.toString().toLowerCase() : null;
        FilterResults result = new FilterResults();
        if (filterSeq == null || filterSeq.length() <= 0) {
            synchronized (this) {
                result.values = this.originalList;
                result.count = this.originalList.size();
            }
        } else {
            List<T> filter = new ArrayList();
            for (T item : this.originalList) {
                if (item.toString().toLowerCase().contains(filterSeq) || item == this.searchItem) {
                    filter.add(item);
                }
            }
            result.count = filter.size();
            result.values = filter;
        }
        return result;
    }

    protected void publishResults(CharSequence charSequence, FilterResults results) {
        List<T> filtered = results.values;
        if (filtered != null) {
            this.associatedAdapter.notifyDataSetChanged();
            this.associatedAdapter.clear();
            int l = filtered.size();
            for (int i = 0; i < l; i++) {
                this.associatedAdapter.add(filtered.get(i));
            }
        }
    }

    void addToOriginal(T item) {
        this.originalList.add(item);
    }

    void removeFromOriginal(T item) {
        this.originalList.remove(item);
    }
}
