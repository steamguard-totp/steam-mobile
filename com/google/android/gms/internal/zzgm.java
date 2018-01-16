package com.google.android.gms.internal;

import android.graphics.Color;
import android.graphics.drawable.Drawable;
import java.util.List;

@zzmb
public class zzgm {
    private static final int zzFE = Color.rgb(12, 174, 206);
    private static final int zzFF = Color.rgb(204, 204, 204);
    static final int zzFG = zzFF;
    static final int zzFH = zzFE;
    private final int mBackgroundColor;
    private final int mTextColor;
    private final String zzFI;
    private final List<Drawable> zzFJ;
    private final int zzFK;
    private final int zzFL;
    private final int zzFM;

    public zzgm(String str, List<Drawable> list, Integer num, Integer num2, Integer num3, int i, int i2) {
        this.zzFI = str;
        this.zzFJ = list;
        this.mBackgroundColor = num != null ? num.intValue() : zzFG;
        this.mTextColor = num2 != null ? num2.intValue() : zzFH;
        this.zzFK = num3 != null ? num3.intValue() : 12;
        this.zzFL = i;
        this.zzFM = i2;
    }

    public int getBackgroundColor() {
        return this.mBackgroundColor;
    }

    public String getText() {
        return this.zzFI;
    }

    public int getTextColor() {
        return this.mTextColor;
    }

    public int getTextSize() {
        return this.zzFK;
    }

    public List<Drawable> zzfG() {
        return this.zzFJ;
    }

    public int zzfH() {
        return this.zzFL;
    }

    public int zzfI() {
        return this.zzFM;
    }
}
