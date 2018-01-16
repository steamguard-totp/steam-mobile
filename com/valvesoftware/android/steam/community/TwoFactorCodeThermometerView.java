package com.valvesoftware.android.steam.community;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Paint.Style;
import android.util.AttributeSet;
import android.view.View;

public class TwoFactorCodeThermometerView extends View {
    Paint mAlertPaint;
    Paint mBackgroundPaint;
    boolean mDanger;
    Paint mNormalPaint;
    Paint mOutlinePaint = new Paint();
    int mValue;

    public TwoFactorCodeThermometerView(Context context, AttributeSet attrs) {
        super(context, attrs);
        this.mOutlinePaint.setColor(getResources().getColor(R.color.twofactorcode_thermometer_outline));
        this.mOutlinePaint.setStrokeWidth(3.0f);
        this.mOutlinePaint.setStyle(Style.STROKE);
        this.mBackgroundPaint = new Paint();
        this.mBackgroundPaint.setColor(getResources().getColor(R.color.twofactorcode_thermometer_background));
        this.mBackgroundPaint.setStrokeWidth(3.0f);
        this.mBackgroundPaint.setStyle(Style.FILL);
        this.mNormalPaint = new Paint();
        this.mNormalPaint.setColor(getResources().getColor(R.color.twofactorcode_thermometer_normal));
        this.mNormalPaint.setStyle(Style.FILL);
        this.mAlertPaint = new Paint();
        this.mAlertPaint.setColor(getResources().getColor(R.color.twofactorcode_alert));
        this.mAlertPaint.setStyle(Style.FILL);
    }

    public void setValue(int value, boolean danger) {
        this.mValue = value;
        this.mDanger = danger;
        invalidate();
    }

    protected void onDraw(Canvas canvas) {
        int barWidth = (getWidth() * 2) / 3;
        int barCenterX = getWidth() / 2;
        int barCenterY = getHeight() / 2;
        canvas.drawRect((float) (barCenterX - (barWidth / 2)), (float) (barCenterY - 10), (float) ((barWidth / 2) + barCenterX), (float) (barCenterY + 10), this.mOutlinePaint);
        canvas.drawRect((float) (barCenterX - (barWidth / 2)), (float) (barCenterY - 10), (float) ((barWidth / 2) + barCenterX), (float) (barCenterY + 10), this.mBackgroundPaint);
        int fuseLength = (int) (((float) barWidth) * (((float) this.mValue) / 30.0f));
        canvas.drawRect((float) (barCenterX - (fuseLength / 2)), (float) (barCenterY - 10), (float) ((fuseLength / 2) + barCenterX), (float) (barCenterY + 10), this.mDanger ? this.mAlertPaint : this.mNormalPaint);
    }
}
