.class public Lcom/valvesoftware/android/steam/community/fragment/ChatViewAdapter;
.super Landroid/widget/ArrayAdapter;
.source "ChatViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/valvesoftware/android/steam/community/fragment/ChatViewAdapter$ChatViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/valvesoftware/android/steam/community/model/UmqMessage;",
        ">;"
    }
.end annotation


# static fields
.field private static chatPartnerIsTypingMessage:Lcom/valvesoftware/android/steam/community/model/UmqMessage;


# instance fields
.field private final activity:Landroid/support/v4/app/FragmentActivity;

.field private final chatFragment:Lcom/valvesoftware/android/steam/community/fragment/ChatFragment;

.field private chatPartnerAvatarUrl:Ljava/lang/String;

.field private imageLoader:Lcom/android/volley/toolbox/ImageLoader;

.field private m_bTyping:Z

.field private m_layoutInflater:Landroid/view/LayoutInflater;

.field private m_list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/valvesoftware/android/steam/community/model/UmqMessage;",
            ">;"
        }
    .end annotation
.end field

.field private m_longClickHandler:Landroid/view/View$OnLongClickListener;

.field private m_numSecondsTimestamps:I

.field private final messageOrderComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/valvesoftware/android/steam/community/model/UmqMessage;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;Landroid/view/LayoutInflater;Landroid/support/v4/app/FragmentActivity;Lcom/valvesoftware/android/steam/community/fragment/ChatFragment;Ljava/lang/String;)V
    .locals 1
    .param p2, "layoutInflater"    # Landroid/view/LayoutInflater;
    .param p3, "activity"    # Landroid/support/v4/app/FragmentActivity;
    .param p4, "chatFragment"    # Lcom/valvesoftware/android/steam/community/fragment/ChatFragment;
    .param p5, "chatPartnerAvatarUrl"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/valvesoftware/android/steam/community/model/UmqMessage;",
            ">;",
            "Landroid/view/LayoutInflater;",
            "Landroid/support/v4/app/FragmentActivity;",
            "Lcom/valvesoftware/android/steam/community/fragment/ChatFragment;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 67
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/valvesoftware/android/steam/community/model/UmqMessage;>;"
    const/4 v0, -0x1

    invoke-direct {p0, p3, v0, p1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 37
    const/16 v0, 0x384

    iput v0, p0, Lcom/valvesoftware/android/steam/community/fragment/ChatViewAdapter;->m_numSecondsTimestamps:I

    .line 39
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/valvesoftware/android/steam/community/fragment/ChatViewAdapter;->m_bTyping:Z

    .line 42
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/valvesoftware/android/steam/community/fragment/ChatViewAdapter;->m_longClickHandler:Landroid/view/View$OnLongClickListener;

    .line 45
    new-instance v0, Lcom/valvesoftware/android/steam/community/fragment/ChatViewAdapter$1;

    invoke-direct {v0, p0}, Lcom/valvesoftware/android/steam/community/fragment/ChatViewAdapter$1;-><init>(Lcom/valvesoftware/android/steam/community/fragment/ChatViewAdapter;)V

    iput-object v0, p0, Lcom/valvesoftware/android/steam/community/fragment/ChatViewAdapter;->messageOrderComparator:Ljava/util/Comparator;

    .line 68
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/fragment/ChatViewAdapter;->messageOrderComparator:Ljava/util/Comparator;

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 69
    iput-object p4, p0, Lcom/valvesoftware/android/steam/community/fragment/ChatViewAdapter;->chatFragment:Lcom/valvesoftware/android/steam/community/fragment/ChatFragment;

    .line 70
    iput-object p5, p0, Lcom/valvesoftware/android/steam/community/fragment/ChatViewAdapter;->chatPartnerAvatarUrl:Ljava/lang/String;

    .line 71
    iput-object p1, p0, Lcom/valvesoftware/android/steam/community/fragment/ChatViewAdapter;->m_list:Ljava/util/List;

    .line 72
    iput-object p2, p0, Lcom/valvesoftware/android/steam/community/fragment/ChatViewAdapter;->m_layoutInflater:Landroid/view/LayoutInflater;

    .line 73
    iput-object p3, p0, Lcom/valvesoftware/android/steam/community/fragment/ChatViewAdapter;->activity:Landroid/support/v4/app/FragmentActivity;

    .line 74
    invoke-static {}, Lcom/valvesoftware/android/steam/community/SteamCommunityApplication;->GetInstance()Lcom/valvesoftware/android/steam/community/SteamCommunityApplication;

    move-result-object v0

    iget-object v0, v0, Lcom/valvesoftware/android/steam/community/SteamCommunityApplication;->imageLoader:Lcom/android/volley/toolbox/ImageLoader;

    iput-object v0, p0, Lcom/valvesoftware/android/steam/community/fragment/ChatViewAdapter;->imageLoader:Lcom/android/volley/toolbox/ImageLoader;

    .line 76
    new-instance v0, Lcom/valvesoftware/android/steam/community/fragment/ChatViewAdapter$2;

    invoke-direct {v0, p0, p3}, Lcom/valvesoftware/android/steam/community/fragment/ChatViewAdapter$2;-><init>(Lcom/valvesoftware/android/steam/community/fragment/ChatViewAdapter;Landroid/support/v4/app/FragmentActivity;)V

    iput-object v0, p0, Lcom/valvesoftware/android/steam/community/fragment/ChatViewAdapter;->m_longClickHandler:Landroid/view/View$OnLongClickListener;

    .line 102
    return-void
.end method

.method private FormatMessageText(Lcom/valvesoftware/android/steam/community/model/UmqMessage;Landroid/widget/TextView;)V
    .locals 17
    .param p1, "message"    # Lcom/valvesoftware/android/steam/community/model/UmqMessage;
    .param p2, "text"    # Landroid/widget/TextView;

    .prologue
    .line 236
    const/4 v7, 0x0

    .line 238
    .local v7, "sTimestamp":Ljava/lang/String;
    :try_start_0
    move-object/from16 v0, p0

    iget v11, v0, Lcom/valvesoftware/android/steam/community/fragment/ChatViewAdapter;->m_numSecondsTimestamps:I

    if-gtz v11, :cond_0

    .line 239
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v12, 0x3

    invoke-static {v12}, Ljava/text/SimpleDateFormat;->getTimeInstance(I)Ljava/text/DateFormat;

    move-result-object v12

    new-instance v13, Ljava/util/Date;

    invoke-virtual/range {p1 .. p1}, Lcom/valvesoftware/android/steam/community/model/UmqMessage;->getUtcTimeStampInMilliseconds()J

    move-result-wide v14

    invoke-direct {v13, v14, v15}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v12, v13}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v7

    .line 246
    :cond_0
    :goto_0
    if-eqz v7, :cond_3

    .line 247
    :try_start_1
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/valvesoftware/android/steam/community/model/UmqMessage;->text:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Landroid/text/SpannableString;->valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannableString;

    move-result-object v8

    .line 252
    .local v8, "spannedText":Landroid/text/SpannableString;
    :goto_1
    const/16 v11, 0xf

    invoke-static {v8, v11}, Landroid/text/util/Linkify;->addLinks(Landroid/text/Spannable;I)Z

    .line 253
    const/4 v11, 0x0

    invoke-virtual {v8}, Landroid/text/SpannableString;->length()I

    move-result v12

    const-class v13, Ljava/lang/Object;

    invoke-virtual {v8, v11, v12, v13}, Landroid/text/SpannableString;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v9

    .line 254
    .local v9, "urls":[Ljava/lang/Object;
    if-eqz v9, :cond_7

    array-length v11, v9

    if-lez v11, :cond_7

    .line 255
    invoke-static {}, Lcom/valvesoftware/android/steam/community/SteamCommunityApplication;->GetInstance()Lcom/valvesoftware/android/steam/community/SteamCommunityApplication;

    move-result-object v11

    invoke-virtual {v11}, Lcom/valvesoftware/android/steam/community/SteamCommunityApplication;->GetSettingInfoDB()Lcom/valvesoftware/android/steam/community/SettingInfoDB;

    move-result-object v11

    iget-object v11, v11, Lcom/valvesoftware/android/steam/community/SettingInfoDB;->m_settingChatsAlertLinks:Lcom/valvesoftware/android/steam/community/SettingInfo;

    invoke-static {}, Lcom/valvesoftware/android/steam/community/SteamCommunityApplication;->GetInstance()Lcom/valvesoftware/android/steam/community/SteamCommunityApplication;

    move-result-object v12

    invoke-virtual {v12}, Lcom/valvesoftware/android/steam/community/SteamCommunityApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/valvesoftware/android/steam/community/SettingInfo;->getBooleanValue(Landroid/content/Context;)Z

    move-result v2

    .line 256
    .local v2, "bAlertUnsafeLinks":Z
    array-length v14, v9

    const/4 v11, 0x0

    move v13, v11

    :goto_2
    if-ge v13, v14, :cond_7

    aget-object v10, v9, v13

    .line 257
    .local v10, "xUrl":Ljava/lang/Object;
    invoke-virtual {v8, v10}, Landroid/text/SpannableString;->getSpanStart(Ljava/lang/Object;)I

    move-result v6

    .line 258
    .local v6, "nStart":I
    invoke-virtual {v8, v10}, Landroid/text/SpannableString;->getSpanEnd(Ljava/lang/Object;)I

    move-result v5

    .line 259
    .local v5, "nEnd":I
    invoke-virtual {v8, v10}, Landroid/text/SpannableString;->getSpanFlags(Ljava/lang/Object;)I

    move-result v3

    .line 264
    .local v3, "flags":I
    instance-of v11, v10, Landroid/text/style/URLSpan;

    if-eqz v11, :cond_5

    .line 265
    invoke-virtual {v8, v10}, Landroid/text/SpannableString;->removeSpan(Ljava/lang/Object;)V

    .line 266
    if-eqz v7, :cond_1

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v11

    if-ge v6, v11, :cond_1

    .line 267
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v6

    .line 268
    :cond_1
    if-le v5, v6, :cond_2

    .line 269
    new-instance v15, Lcom/valvesoftware/android/steam/community/fragment/UnsafeClickableURL;

    move-object v0, v10

    check-cast v0, Landroid/text/style/URLSpan;

    move-object v11, v0

    if-eqz v2, :cond_4

    check-cast v10, Landroid/text/style/URLSpan;

    .line 270
    .end local v10    # "xUrl":Ljava/lang/Object;
    invoke-static {v10}, Lcom/valvesoftware/android/steam/community/fragment/UrlChecker;->isUrlUnsafe(Landroid/text/style/URLSpan;)Z

    move-result v12

    if-eqz v12, :cond_4

    const/4 v12, 0x1

    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/valvesoftware/android/steam/community/fragment/ChatViewAdapter;->activity:Landroid/support/v4/app/FragmentActivity;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-direct {v15, v11, v12, v0}, Lcom/valvesoftware/android/steam/community/fragment/UnsafeClickableURL;-><init>(Landroid/text/style/URLSpan;ZLandroid/support/v4/app/FragmentActivity;)V

    .line 269
    invoke-virtual {v8, v15, v6, v5, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 256
    :cond_2
    :goto_4
    add-int/lit8 v11, v13, 0x1

    move v13, v11

    goto :goto_2

    .line 249
    .end local v2    # "bAlertUnsafeLinks":Z
    .end local v3    # "flags":I
    .end local v5    # "nEnd":I
    .end local v6    # "nStart":I
    .end local v8    # "spannedText":Landroid/text/SpannableString;
    .end local v9    # "urls":[Ljava/lang/Object;
    :cond_3
    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/valvesoftware/android/steam/community/model/UmqMessage;->text:Ljava/lang/String;

    invoke-static {v11}, Landroid/text/SpannableString;->valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannableString;

    move-result-object v8

    .restart local v8    # "spannedText":Landroid/text/SpannableString;
    goto :goto_1

    .line 270
    .restart local v2    # "bAlertUnsafeLinks":Z
    .restart local v3    # "flags":I
    .restart local v5    # "nEnd":I
    .restart local v6    # "nStart":I
    .restart local v9    # "urls":[Ljava/lang/Object;
    :cond_4
    const/4 v12, 0x0

    goto :goto_3

    .line 275
    .restart local v10    # "xUrl":Ljava/lang/Object;
    :cond_5
    if-eqz v7, :cond_2

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v11

    if-ge v6, v11, :cond_2

    .line 276
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v6

    .line 277
    invoke-virtual {v8, v10}, Landroid/text/SpannableString;->removeSpan(Ljava/lang/Object;)V

    .line 278
    if-le v5, v6, :cond_2

    .line 279
    invoke-virtual {v8, v10, v6, v5, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4

    .line 296
    .end local v2    # "bAlertUnsafeLinks":Z
    .end local v3    # "flags":I
    .end local v5    # "nEnd":I
    .end local v6    # "nStart":I
    .end local v8    # "spannedText":Landroid/text/SpannableString;
    .end local v9    # "urls":[Ljava/lang/Object;
    .end local v10    # "xUrl":Ljava/lang/Object;
    :catch_0
    move-exception v11

    if-eqz v7, :cond_9

    .line 297
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/valvesoftware/android/steam/community/model/UmqMessage;->text:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p2

    invoke-static {v0, v11}, Lcom/valvesoftware/android/steam/community/AndroidUtils;->setTextViewText(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 301
    :cond_6
    :goto_5
    return-void

    .line 287
    .restart local v8    # "spannedText":Landroid/text/SpannableString;
    .restart local v9    # "urls":[Ljava/lang/Object;
    :cond_7
    :try_start_2
    move-object/from16 v0, p2

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 288
    invoke-virtual/range {p2 .. p2}, Landroid/widget/TextView;->getMovementMethod()Landroid/text/method/MovementMethod;

    move-result-object v4

    .line 289
    .local v4, "mm":Landroid/text/method/MovementMethod;
    if-eqz v4, :cond_8

    instance-of v11, v4, Landroid/text/method/LinkMovementMethod;

    if-nez v11, :cond_6

    .line 290
    :cond_8
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v11

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_5

    .line 292
    .end local v4    # "mm":Landroid/text/method/MovementMethod;
    :catch_1
    move-exception v11

    :try_start_3
    const-string v11, ""

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_5

    .line 299
    .end local v8    # "spannedText":Landroid/text/SpannableString;
    .end local v9    # "urls":[Ljava/lang/Object;
    :cond_9
    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/valvesoftware/android/steam/community/model/UmqMessage;->text:Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-static {v0, v11}, Lcom/valvesoftware/android/steam/community/AndroidUtils;->setTextViewText(Landroid/widget/TextView;Ljava/lang/String;)V

    goto :goto_5

    :catch_2
    move-exception v11

    goto/16 :goto_0
.end method

.method static synthetic access$100(Lcom/valvesoftware/android/steam/community/fragment/ChatViewAdapter;)Lcom/valvesoftware/android/steam/community/fragment/ChatFragment;
    .locals 1
    .param p0, "x0"    # Lcom/valvesoftware/android/steam/community/fragment/ChatViewAdapter;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/fragment/ChatViewAdapter;->chatFragment:Lcom/valvesoftware/android/steam/community/fragment/ChatFragment;

    return-object v0
.end method

.method private static getTypingMessage()Lcom/valvesoftware/android/steam/community/model/UmqMessage;
    .locals 4

    .prologue
    .line 305
    sget-object v0, Lcom/valvesoftware/android/steam/community/fragment/ChatViewAdapter;->chatPartnerIsTypingMessage:Lcom/valvesoftware/android/steam/community/model/UmqMessage;

    if-nez v0, :cond_0

    .line 306
    new-instance v0, Lcom/valvesoftware/android/steam/community/model/UmqMessage;

    invoke-direct {v0}, Lcom/valvesoftware/android/steam/community/model/UmqMessage;-><init>()V

    sput-object v0, Lcom/valvesoftware/android/steam/community/fragment/ChatViewAdapter;->chatPartnerIsTypingMessage:Lcom/valvesoftware/android/steam/community/model/UmqMessage;

    .line 307
    sget-object v0, Lcom/valvesoftware/android/steam/community/fragment/ChatViewAdapter;->chatPartnerIsTypingMessage:Lcom/valvesoftware/android/steam/community/model/UmqMessage;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/valvesoftware/android/steam/community/model/UmqMessage;->isIncoming:Z

    .line 308
    sget-object v0, Lcom/valvesoftware/android/steam/community/fragment/ChatViewAdapter;->chatPartnerIsTypingMessage:Lcom/valvesoftware/android/steam/community/model/UmqMessage;

    const-string v1, "..."

    iput-object v1, v0, Lcom/valvesoftware/android/steam/community/model/UmqMessage;->text:Ljava/lang/String;

    .line 309
    sget-object v0, Lcom/valvesoftware/android/steam/community/fragment/ChatViewAdapter;->chatPartnerIsTypingMessage:Lcom/valvesoftware/android/steam/community/model/UmqMessage;

    sget-object v1, Lcom/valvesoftware/android/steam/community/model/UmqMessageType;->TYPING:Lcom/valvesoftware/android/steam/community/model/UmqMessageType;

    iput-object v1, v0, Lcom/valvesoftware/android/steam/community/model/UmqMessage;->type:Lcom/valvesoftware/android/steam/community/model/UmqMessageType;

    .line 310
    sget-object v0, Lcom/valvesoftware/android/steam/community/fragment/ChatViewAdapter;->chatPartnerIsTypingMessage:Lcom/valvesoftware/android/steam/community/model/UmqMessage;

    const-wide/32 v2, 0x7fffffff

    iput-wide v2, v0, Lcom/valvesoftware/android/steam/community/model/UmqMessage;->utcTimeStamp:J

    .line 312
    :cond_0
    sget-object v0, Lcom/valvesoftware/android/steam/community/fragment/ChatViewAdapter;->chatPartnerIsTypingMessage:Lcom/valvesoftware/android/steam/community/model/UmqMessage;

    return-object v0
.end method

.method private showIsTyping(Z)V
    .locals 2
    .param p1, "typing"    # Z

    .prologue
    .line 123
    iget-boolean v0, p0, Lcom/valvesoftware/android/steam/community/fragment/ChatViewAdapter;->m_bTyping:Z

    if-eq v0, p1, :cond_0

    .line 124
    iput-boolean p1, p0, Lcom/valvesoftware/android/steam/community/fragment/ChatViewAdapter;->m_bTyping:Z

    .line 125
    iget-boolean v0, p0, Lcom/valvesoftware/android/steam/community/fragment/ChatViewAdapter;->m_bTyping:Z

    if-eqz v0, :cond_1

    .line 126
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/fragment/ChatViewAdapter;->m_list:Ljava/util/List;

    invoke-static {}, Lcom/valvesoftware/android/steam/community/fragment/ChatViewAdapter;->getTypingMessage()Lcom/valvesoftware/android/steam/community/model/UmqMessage;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 130
    :goto_0
    invoke-virtual {p0}, Lcom/valvesoftware/android/steam/community/fragment/ChatViewAdapter;->notifyDataSetChanged()V

    .line 132
    :cond_0
    return-void

    .line 128
    :cond_1
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/fragment/ChatViewAdapter;->m_list:Ljava/util/List;

    invoke-static {}, Lcom/valvesoftware/android/steam/community/fragment/ChatViewAdapter;->getTypingMessage()Lcom/valvesoftware/android/steam/community/model/UmqMessage;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method


# virtual methods
.method public attach(Landroid/widget/ListView;)V
    .locals 0
    .param p1, "lv"    # Landroid/widget/ListView;

    .prologue
    .line 135
    invoke-virtual {p1, p0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 136
    return-void
.end method

.method public getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 231
    invoke-virtual {p0, p1, p2, p3}, Lcom/valvesoftware/android/steam/community/fragment/ChatViewAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 20
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 140
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/valvesoftware/android/steam/community/fragment/ChatViewAdapter;->m_list:Ljava/util/List;

    move/from16 v0, p1

    invoke-interface {v13, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/valvesoftware/android/steam/community/model/UmqMessage;

    .line 143
    .local v5, "message":Lcom/valvesoftware/android/steam/community/model/UmqMessage;
    if-nez p2, :cond_0

    .line 144
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/valvesoftware/android/steam/community/fragment/ChatViewAdapter;->m_layoutInflater:Landroid/view/LayoutInflater;

    const v16, 0x7f030022

    const/16 v17, 0x0

    move/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v13, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 146
    new-instance v4, Lcom/valvesoftware/android/steam/community/fragment/ChatViewAdapter$ChatViewHolder;

    const/4 v13, 0x0

    invoke-direct {v4, v13}, Lcom/valvesoftware/android/steam/community/fragment/ChatViewAdapter$ChatViewHolder;-><init>(Lcom/valvesoftware/android/steam/community/fragment/ChatViewAdapter$1;)V

    .line 147
    .local v4, "holder":Lcom/valvesoftware/android/steam/community/fragment/ChatViewAdapter$ChatViewHolder;
    const v13, 0x7f0e00cf

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    iput-object v13, v4, Lcom/valvesoftware/android/steam/community/fragment/ChatViewAdapter$ChatViewHolder;->chatPartnerLayoutContainer:Landroid/view/View;

    .line 148
    const v13, 0x7f0e00d3

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    iput-object v13, v4, Lcom/valvesoftware/android/steam/community/fragment/ChatViewAdapter$ChatViewHolder;->loggedInUserLayoutContainer:Landroid/view/View;

    .line 149
    const v13, 0x7f0e00d0

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Lcom/android/volley/toolbox/NetworkImageView;

    iput-object v13, v4, Lcom/valvesoftware/android/steam/community/fragment/ChatViewAdapter$ChatViewHolder;->chatPartnerAvatar:Lcom/android/volley/toolbox/NetworkImageView;

    .line 150
    const v13, 0x7f0e00d1

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    iput-object v13, v4, Lcom/valvesoftware/android/steam/community/fragment/ChatViewAdapter$ChatViewHolder;->chatPartnerTextView:Landroid/widget/TextView;

    .line 151
    const v13, 0x7f0e00d4

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    iput-object v13, v4, Lcom/valvesoftware/android/steam/community/fragment/ChatViewAdapter$ChatViewHolder;->loggedInUserTextView:Landroid/widget/TextView;

    .line 152
    const v13, 0x7f0e00ce

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    iput-object v13, v4, Lcom/valvesoftware/android/steam/community/fragment/ChatViewAdapter$ChatViewHolder;->extraPaddingView:Landroid/view/View;

    .line 153
    const v13, 0x7f0e00d5

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    iput-object v13, v4, Lcom/valvesoftware/android/steam/community/fragment/ChatViewAdapter$ChatViewHolder;->loggedInUserTimestampTextView:Landroid/widget/TextView;

    .line 154
    const v13, 0x7f0e00d2

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    iput-object v13, v4, Lcom/valvesoftware/android/steam/community/fragment/ChatViewAdapter$ChatViewHolder;->chatPartnerTimestampTextView:Landroid/widget/TextView;

    .line 155
    iget-object v13, v4, Lcom/valvesoftware/android/steam/community/fragment/ChatViewAdapter$ChatViewHolder;->chatPartnerTextView:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/valvesoftware/android/steam/community/fragment/ChatViewAdapter;->m_longClickHandler:Landroid/view/View$OnLongClickListener;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Landroid/widget/TextView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 156
    const v13, 0x7f0e00d6

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    iput-object v13, v4, Lcom/valvesoftware/android/steam/community/fragment/ChatViewAdapter$ChatViewHolder;->sendErrorTextView:Landroid/widget/TextView;

    .line 157
    iput-object v5, v4, Lcom/valvesoftware/android/steam/community/fragment/ChatViewAdapter$ChatViewHolder;->umqMessage:Lcom/valvesoftware/android/steam/community/model/UmqMessage;

    .line 158
    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 163
    :goto_0
    invoke-virtual {v5}, Lcom/valvesoftware/android/steam/community/model/UmqMessage;->getUtcTimeStampInMilliseconds()J

    move-result-wide v8

    .line 164
    .local v8, "messageTimestampInMilliseconds":J
    const-wide/32 v16, 0x5265c00

    div-long v6, v8, v16

    .line 165
    .local v6, "messageDayNumber":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    const-wide/32 v18, 0x5265c00

    div-long v14, v16, v18

    .line 168
    .local v14, "todaysDayNumber":J
    cmp-long v13, v14, v6

    if-nez v13, :cond_1

    .line 169
    const/4 v13, 0x3

    invoke-static {v13}, Ljava/text/SimpleDateFormat;->getTimeInstance(I)Ljava/text/DateFormat;

    move-result-object v3

    .line 174
    .local v3, "fmtTimestamp":Ljava/text/DateFormat;
    :goto_1
    new-instance v2, Ljava/util/Date;

    invoke-virtual {v5}, Lcom/valvesoftware/android/steam/community/model/UmqMessage;->getUtcTimeStampInMilliseconds()J

    move-result-wide v16

    move-wide/from16 v0, v16

    invoke-direct {v2, v0, v1}, Ljava/util/Date;-><init>(J)V

    .line 175
    .local v2, "d":Ljava/util/Date;
    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v16

    const-wide/16 v18, 0x0

    cmp-long v13, v16, v18

    if-lez v13, :cond_2

    invoke-virtual {v3, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v12

    .line 177
    .local v12, "timestamp":Ljava/lang/String;
    :goto_2
    iget-boolean v13, v5, Lcom/valvesoftware/android/steam/community/model/UmqMessage;->isIncoming:Z

    if-eqz v13, :cond_4

    .line 178
    iget-object v13, v4, Lcom/valvesoftware/android/steam/community/fragment/ChatViewAdapter$ChatViewHolder;->loggedInUserLayoutContainer:Landroid/view/View;

    const/16 v16, 0x8

    move/from16 v0, v16

    invoke-virtual {v13, v0}, Landroid/view/View;->setVisibility(I)V

    .line 179
    iget-object v13, v4, Lcom/valvesoftware/android/steam/community/fragment/ChatViewAdapter$ChatViewHolder;->chatPartnerLayoutContainer:Landroid/view/View;

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v13, v0}, Landroid/view/View;->setVisibility(I)V

    .line 180
    iget-object v13, v4, Lcom/valvesoftware/android/steam/community/fragment/ChatViewAdapter$ChatViewHolder;->chatPartnerAvatar:Lcom/android/volley/toolbox/NetworkImageView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/valvesoftware/android/steam/community/fragment/ChatViewAdapter;->chatPartnerAvatarUrl:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/valvesoftware/android/steam/community/fragment/ChatViewAdapter;->imageLoader:Lcom/android/volley/toolbox/ImageLoader;

    move-object/from16 v17, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v13, v0, v1}, Lcom/android/volley/toolbox/NetworkImageView;->setImageUrl(Ljava/lang/String;Lcom/android/volley/toolbox/ImageLoader;)V

    .line 181
    iget-object v13, v4, Lcom/valvesoftware/android/steam/community/fragment/ChatViewAdapter$ChatViewHolder;->chatPartnerTextView:Landroid/widget/TextView;

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v13}, Lcom/valvesoftware/android/steam/community/fragment/ChatViewAdapter;->FormatMessageText(Lcom/valvesoftware/android/steam/community/model/UmqMessage;Landroid/widget/TextView;)V

    .line 182
    invoke-static {}, Lcom/valvesoftware/android/steam/community/fragment/ChatViewAdapter;->getTypingMessage()Lcom/valvesoftware/android/steam/community/model/UmqMessage;

    move-result-object v13

    if-eq v5, v13, :cond_3

    .line 183
    iget-object v13, v4, Lcom/valvesoftware/android/steam/community/fragment/ChatViewAdapter$ChatViewHolder;->chatPartnerTimestampTextView:Landroid/widget/TextView;

    invoke-virtual {v13, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 184
    iget-object v13, v4, Lcom/valvesoftware/android/steam/community/fragment/ChatViewAdapter$ChatViewHolder;->chatPartnerTimestampTextView:Landroid/widget/TextView;

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v13, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 218
    :goto_3
    if-lez p1, :cond_6

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/valvesoftware/android/steam/community/fragment/ChatViewAdapter;->m_list:Ljava/util/List;

    add-int/lit8 v16, p1, -0x1

    move/from16 v0, v16

    invoke-interface {v13, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/valvesoftware/android/steam/community/model/UmqMessage;

    move-object v10, v13

    .line 220
    .local v10, "msgPrev":Lcom/valvesoftware/android/steam/community/model/UmqMessage;
    :goto_4
    if-eqz v10, :cond_7

    iget-boolean v13, v10, Lcom/valvesoftware/android/steam/community/model/UmqMessage;->isIncoming:Z

    iget-boolean v0, v5, Lcom/valvesoftware/android/steam/community/model/UmqMessage;->isIncoming:Z

    move/from16 v16, v0

    move/from16 v0, v16

    if-eq v13, v0, :cond_7

    .line 221
    iget-object v13, v4, Lcom/valvesoftware/android/steam/community/fragment/ChatViewAdapter$ChatViewHolder;->extraPaddingView:Landroid/view/View;

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v13, v0}, Landroid/view/View;->setVisibility(I)V

    .line 226
    :goto_5
    return-object p2

    .line 160
    .end local v2    # "d":Ljava/util/Date;
    .end local v3    # "fmtTimestamp":Ljava/text/DateFormat;
    .end local v4    # "holder":Lcom/valvesoftware/android/steam/community/fragment/ChatViewAdapter$ChatViewHolder;
    .end local v6    # "messageDayNumber":J
    .end local v8    # "messageTimestampInMilliseconds":J
    .end local v10    # "msgPrev":Lcom/valvesoftware/android/steam/community/model/UmqMessage;
    .end local v12    # "timestamp":Ljava/lang/String;
    .end local v14    # "todaysDayNumber":J
    :cond_0
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/valvesoftware/android/steam/community/fragment/ChatViewAdapter$ChatViewHolder;

    .restart local v4    # "holder":Lcom/valvesoftware/android/steam/community/fragment/ChatViewAdapter$ChatViewHolder;
    goto/16 :goto_0

    .line 171
    .restart local v6    # "messageDayNumber":J
    .restart local v8    # "messageTimestampInMilliseconds":J
    .restart local v14    # "todaysDayNumber":J
    :cond_1
    const/4 v13, 0x3

    const/16 v16, 0x3

    move/from16 v0, v16

    invoke-static {v13, v0}, Ljava/text/SimpleDateFormat;->getDateTimeInstance(II)Ljava/text/DateFormat;

    move-result-object v3

    .restart local v3    # "fmtTimestamp":Ljava/text/DateFormat;
    goto/16 :goto_1

    .line 175
    .restart local v2    # "d":Ljava/util/Date;
    :cond_2
    const-string v12, ""

    goto/16 :goto_2

    .line 186
    .restart local v12    # "timestamp":Ljava/lang/String;
    :cond_3
    iget-object v13, v4, Lcom/valvesoftware/android/steam/community/fragment/ChatViewAdapter$ChatViewHolder;->chatPartnerTimestampTextView:Landroid/widget/TextView;

    const/16 v16, 0x8

    move/from16 v0, v16

    invoke-virtual {v13, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3

    .line 189
    :cond_4
    iget-object v13, v4, Lcom/valvesoftware/android/steam/community/fragment/ChatViewAdapter$ChatViewHolder;->chatPartnerLayoutContainer:Landroid/view/View;

    const/16 v16, 0x8

    move/from16 v0, v16

    invoke-virtual {v13, v0}, Landroid/view/View;->setVisibility(I)V

    .line 190
    iget-object v13, v4, Lcom/valvesoftware/android/steam/community/fragment/ChatViewAdapter$ChatViewHolder;->loggedInUserLayoutContainer:Landroid/view/View;

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v13, v0}, Landroid/view/View;->setVisibility(I)V

    .line 191
    iget-object v13, v4, Lcom/valvesoftware/android/steam/community/fragment/ChatViewAdapter$ChatViewHolder;->loggedInUserTextView:Landroid/widget/TextView;

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v13}, Lcom/valvesoftware/android/steam/community/fragment/ChatViewAdapter;->FormatMessageText(Lcom/valvesoftware/android/steam/community/model/UmqMessage;Landroid/widget/TextView;)V

    .line 193
    iget-boolean v13, v5, Lcom/valvesoftware/android/steam/community/model/UmqMessage;->hadSendError:Z

    if-nez v13, :cond_5

    .line 194
    iget-object v13, v4, Lcom/valvesoftware/android/steam/community/fragment/ChatViewAdapter$ChatViewHolder;->loggedInUserTimestampTextView:Landroid/widget/TextView;

    invoke-virtual {v13, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 195
    iget-object v13, v4, Lcom/valvesoftware/android/steam/community/fragment/ChatViewAdapter$ChatViewHolder;->loggedInUserTimestampTextView:Landroid/widget/TextView;

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v13, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 196
    iget-object v13, v4, Lcom/valvesoftware/android/steam/community/fragment/ChatViewAdapter$ChatViewHolder;->sendErrorTextView:Landroid/widget/TextView;

    const/16 v16, 0x8

    move/from16 v0, v16

    invoke-virtual {v13, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 197
    iget-object v13, v4, Lcom/valvesoftware/android/steam/community/fragment/ChatViewAdapter$ChatViewHolder;->loggedInUserTextView:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/valvesoftware/android/steam/community/fragment/ChatViewAdapter;->m_longClickHandler:Landroid/view/View$OnLongClickListener;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Landroid/widget/TextView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    goto/16 :goto_3

    .line 199
    :cond_5
    new-instance v11, Lcom/valvesoftware/android/steam/community/fragment/ChatViewAdapter$3;

    move-object/from16 v0, p0

    invoke-direct {v11, v0, v5}, Lcom/valvesoftware/android/steam/community/fragment/ChatViewAdapter$3;-><init>(Lcom/valvesoftware/android/steam/community/fragment/ChatViewAdapter;Lcom/valvesoftware/android/steam/community/model/UmqMessage;)V

    .line 208
    .local v11, "onErrorRetryClickListener":Landroid/view/View$OnClickListener;
    iget-object v13, v4, Lcom/valvesoftware/android/steam/community/fragment/ChatViewAdapter$ChatViewHolder;->loggedInUserLayoutContainer:Landroid/view/View;

    invoke-virtual {v13, v11}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 209
    iget-object v13, v4, Lcom/valvesoftware/android/steam/community/fragment/ChatViewAdapter$ChatViewHolder;->loggedInUserTextView:Landroid/widget/TextView;

    invoke-virtual {v13, v11}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 210
    iget-object v13, v4, Lcom/valvesoftware/android/steam/community/fragment/ChatViewAdapter$ChatViewHolder;->sendErrorTextView:Landroid/widget/TextView;

    invoke-virtual {v13, v11}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 213
    iget-object v13, v4, Lcom/valvesoftware/android/steam/community/fragment/ChatViewAdapter$ChatViewHolder;->sendErrorTextView:Landroid/widget/TextView;

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v13, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 214
    iget-object v13, v4, Lcom/valvesoftware/android/steam/community/fragment/ChatViewAdapter$ChatViewHolder;->loggedInUserTimestampTextView:Landroid/widget/TextView;

    const/16 v16, 0x8

    move/from16 v0, v16

    invoke-virtual {v13, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_3

    .line 218
    .end local v11    # "onErrorRetryClickListener":Landroid/view/View$OnClickListener;
    :cond_6
    const/4 v10, 0x0

    goto/16 :goto_4

    .line 223
    .restart local v10    # "msgPrev":Lcom/valvesoftware/android/steam/community/model/UmqMessage;
    :cond_7
    iget-object v13, v4, Lcom/valvesoftware/android/steam/community/fragment/ChatViewAdapter$ChatViewHolder;->extraPaddingView:Landroid/view/View;

    const/16 v16, 0x8

    move/from16 v0, v16

    invoke-virtual {v13, v0}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_5
.end method

.method public hideIsTyping()V
    .locals 1

    .prologue
    .line 119
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/valvesoftware/android/steam/community/fragment/ChatViewAdapter;->showIsTyping(Z)V

    .line 120
    return-void
.end method

.method public notifyDataSetChanged()V
    .locals 2

    .prologue
    .line 106
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/fragment/ChatViewAdapter;->m_list:Ljava/util/List;

    iget-object v1, p0, Lcom/valvesoftware/android/steam/community/fragment/ChatViewAdapter;->messageOrderComparator:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 107
    invoke-super {p0}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    .line 108
    return-void
.end method

.method public setChatPartnerAvatarUrl(Ljava/lang/String;)V
    .locals 1
    .param p1, "chatPartnerAvatarUrl"    # Ljava/lang/String;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/fragment/ChatViewAdapter;->chatPartnerAvatarUrl:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/fragment/ChatViewAdapter;->chatPartnerAvatarUrl:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 63
    :goto_0
    return-void

    .line 61
    :cond_0
    iput-object p1, p0, Lcom/valvesoftware/android/steam/community/fragment/ChatViewAdapter;->chatPartnerAvatarUrl:Ljava/lang/String;

    .line 62
    invoke-virtual {p0}, Lcom/valvesoftware/android/steam/community/fragment/ChatViewAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method public showIsTyping()V
    .locals 1

    .prologue
    .line 115
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/valvesoftware/android/steam/community/fragment/ChatViewAdapter;->showIsTyping(Z)V

    .line 116
    return-void
.end method
