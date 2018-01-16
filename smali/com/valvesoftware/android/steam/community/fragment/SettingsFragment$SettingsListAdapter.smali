.class Lcom/valvesoftware/android/steam/community/fragment/SettingsFragment$SettingsListAdapter;
.super Landroid/widget/ArrayAdapter;
.source "SettingsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/valvesoftware/android/steam/community/fragment/SettingsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SettingsListAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/valvesoftware/android/steam/community/SettingInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private items:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/valvesoftware/android/steam/community/SettingInfo;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/valvesoftware/android/steam/community/fragment/SettingsFragment;


# direct methods
.method public constructor <init>(Lcom/valvesoftware/android/steam/community/fragment/SettingsFragment;Landroid/content/Context;ILjava/util/ArrayList;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "textViewResourceId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/valvesoftware/android/steam/community/SettingInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 212
    .local p4, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/valvesoftware/android/steam/community/SettingInfo;>;"
    iput-object p1, p0, Lcom/valvesoftware/android/steam/community/fragment/SettingsFragment$SettingsListAdapter;->this$0:Lcom/valvesoftware/android/steam/community/fragment/SettingsFragment;

    .line 213
    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 214
    iput-object p4, p0, Lcom/valvesoftware/android/steam/community/fragment/SettingsFragment$SettingsListAdapter;->items:Ljava/util/ArrayList;

    .line 215
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 20
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 219
    move-object/from16 v13, p2

    .line 220
    .local v13, "v":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/valvesoftware/android/steam/community/fragment/SettingsFragment$SettingsListAdapter;->items:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/valvesoftware/android/steam/community/SettingInfo;

    .line 221
    .local v11, "settingInfo":Lcom/valvesoftware/android/steam/community/SettingInfo;
    if-nez v11, :cond_0

    move-object v14, v13

    .line 413
    .end local v13    # "v":Landroid/view/View;
    .local v14, "v":Landroid/view/View;
    :goto_0
    return-object v14

    .line 224
    .end local v14    # "v":Landroid/view/View;
    .restart local v13    # "v":Landroid/view/View;
    :cond_0
    if-nez v13, :cond_1

    .line 225
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/valvesoftware/android/steam/community/fragment/SettingsFragment$SettingsListAdapter;->this$0:Lcom/valvesoftware/android/steam/community/fragment/SettingsFragment;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/valvesoftware/android/steam/community/fragment/SettingsFragment;->access$100(Lcom/valvesoftware/android/steam/community/fragment/SettingsFragment;)Landroid/app/Activity;

    move-result-object v17

    const-string v18, "layout_inflater"

    invoke-virtual/range {v17 .. v18}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/view/LayoutInflater;

    .line 226
    .local v16, "vi":Landroid/view/LayoutInflater;
    const v17, 0x7f03004f

    const/16 v18, 0x0

    invoke-virtual/range {v16 .. v18}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v13

    .line 227
    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v13, v0}, Landroid/view/View;->setClickable(Z)V

    .line 229
    .end local v16    # "vi":Landroid/view/LayoutInflater;
    :cond_1
    const/16 v17, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 231
    const v17, 0x7f0e00da

    move/from16 v0, v17

    invoke-virtual {v13, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    .line 232
    .local v12, "titleView":Landroid/widget/TextView;
    iget v0, v11, Lcom/valvesoftware/android/steam/community/SettingInfo;->m_resid:I

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v12, v0}, Landroid/widget/TextView;->setText(I)V

    .line 234
    const v17, 0x7f0e0126

    move/from16 v0, v17

    invoke-virtual {v13, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/TextView;

    .line 235
    .local v15, "valueView":Landroid/widget/TextView;
    const-string v17, ""

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 236
    iget v0, v11, Lcom/valvesoftware/android/steam/community/SettingInfo;->m_resid_detailed:I

    move/from16 v17, v0

    if-eqz v17, :cond_2

    .line 237
    iget v0, v11, Lcom/valvesoftware/android/steam/community/SettingInfo;->m_resid_detailed:I

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setText(I)V

    .line 239
    :cond_2
    const v17, 0x7f0e00e4

    move/from16 v0, v17

    invoke-virtual {v13, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 240
    .local v4, "chevronView":Landroid/widget/ImageView;
    const/16 v17, 0x8

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 242
    const v17, 0x7f0e0140

    move/from16 v0, v17

    invoke-virtual {v13, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    .line 243
    .local v3, "checkBox":Landroid/widget/CheckBox;
    const/16 v17, 0x8

    move/from16 v0, v17

    invoke-virtual {v3, v0}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 245
    sget-object v17, Lcom/valvesoftware/android/steam/community/fragment/SettingsFragment$4;->$SwitchMap$com$valvesoftware$android$steam$community$SettingInfo$SettingType:[I

    iget-object v0, v11, Lcom/valvesoftware/android/steam/community/SettingInfo;->m_type:Lcom/valvesoftware/android/steam/community/SettingInfo$SettingType;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/valvesoftware/android/steam/community/SettingInfo$SettingType;->ordinal()I

    move-result v18

    aget v17, v17, v18

    packed-switch v17, :pswitch_data_0

    :goto_1
    move-object v14, v13

    .line 413
    .end local v13    # "v":Landroid/view/View;
    .restart local v14    # "v":Landroid/view/View;
    goto/16 :goto_0

    .line 251
    .end local v14    # "v":Landroid/view/View;
    .restart local v13    # "v":Landroid/view/View;
    :pswitch_0
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 252
    iget-object v0, v11, Lcom/valvesoftware/android/steam/community/SettingInfo;->m_defaultValue:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 253
    new-instance v17, Lcom/valvesoftware/android/steam/community/fragment/SettingsFragment$SettingsListAdapter$1;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v15, v11, v4}, Lcom/valvesoftware/android/steam/community/fragment/SettingsFragment$SettingsListAdapter$1;-><init>(Lcom/valvesoftware/android/steam/community/fragment/SettingsFragment$SettingsListAdapter;Landroid/widget/TextView;Lcom/valvesoftware/android/steam/community/SettingInfo;Landroid/widget/ImageView;)V

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    .line 275
    :pswitch_1
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 276
    const/4 v7, 0x0

    .line 277
    .local v7, "numUnreadMsgs":I
    invoke-static {}, Lcom/valvesoftware/android/steam/community/LoggedInUserAccountInfo;->isLoggedIn()Z

    move-result v17

    if-eqz v17, :cond_3

    .line 279
    const/4 v7, 0x0

    .line 280
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/valvesoftware/android/steam/community/fragment/SettingsFragment$SettingsListAdapter;->this$0:Lcom/valvesoftware/android/steam/community/fragment/SettingsFragment;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/valvesoftware/android/steam/community/fragment/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v17

    iget v0, v11, Lcom/valvesoftware/android/steam/community/SettingInfo;->m_resid:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v17

    const-string v18, "#"

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 281
    new-instance v17, Lcom/valvesoftware/android/steam/community/fragment/SettingsFragment$SettingsListAdapter$2;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/valvesoftware/android/steam/community/fragment/SettingsFragment$SettingsListAdapter$2;-><init>(Lcom/valvesoftware/android/steam/community/fragment/SettingsFragment$SettingsListAdapter;)V

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    .line 291
    .end local v7    # "numUnreadMsgs":I
    :pswitch_2
    iget-object v0, v11, Lcom/valvesoftware/android/steam/community/SettingInfo;->m_defaultValue:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 295
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/valvesoftware/android/steam/community/fragment/SettingsFragment$SettingsListAdapter;->this$0:Lcom/valvesoftware/android/steam/community/fragment/SettingsFragment;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/valvesoftware/android/steam/community/fragment/SettingsFragment;->access$100(Lcom/valvesoftware/android/steam/community/fragment/SettingsFragment;)Landroid/app/Activity;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Lcom/valvesoftware/android/steam/community/SettingInfo;->getBooleanValue(Landroid/content/Context;)Z

    move-result v2

    .line 296
    .local v2, "bValue":Z
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v3, v0}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 297
    invoke-virtual {v3, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 298
    new-instance v17, Lcom/valvesoftware/android/steam/community/fragment/SettingsFragment$SettingsListAdapter$3;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v11}, Lcom/valvesoftware/android/steam/community/fragment/SettingsFragment$SettingsListAdapter$3;-><init>(Lcom/valvesoftware/android/steam/community/fragment/SettingsFragment$SettingsListAdapter;Lcom/valvesoftware/android/steam/community/SettingInfo;)V

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 304
    new-instance v17, Lcom/valvesoftware/android/steam/community/fragment/SettingsFragment$SettingsListAdapter$4;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v3}, Lcom/valvesoftware/android/steam/community/fragment/SettingsFragment$SettingsListAdapter$4;-><init>(Lcom/valvesoftware/android/steam/community/fragment/SettingsFragment$SettingsListAdapter;Landroid/widget/CheckBox;)V

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_1

    .line 314
    .end local v2    # "bValue":Z
    :pswitch_4
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 315
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/valvesoftware/android/steam/community/fragment/SettingsFragment$SettingsListAdapter;->this$0:Lcom/valvesoftware/android/steam/community/fragment/SettingsFragment;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/valvesoftware/android/steam/community/fragment/SettingsFragment;->access$100(Lcom/valvesoftware/android/steam/community/fragment/SettingsFragment;)Landroid/app/Activity;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Lcom/valvesoftware/android/steam/community/SettingInfo;->getValue(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    .line 316
    .local v10, "sValue":Ljava/lang/String;
    invoke-static {v10}, Lcom/valvesoftware/android/steam/community/SettingInfo$DateConverter;->makeCalendar(Ljava/lang/String;)Ljava/util/Calendar;

    move-result-object v6

    .line 317
    .local v6, "myDOB":Ljava/util/Calendar;
    if-eqz v10, :cond_4

    const-string v17, ""

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_4

    .line 318
    invoke-static {v10}, Lcom/valvesoftware/android/steam/community/SettingInfo$DateConverter;->formatDate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 322
    :goto_2
    new-instance v17, Lcom/valvesoftware/android/steam/community/fragment/SettingsFragment$SettingsListAdapter$5;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v6, v15, v11}, Lcom/valvesoftware/android/steam/community/fragment/SettingsFragment$SettingsListAdapter$5;-><init>(Lcom/valvesoftware/android/steam/community/fragment/SettingsFragment$SettingsListAdapter;Ljava/util/Calendar;Landroid/widget/TextView;Lcom/valvesoftware/android/steam/community/SettingInfo;)V

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_1

    .line 320
    :cond_4
    const v17, 0x7f0800d3

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setText(I)V

    goto :goto_2

    .line 352
    .end local v6    # "myDOB":Ljava/util/Calendar;
    .end local v10    # "sValue":Ljava/lang/String;
    :pswitch_5
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 353
    new-instance v17, Lcom/valvesoftware/android/steam/community/fragment/SettingsFragment$SettingsListAdapter$6;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v11}, Lcom/valvesoftware/android/steam/community/fragment/SettingsFragment$SettingsListAdapter$6;-><init>(Lcom/valvesoftware/android/steam/community/fragment/SettingsFragment$SettingsListAdapter;Lcom/valvesoftware/android/steam/community/SettingInfo;)V

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_1

    .line 363
    :pswitch_6
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 365
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/valvesoftware/android/steam/community/fragment/SettingsFragment$SettingsListAdapter;->this$0:Lcom/valvesoftware/android/steam/community/fragment/SettingsFragment;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/valvesoftware/android/steam/community/fragment/SettingsFragment;->access$100(Lcom/valvesoftware/android/steam/community/fragment/SettingsFragment;)Landroid/app/Activity;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Lcom/valvesoftware/android/steam/community/SettingInfo;->getRadioSelectorItemValue(Landroid/content/Context;)Lcom/valvesoftware/android/steam/community/SettingInfo$RadioSelectorItem;

    move-result-object v9

    .line 366
    .local v9, "rsiValue":Lcom/valvesoftware/android/steam/community/SettingInfo$RadioSelectorItem;
    iget v0, v9, Lcom/valvesoftware/android/steam/community/SettingInfo$RadioSelectorItem;->resid_text:I

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setText(I)V

    .line 368
    new-instance v17, Lcom/valvesoftware/android/steam/community/fragment/SettingsFragment$RadioSelectorItemOnClickListener;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/valvesoftware/android/steam/community/fragment/SettingsFragment$SettingsListAdapter;->this$0:Lcom/valvesoftware/android/steam/community/fragment/SettingsFragment;

    move-object/from16 v18, v0

    .line 369
    invoke-virtual/range {v18 .. v18}, Lcom/valvesoftware/android/steam/community/fragment/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-direct {v0, v1, v11, v15}, Lcom/valvesoftware/android/steam/community/fragment/SettingsFragment$RadioSelectorItemOnClickListener;-><init>(Landroid/app/Activity;Lcom/valvesoftware/android/steam/community/SettingInfo;Landroid/widget/TextView;)V

    .line 368
    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_1

    .line 374
    .end local v9    # "rsiValue":Lcom/valvesoftware/android/steam/community/SettingInfo$RadioSelectorItem;
    :pswitch_7
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 377
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/valvesoftware/android/steam/community/fragment/SettingsFragment$SettingsListAdapter;->this$0:Lcom/valvesoftware/android/steam/community/fragment/SettingsFragment;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/valvesoftware/android/steam/community/fragment/SettingsFragment;->access$100(Lcom/valvesoftware/android/steam/community/fragment/SettingsFragment;)Landroid/app/Activity;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Lcom/valvesoftware/android/steam/community/SettingInfo;->getValue(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    .line 378
    .local v5, "curValue":Ljava/lang/String;
    if-eqz v5, :cond_5

    iget-object v0, v11, Lcom/valvesoftware/android/steam/community/SettingInfo;->m_defaultValue:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_5

    .line 379
    const v17, 0x7f080121

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setText(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 388
    .end local v5    # "curValue":Ljava/lang/String;
    :goto_3
    new-instance v17, Lcom/valvesoftware/android/steam/community/fragment/SettingsFragment$SettingsListAdapter$7;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v11}, Lcom/valvesoftware/android/steam/community/fragment/SettingsFragment$SettingsListAdapter$7;-><init>(Lcom/valvesoftware/android/steam/community/fragment/SettingsFragment$SettingsListAdapter;Lcom/valvesoftware/android/steam/community/SettingInfo;)V

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_1

    .line 381
    .restart local v5    # "curValue":Ljava/lang/String;
    :cond_5
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/valvesoftware/android/steam/community/fragment/SettingsFragment$SettingsListAdapter;->this$0:Lcom/valvesoftware/android/steam/community/fragment/SettingsFragment;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/valvesoftware/android/steam/community/fragment/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v17

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v8

    .line 382
    .local v8, "ring":Landroid/media/Ringtone;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/valvesoftware/android/steam/community/fragment/SettingsFragment$SettingsListAdapter;->this$0:Lcom/valvesoftware/android/steam/community/fragment/SettingsFragment;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/valvesoftware/android/steam/community/fragment/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Landroid/media/Ringtone;->getTitle(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    .line 385
    .end local v5    # "curValue":Ljava/lang/String;
    .end local v8    # "ring":Landroid/media/Ringtone;
    :catch_0
    move-exception v17

    const v17, 0x7f080120

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setText(I)V

    goto :goto_3

    .line 245
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_6
        :pswitch_7
        :pswitch_1
    .end packed-switch
.end method
