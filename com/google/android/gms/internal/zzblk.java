package com.google.android.gms.internal;

import java.util.Collections;
import java.util.List;

public class zzblk {
    private final List<List<String>> zzbZh;
    private final List<String> zzbZi;

    public zzblk(List<List<String>> list, List<String> list2) {
        if (list.size() != list2.size() - 1) {
            throw new IllegalArgumentException("Number of posts need to be n-1 for n hashes in CompoundHash");
        }
        this.zzbZh = list;
        this.zzbZi = list2;
    }

    public List<List<String>> zzVF() {
        return Collections.unmodifiableList(this.zzbZh);
    }

    public List<String> zzVG() {
        return Collections.unmodifiableList(this.zzbZi);
    }
}
