package com.valvesoftware.android.steam.community;

import android.app.AlarmManager;
import android.app.PendingIntent;
import android.appwidget.AppWidgetManager;
import android.appwidget.AppWidgetProvider;
import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Paint.Style;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.widget.RemoteViews;
import com.valvesoftware.android.steam.community.activity.MainActivity;
import java.util.ArrayList;
import java.util.Iterator;

public class SteamguardWidgetProvider extends AppWidgetProvider {
    private int mDesiredIndex = 0;
    private boolean mShowRefresh = false;
    private long mTimeShowRefresh = 0;

    public void onUpdate(Context context, AppWidgetManager appWidgetManager, int[] appWidgetIds) {
        Paint backgroundPaint = new Paint();
        backgroundPaint.setColor(context.getResources().getColor(R.color.twofactorcode_thermometer_background));
        backgroundPaint.setStrokeWidth(3.0f);
        backgroundPaint.setStyle(Style.FILL);
        Paint normalPaint = new Paint();
        normalPaint.setColor(context.getResources().getColor(R.color.twofactorcode_thermometer_normal));
        normalPaint.setStyle(Style.FILL);
        Paint alertPaint = new Paint();
        alertPaint.setColor(context.getResources().getColor(R.color.twofactorcode_alert));
        alertPaint.setStyle(Style.FILL);
        boolean bShowedAnyCode = false;
        for (int widgetId : appWidgetIds) {
            Intent intent;
            RemoteViews remoteViews = new RemoteViews(context.getPackageName(), R.layout.steamguard_widget);
            int iSelected = 0;
            PendingIntent pendingIntent;
            if (this.mShowRefresh) {
                remoteViews.setTextViewText(R.id.twofactorcode_account_name, context.getResources().getString(R.string.widget_touch_to_refresh));
                intent = new Intent(context, SteamguardWidgetProvider.class);
                intent.setAction("android.appwidget.action.APPWIDGET_UPDATE");
                intent.putExtra("appWidgetIds", new int[]{widgetId});
                intent.putExtra("widgetIndex", this.mDesiredIndex);
                pendingIntent = PendingIntent.getBroadcast(context, widgetId << 17, intent, 1207959552);
                remoteViews.setOnClickPendingIntent(R.id.linearLayout, pendingIntent);
                remoteViews.setOnClickPendingIntent(R.id.widgetLogo, pendingIntent);
            } else {
                ArrayList<SteamguardState> sgStates = SteamguardState.getSortedTwoFactorSteamGuardStates();
                Iterator it = sgStates.iterator();
                while (it.hasNext()) {
                    SteamguardState sgState = (SteamguardState) it.next();
                    TwoFactorToken token = sgState.getTwoFactorToken();
                    if (iSelected >= this.mDesiredIndex) {
                        Paint fillPaint;
                        remoteViews.setViewVisibility(R.id.twofactorcode_thermometer, 0);
                        remoteViews.setViewVisibility(R.id.twofactorcode_code, 0);
                        if (iSelected == 0) {
                            remoteViews.setViewVisibility(R.id.twofactor_back, 4);
                        } else {
                            remoteViews.setViewVisibility(R.id.twofactor_back, 0);
                        }
                        String code = token.generateSteamGuardCode();
                        String account = sgState.getAccountName();
                        remoteViews.setTextViewText(R.id.twofactorcode_code, code);
                        remoteViews.setTextViewText(R.id.twofactorcode_account_name, account);
                        "Widget " + widgetId + " updating code to " + code + " for account " + account;
                        int barCenterX = 200 / 2;
                        Bitmap bitmap = Bitmap.createBitmap(200, 10, Config.ARGB_8888);
                        Canvas canvas = new Canvas(bitmap);
                        if (token.secondsToNextChange() <= 7) {
                            fillPaint = alertPaint;
                        } else {
                            fillPaint = normalPaint;
                        }
                        int fuseLength = (int) (((float) 200) * (((float) token.secondsToNextChange()) / 30.0f));
                        canvas.drawRect((float) (100 - (fuseLength / 2)), 0.0f, (float) ((fuseLength / 2) + 100), (float) 10, fillPaint);
                        remoteViews.setBitmap(R.id.twofactor_thermo_img, "setImageBitmap", bitmap);
                        bShowedAnyCode = true;
                        if (iSelected < sgStates.size() - 1) {
                            remoteViews.setViewVisibility(R.id.twofactor_forward, 4);
                        } else {
                            remoteViews.setViewVisibility(R.id.twofactor_forward, 0);
                        }
                        if (!bShowedAnyCode) {
                            remoteViews.setTextViewText(R.id.twofactorcode_account_name, context.getResources().getString(R.string.widget_no_steamguard));
                        }
                        pendingIntent = PendingIntent.getActivity(context, 2, new Intent(context, MainActivity.class), 134217728);
                        remoteViews.setOnClickPendingIntent(R.id.linearLayout, pendingIntent);
                        remoteViews.setOnClickPendingIntent(R.id.widgetLogo, pendingIntent);
                    } else {
                        iSelected++;
                    }
                }
                if (iSelected < sgStates.size() - 1) {
                    remoteViews.setViewVisibility(R.id.twofactor_forward, 0);
                } else {
                    remoteViews.setViewVisibility(R.id.twofactor_forward, 4);
                }
                if (bShowedAnyCode) {
                    remoteViews.setTextViewText(R.id.twofactorcode_account_name, context.getResources().getString(R.string.widget_no_steamguard));
                }
                pendingIntent = PendingIntent.getActivity(context, 2, new Intent(context, MainActivity.class), 134217728);
                remoteViews.setOnClickPendingIntent(R.id.linearLayout, pendingIntent);
                remoteViews.setOnClickPendingIntent(R.id.widgetLogo, pendingIntent);
            }
            if (!bShowedAnyCode) {
                remoteViews.setViewVisibility(R.id.twofactor_back, 8);
                remoteViews.setViewVisibility(R.id.twofactor_forward, 8);
                remoteViews.setViewVisibility(R.id.twofactorcode_thermometer, 4);
                remoteViews.setViewVisibility(R.id.twofactorcode_code, 8);
                if (VERSION.SDK_INT >= 16) {
                    remoteViews.setTextViewTextSize(R.id.twofactorcode_account_name, 2, 16.0f);
                }
                remoteViews.setTextViewText(R.id.twofactorcode_code, context.getResources().getString(R.string.widget_no_code));
            } else if (VERSION.SDK_INT >= 16) {
                remoteViews.setTextViewTextSize(R.id.twofactorcode_account_name, 2, 11.0f);
            }
            intent = new Intent(context, SteamguardWidgetProvider.class);
            intent.setAction("android.appwidget.action.APPWIDGET_UPDATE");
            intent.putExtra("appWidgetIds", new int[]{widgetId});
            intent.putExtra("widgetIndex", iSelected - 1);
            remoteViews.setOnClickPendingIntent(R.id.twofactor_back, PendingIntent.getBroadcast(context, widgetId << 19, intent, 1207959552));
            intent = new Intent(context, SteamguardWidgetProvider.class);
            intent.setAction("android.appwidget.action.APPWIDGET_UPDATE");
            intent.putExtra("appWidgetIds", new int[]{widgetId});
            intent.putExtra("widgetIndex", iSelected + 1);
            remoteViews.setOnClickPendingIntent(R.id.twofactor_forward, PendingIntent.getBroadcast(context, widgetId << 20, intent, 1207959552));
            appWidgetManager.updateAppWidget(widgetId, remoteViews);
            if (bShowedAnyCode) {
                AlarmManager am = (AlarmManager) context.getSystemService("alarm");
                intent = new Intent(context, SteamguardWidgetProvider.class);
                intent.putExtra("timeShowRefresh", this.mTimeShowRefresh);
                intent.putExtra("widgetIndex", iSelected);
                intent.setAction("android.appwidget.action.APPWIDGET_UPDATE");
                intent.putExtra("appWidgetIds", new int[]{widgetId});
                long triggerAtMillis = System.currentTimeMillis() + 3000;
                intent.putExtra("widgetShowRefreshButton", triggerAtMillis >= this.mTimeShowRefresh);
                am.set(1, triggerAtMillis, PendingIntent.getBroadcast(context, widgetId << 21, intent, 1207959552));
            }
        }
        if (this.mShowRefresh) {
            this.mShowRefresh = false;
        }
    }

    public void onReceive(Context context, Intent intent) {
        this.mShowRefresh = intent.getBooleanExtra("widgetShowRefreshButton", false);
        this.mDesiredIndex = intent.getIntExtra("widgetIndex", 0);
        this.mTimeShowRefresh = intent.getLongExtra("timeShowRefresh", System.currentTimeMillis() + 30000);
        super.onReceive(context, intent);
    }

    public void onAppWidgetOptionsChanged(Context context, AppWidgetManager appWidgetManager, int appWidgetId, Bundle newOptions) {
        onUpdate(context, appWidgetManager, new int[]{appWidgetId});
    }
}
