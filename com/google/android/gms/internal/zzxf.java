package com.google.android.gms.internal;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Paint.Style;
import android.view.View;
import com.google.android.gms.cast.AdBreakInfo;
import java.util.List;

public class zzxf extends View {
    private List<AdBreakInfo> zzani;
    private final int zzasm = zza(getContext(), 3.0d);
    private int zzasn = 1;
    private Paint zzaso;

    public zzxf(Context context) {
        super(context);
    }

    private static int zza(Context context, double d) {
        return context == null ? (int) Math.round(d) : (int) Math.round(((double) context.getResources().getDisplayMetrics().density) * d);
    }

    protected synchronized void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        if (!(this.zzani == null || this.zzani.isEmpty())) {
            int round = Math.round(((float) getMeasuredHeight()) / 2.0f);
            int measuredWidth = (getMeasuredWidth() - getPaddingLeft()) - getPaddingRight();
            for (AdBreakInfo adBreakInfo : this.zzani) {
                if (adBreakInfo != null) {
                    long playbackPositionInMs = adBreakInfo.getPlaybackPositionInMs();
                    if (playbackPositionInMs >= 0 && playbackPositionInMs <= ((long) this.zzasn)) {
                        canvas.drawCircle((float) (((int) ((((double) playbackPositionInMs) * ((double) measuredWidth)) / ((double) this.zzasn))) + getPaddingLeft()), (float) round, (float) this.zzasm, this.zzaso);
                    }
                }
            }
        }
    }

    public synchronized void zzb(List<AdBreakInfo> list, int i) {
        this.zzani = list;
        this.zzaso = new Paint(1);
        this.zzaso.setColor(i);
        this.zzaso.setStyle(Style.FILL);
        invalidate();
    }

    public synchronized void zzcc(int i) {
        this.zzasn = i;
    }
}
