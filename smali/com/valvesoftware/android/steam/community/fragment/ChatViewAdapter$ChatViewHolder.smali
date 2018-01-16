.class Lcom/valvesoftware/android/steam/community/fragment/ChatViewAdapter$ChatViewHolder;
.super Ljava/lang/Object;
.source "ChatViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/valvesoftware/android/steam/community/fragment/ChatViewAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ChatViewHolder"
.end annotation


# instance fields
.field public chatPartnerAvatar:Lcom/android/volley/toolbox/NetworkImageView;

.field public chatPartnerLayoutContainer:Landroid/view/View;

.field public chatPartnerTextView:Landroid/widget/TextView;

.field public chatPartnerTimestampTextView:Landroid/widget/TextView;

.field public extraPaddingView:Landroid/view/View;

.field public loggedInUserLayoutContainer:Landroid/view/View;

.field public loggedInUserTextView:Landroid/widget/TextView;

.field public loggedInUserTimestampTextView:Landroid/widget/TextView;

.field public sendErrorTextView:Landroid/widget/TextView;

.field public umqMessage:Lcom/valvesoftware/android/steam/community/model/UmqMessage;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 315
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/valvesoftware/android/steam/community/fragment/ChatViewAdapter$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/valvesoftware/android/steam/community/fragment/ChatViewAdapter$1;

    .prologue
    .line 315
    invoke-direct {p0}, Lcom/valvesoftware/android/steam/community/fragment/ChatViewAdapter$ChatViewHolder;-><init>()V

    return-void
.end method
