.class public Lcom/valvesoftware/android/steam/community/SteamguardWidgetProvider;
.super Landroid/appwidget/AppWidgetProvider;
.source "SteamguardWidgetProvider.java"


# instance fields
.field private mDesiredIndex:I

.field private mShowRefresh:Z

.field private mTimeShowRefresh:J


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 25
    invoke-direct {p0}, Landroid/appwidget/AppWidgetProvider;-><init>()V

    .line 31
    iput-boolean v2, p0, Lcom/valvesoftware/android/steam/community/SteamguardWidgetProvider;->mShowRefresh:Z

    .line 32
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/valvesoftware/android/steam/community/SteamguardWidgetProvider;->mTimeShowRefresh:J

    .line 33
    iput v2, p0, Lcom/valvesoftware/android/steam/community/SteamguardWidgetProvider;->mDesiredIndex:I

    return-void
.end method


# virtual methods
.method public onAppWidgetOptionsChanged(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;ILandroid/os/Bundle;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appWidgetManager"    # Landroid/appwidget/AppWidgetManager;
    .param p3, "appWidgetId"    # I
    .param p4, "newOptions"    # Landroid/os/Bundle;

    .prologue
    .line 211
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p3, v0, v1

    invoke-virtual {p0, p1, p2, v0}, Lcom/valvesoftware/android/steam/community/SteamguardWidgetProvider;->onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V

    .line 212
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v1, 0x0

    .line 196
    const-string v0, "widgetShowRefreshButton"

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/valvesoftware/android/steam/community/SteamguardWidgetProvider;->mShowRefresh:Z

    .line 197
    const-string v0, "widgetIndex"

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/valvesoftware/android/steam/community/SteamguardWidgetProvider;->mDesiredIndex:I

    .line 203
    const-string v0, "timeShowRefresh"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x7530

    add-long/2addr v2, v4

    invoke-virtual {p2, v0, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/valvesoftware/android/steam/community/SteamguardWidgetProvider;->mTimeShowRefresh:J

    .line 205
    invoke-super {p0, p1, p2}, Landroid/appwidget/AppWidgetProvider;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 206
    return-void
.end method

.method public onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V
    .locals 38
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appWidgetManager"    # Landroid/appwidget/AppWidgetManager;
    .param p3, "appWidgetIds"    # [I

    .prologue
    .line 37
    new-instance v14, Landroid/graphics/Paint;

    invoke-direct {v14}, Landroid/graphics/Paint;-><init>()V

    .line 38
    .local v14, "backgroundPaint":Landroid/graphics/Paint;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0c009b

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v14, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 39
    const/high16 v5, 0x40400000    # 3.0f

    invoke-virtual {v14, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 40
    sget-object v5, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v14, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 42
    new-instance v24, Landroid/graphics/Paint;

    invoke-direct/range {v24 .. v24}, Landroid/graphics/Paint;-><init>()V

    .line 43
    .local v24, "normalPaint":Landroid/graphics/Paint;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0c009c

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 44
    sget-object v5, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 46
    new-instance v11, Landroid/graphics/Paint;

    invoke-direct {v11}, Landroid/graphics/Paint;-><init>()V

    .line 47
    .local v11, "alertPaint":Landroid/graphics/Paint;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0c0099

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v11, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 48
    sget-object v5, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v11, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 50
    const/4 v13, 0x0

    .line 52
    .local v13, "bShowedAnyCode":Z
    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v34, v0

    const/4 v5, 0x0

    move/from16 v33, v5

    :goto_0
    move/from16 v0, v33

    move/from16 v1, v34

    if-ge v0, v1, :cond_d

    aget v32, p3, v33

    .line 53
    .local v32, "widgetId":I
    new-instance v26, Landroid/widget/RemoteViews;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f030053

    move-object/from16 v0, v26

    invoke-direct {v0, v5, v6}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 55
    .local v26, "remoteViews":Landroid/widget/RemoteViews;
    const/16 v22, 0x0

    .line 56
    .local v22, "iSelected":I
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/valvesoftware/android/steam/community/SteamguardWidgetProvider;->mShowRefresh:Z

    if-eqz v5, :cond_2

    .line 57
    const v5, 0x7f0e014f

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f080159

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v26

    invoke-virtual {v0, v5, v6}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 60
    new-instance v23, Landroid/content/Intent;

    const-class v5, Lcom/valvesoftware/android/steam/community/SteamguardWidgetProvider;

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 61
    .local v23, "intent":Landroid/content/Intent;
    const-string v5, "android.appwidget.action.APPWIDGET_UPDATE"

    move-object/from16 v0, v23

    invoke-virtual {v0, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 62
    const-string v5, "appWidgetIds"

    const/4 v6, 0x1

    new-array v6, v6, [I

    const/4 v7, 0x0

    aput v32, v6, v7

    move-object/from16 v0, v23

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    .line 63
    const-string v5, "widgetIndex"

    move-object/from16 v0, p0

    iget v6, v0, Lcom/valvesoftware/android/steam/community/SteamguardWidgetProvider;->mDesiredIndex:I

    move-object/from16 v0, v23

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 64
    shl-int/lit8 v5, v32, 0x11

    const/high16 v6, 0x48000000    # 131072.0f

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-static {v0, v5, v1, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v25

    .line 65
    .local v25, "pendingIntent":Landroid/app/PendingIntent;
    const v5, 0x7f0e014e

    move-object/from16 v0, v26

    move-object/from16 v1, v25

    invoke-virtual {v0, v5, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 66
    const v5, 0x7f0e014c

    move-object/from16 v0, v26

    move-object/from16 v1, v25

    invoke-virtual {v0, v5, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 133
    :goto_1
    if-eqz v13, :cond_a

    .line 134
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x10

    if-lt v5, v6, :cond_0

    .line 135
    const v5, 0x7f0e014f

    const/4 v6, 0x2

    const/high16 v7, 0x41300000    # 11.0f

    move-object/from16 v0, v26

    invoke-virtual {v0, v5, v6, v7}, Landroid/widget/RemoteViews;->setTextViewTextSize(IIF)V

    .line 152
    :cond_0
    :goto_2
    new-instance v23, Landroid/content/Intent;

    .end local v23    # "intent":Landroid/content/Intent;
    const-class v5, Lcom/valvesoftware/android/steam/community/SteamguardWidgetProvider;

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 153
    .restart local v23    # "intent":Landroid/content/Intent;
    const-string v5, "android.appwidget.action.APPWIDGET_UPDATE"

    move-object/from16 v0, v23

    invoke-virtual {v0, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 154
    const-string v5, "appWidgetIds"

    const/4 v6, 0x1

    new-array v6, v6, [I

    const/4 v7, 0x0

    aput v32, v6, v7

    move-object/from16 v0, v23

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    .line 155
    const-string v5, "widgetIndex"

    add-int/lit8 v6, v22, -0x1

    move-object/from16 v0, v23

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 156
    shl-int/lit8 v5, v32, 0x13

    const/high16 v6, 0x48000000    # 131072.0f

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-static {v0, v5, v1, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v25

    .line 157
    const v5, 0x7f0e014d

    move-object/from16 v0, v26

    move-object/from16 v1, v25

    invoke-virtual {v0, v5, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 161
    new-instance v23, Landroid/content/Intent;

    .end local v23    # "intent":Landroid/content/Intent;
    const-class v5, Lcom/valvesoftware/android/steam/community/SteamguardWidgetProvider;

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 162
    .restart local v23    # "intent":Landroid/content/Intent;
    const-string v5, "android.appwidget.action.APPWIDGET_UPDATE"

    move-object/from16 v0, v23

    invoke-virtual {v0, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 163
    const-string v5, "appWidgetIds"

    const/4 v6, 0x1

    new-array v6, v6, [I

    const/4 v7, 0x0

    aput v32, v6, v7

    move-object/from16 v0, v23

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    .line 164
    const-string v5, "widgetIndex"

    add-int/lit8 v6, v22, 0x1

    move-object/from16 v0, v23

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 165
    shl-int/lit8 v5, v32, 0x14

    const/high16 v6, 0x48000000    # 131072.0f

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-static {v0, v5, v1, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v25

    .line 166
    const v5, 0x7f0e0153

    move-object/from16 v0, v26

    move-object/from16 v1, v25

    invoke-virtual {v0, v5, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 170
    move-object/from16 v0, p2

    move/from16 v1, v32

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(ILandroid/widget/RemoteViews;)V

    .line 173
    if-eqz v13, :cond_1

    .line 174
    const-string v5, "alarm"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/app/AlarmManager;

    .line 175
    .local v12, "am":Landroid/app/AlarmManager;
    new-instance v23, Landroid/content/Intent;

    .end local v23    # "intent":Landroid/content/Intent;
    const-class v5, Lcom/valvesoftware/android/steam/community/SteamguardWidgetProvider;

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 177
    .restart local v23    # "intent":Landroid/content/Intent;
    const-string v5, "timeShowRefresh"

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/valvesoftware/android/steam/community/SteamguardWidgetProvider;->mTimeShowRefresh:J

    move-object/from16 v0, v23

    invoke-virtual {v0, v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 178
    const-string v5, "widgetIndex"

    move-object/from16 v0, v23

    move/from16 v1, v22

    invoke-virtual {v0, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 179
    const-string v5, "android.appwidget.action.APPWIDGET_UPDATE"

    move-object/from16 v0, v23

    invoke-virtual {v0, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 180
    const-string v5, "appWidgetIds"

    const/4 v6, 0x1

    new-array v6, v6, [I

    const/4 v7, 0x0

    aput v32, v6, v7

    move-object/from16 v0, v23

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    .line 182
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const-wide/16 v36, 0xbb8

    add-long v30, v6, v36

    .line 183
    .local v30, "triggerAtMillis":J
    const-string v6, "widgetShowRefreshButton"

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/valvesoftware/android/steam/community/SteamguardWidgetProvider;->mTimeShowRefresh:J

    move-wide/from16 v36, v0

    cmp-long v5, v30, v36

    if-ltz v5, :cond_c

    const/4 v5, 0x1

    :goto_3
    move-object/from16 v0, v23

    invoke-virtual {v0, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 184
    shl-int/lit8 v5, v32, 0x15

    const/high16 v6, 0x48000000    # 131072.0f

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-static {v0, v5, v1, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v25

    .line 185
    const/4 v5, 0x1

    move-wide/from16 v0, v30

    move-object/from16 v2, v25

    invoke-virtual {v12, v5, v0, v1, v2}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 52
    .end local v12    # "am":Landroid/app/AlarmManager;
    .end local v30    # "triggerAtMillis":J
    :cond_1
    add-int/lit8 v5, v33, 0x1

    move/from16 v33, v5

    goto/16 :goto_0

    .line 68
    .end local v23    # "intent":Landroid/content/Intent;
    .end local v25    # "pendingIntent":Landroid/app/PendingIntent;
    :cond_2
    invoke-static {}, Lcom/valvesoftware/android/steam/community/SteamguardState;->getSortedTwoFactorSteamGuardStates()Ljava/util/ArrayList;

    move-result-object v28

    .line 70
    .local v28, "sgStates":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/valvesoftware/android/steam/community/SteamguardState;>;"
    invoke-virtual/range {v28 .. v28}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lcom/valvesoftware/android/steam/community/SteamguardState;

    .line 71
    .local v27, "sgState":Lcom/valvesoftware/android/steam/community/SteamguardState;
    invoke-virtual/range {v27 .. v27}, Lcom/valvesoftware/android/steam/community/SteamguardState;->getTwoFactorToken()Lcom/valvesoftware/android/steam/community/TwoFactorToken;

    move-result-object v29

    .line 73
    .local v29, "token":Lcom/valvesoftware/android/steam/community/TwoFactorToken;
    move-object/from16 v0, p0

    iget v6, v0, Lcom/valvesoftware/android/steam/community/SteamguardWidgetProvider;->mDesiredIndex:I

    move/from16 v0, v22

    if-lt v0, v6, :cond_8

    .line 74
    const v5, 0x7f0e0151

    const/4 v6, 0x0

    move-object/from16 v0, v26

    invoke-virtual {v0, v5, v6}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 75
    const v5, 0x7f0e0150

    const/4 v6, 0x0

    move-object/from16 v0, v26

    invoke-virtual {v0, v5, v6}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 77
    if-nez v22, :cond_5

    .line 78
    const v5, 0x7f0e014d

    const/4 v6, 0x4

    move-object/from16 v0, v26

    invoke-virtual {v0, v5, v6}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 83
    :goto_5
    invoke-virtual/range {v29 .. v29}, Lcom/valvesoftware/android/steam/community/TwoFactorToken;->generateSteamGuardCode()Ljava/lang/String;

    move-result-object v19

    .line 84
    .local v19, "code":Ljava/lang/String;
    invoke-virtual/range {v27 .. v27}, Lcom/valvesoftware/android/steam/community/SteamguardState;->getAccountName()Ljava/lang/String;

    move-result-object v10

    .line 85
    .local v10, "account":Ljava/lang/String;
    const v5, 0x7f0e0150

    move-object/from16 v0, v26

    move-object/from16 v1, v19

    invoke-virtual {v0, v5, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 86
    const v5, 0x7f0e014f

    move-object/from16 v0, v26

    invoke-virtual {v0, v5, v10}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 87
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Widget "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v32

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " updating code to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " for account "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 91
    const/16 v17, 0xc8

    .line 92
    .local v17, "barWidth":I
    div-int/lit8 v15, v17, 0x2

    .line 93
    .local v15, "barCenterX":I
    const/16 v16, 0xa

    .line 94
    .local v16, "barHeight":I
    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, v17

    move/from16 v1, v16

    invoke-static {v0, v1, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v18

    .line 95
    .local v18, "bitmap":Landroid/graphics/Bitmap;
    new-instance v4, Landroid/graphics/Canvas;

    move-object/from16 v0, v18

    invoke-direct {v4, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 97
    .local v4, "canvas":Landroid/graphics/Canvas;
    invoke-virtual/range {v29 .. v29}, Lcom/valvesoftware/android/steam/community/TwoFactorToken;->secondsToNextChange()I

    move-result v5

    const/4 v6, 0x7

    if-gt v5, v6, :cond_6

    const/16 v20, 0x1

    .line 98
    .local v20, "danger":Z
    :goto_6
    if-eqz v20, :cond_7

    move-object v9, v11

    .line 100
    .local v9, "fillPaint":Landroid/graphics/Paint;
    :goto_7
    move/from16 v0, v17

    int-to-float v5, v0

    invoke-virtual/range {v29 .. v29}, Lcom/valvesoftware/android/steam/community/TwoFactorToken;->secondsToNextChange()I

    move-result v6

    int-to-float v6, v6

    const/high16 v7, 0x41f00000    # 30.0f

    div-float/2addr v6, v7

    mul-float/2addr v5, v6

    float-to-int v0, v5

    move/from16 v21, v0

    .line 102
    .local v21, "fuseLength":I
    div-int/lit8 v5, v21, 0x2

    rsub-int/lit8 v5, v5, 0x64

    int-to-float v5, v5

    const/4 v6, 0x0

    div-int/lit8 v7, v21, 0x2

    add-int/lit8 v7, v7, 0x64

    int-to-float v7, v7

    move/from16 v0, v16

    int-to-float v8, v0

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 105
    const v5, 0x7f0e0152

    const-string v6, "setImageBitmap"

    move-object/from16 v0, v26

    move-object/from16 v1, v18

    invoke-virtual {v0, v5, v6, v1}, Landroid/widget/RemoteViews;->setBitmap(ILjava/lang/String;Landroid/graphics/Bitmap;)V

    .line 107
    const/4 v13, 0x1

    .line 114
    .end local v4    # "canvas":Landroid/graphics/Canvas;
    .end local v9    # "fillPaint":Landroid/graphics/Paint;
    .end local v10    # "account":Ljava/lang/String;
    .end local v15    # "barCenterX":I
    .end local v16    # "barHeight":I
    .end local v17    # "barWidth":I
    .end local v18    # "bitmap":Landroid/graphics/Bitmap;
    .end local v19    # "code":Ljava/lang/String;
    .end local v20    # "danger":Z
    .end local v21    # "fuseLength":I
    .end local v27    # "sgState":Lcom/valvesoftware/android/steam/community/SteamguardState;
    .end local v29    # "token":Lcom/valvesoftware/android/steam/community/TwoFactorToken;
    :cond_3
    invoke-virtual/range {v28 .. v28}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    move/from16 v0, v22

    if-lt v0, v5, :cond_9

    .line 115
    const v5, 0x7f0e0153

    const/4 v6, 0x4

    move-object/from16 v0, v26

    invoke-virtual {v0, v5, v6}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 120
    :goto_8
    if-nez v13, :cond_4

    .line 121
    const v5, 0x7f0e014f

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f080158

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v26

    invoke-virtual {v0, v5, v6}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 126
    :cond_4
    new-instance v23, Landroid/content/Intent;

    const-class v5, Lcom/valvesoftware/android/steam/community/activity/MainActivity;

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 127
    .restart local v23    # "intent":Landroid/content/Intent;
    const/4 v5, 0x2

    const/high16 v6, 0x8000000

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-static {v0, v5, v1, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v25

    .line 128
    .restart local v25    # "pendingIntent":Landroid/app/PendingIntent;
    const v5, 0x7f0e014e

    move-object/from16 v0, v26

    move-object/from16 v1, v25

    invoke-virtual {v0, v5, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 129
    const v5, 0x7f0e014c

    move-object/from16 v0, v26

    move-object/from16 v1, v25

    invoke-virtual {v0, v5, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    goto/16 :goto_1

    .line 80
    .end local v23    # "intent":Landroid/content/Intent;
    .end local v25    # "pendingIntent":Landroid/app/PendingIntent;
    .restart local v27    # "sgState":Lcom/valvesoftware/android/steam/community/SteamguardState;
    .restart local v29    # "token":Lcom/valvesoftware/android/steam/community/TwoFactorToken;
    :cond_5
    const v5, 0x7f0e014d

    const/4 v6, 0x0

    move-object/from16 v0, v26

    invoke-virtual {v0, v5, v6}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto/16 :goto_5

    .line 97
    .restart local v4    # "canvas":Landroid/graphics/Canvas;
    .restart local v10    # "account":Ljava/lang/String;
    .restart local v15    # "barCenterX":I
    .restart local v16    # "barHeight":I
    .restart local v17    # "barWidth":I
    .restart local v18    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v19    # "code":Ljava/lang/String;
    :cond_6
    const/16 v20, 0x0

    goto/16 :goto_6

    .restart local v20    # "danger":Z
    :cond_7
    move-object/from16 v9, v24

    .line 98
    goto/16 :goto_7

    .line 111
    .end local v4    # "canvas":Landroid/graphics/Canvas;
    .end local v10    # "account":Ljava/lang/String;
    .end local v15    # "barCenterX":I
    .end local v16    # "barHeight":I
    .end local v17    # "barWidth":I
    .end local v18    # "bitmap":Landroid/graphics/Bitmap;
    .end local v19    # "code":Ljava/lang/String;
    .end local v20    # "danger":Z
    :cond_8
    add-int/lit8 v22, v22, 0x1

    .line 112
    goto/16 :goto_4

    .line 117
    .end local v27    # "sgState":Lcom/valvesoftware/android/steam/community/SteamguardState;
    .end local v29    # "token":Lcom/valvesoftware/android/steam/community/TwoFactorToken;
    :cond_9
    const v5, 0x7f0e0153

    const/4 v6, 0x0

    move-object/from16 v0, v26

    invoke-virtual {v0, v5, v6}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto :goto_8

    .line 138
    .end local v28    # "sgStates":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/valvesoftware/android/steam/community/SteamguardState;>;"
    .restart local v23    # "intent":Landroid/content/Intent;
    .restart local v25    # "pendingIntent":Landroid/app/PendingIntent;
    :cond_a
    const v5, 0x7f0e014d

    const/16 v6, 0x8

    move-object/from16 v0, v26

    invoke-virtual {v0, v5, v6}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 139
    const v5, 0x7f0e0153

    const/16 v6, 0x8

    move-object/from16 v0, v26

    invoke-virtual {v0, v5, v6}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 140
    const v5, 0x7f0e0151

    const/4 v6, 0x4

    move-object/from16 v0, v26

    invoke-virtual {v0, v5, v6}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 141
    const v5, 0x7f0e0150

    const/16 v6, 0x8

    move-object/from16 v0, v26

    invoke-virtual {v0, v5, v6}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 144
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x10

    if-lt v5, v6, :cond_b

    .line 145
    const v5, 0x7f0e014f

    const/4 v6, 0x2

    const/high16 v7, 0x41800000    # 16.0f

    move-object/from16 v0, v26

    invoke-virtual {v0, v5, v6, v7}, Landroid/widget/RemoteViews;->setTextViewTextSize(IIF)V

    .line 148
    :cond_b
    const v5, 0x7f0e0150

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f080157

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v26

    invoke-virtual {v0, v5, v6}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 183
    .restart local v12    # "am":Landroid/app/AlarmManager;
    .restart local v30    # "triggerAtMillis":J
    :cond_c
    const/4 v5, 0x0

    goto/16 :goto_3

    .line 189
    .end local v12    # "am":Landroid/app/AlarmManager;
    .end local v22    # "iSelected":I
    .end local v23    # "intent":Landroid/content/Intent;
    .end local v25    # "pendingIntent":Landroid/app/PendingIntent;
    .end local v26    # "remoteViews":Landroid/widget/RemoteViews;
    .end local v30    # "triggerAtMillis":J
    .end local v32    # "widgetId":I
    :cond_d
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/valvesoftware/android/steam/community/SteamguardWidgetProvider;->mShowRefresh:Z

    if-eqz v5, :cond_e

    .line 190
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/valvesoftware/android/steam/community/SteamguardWidgetProvider;->mShowRefresh:Z

    .line 192
    :cond_e
    return-void
.end method
