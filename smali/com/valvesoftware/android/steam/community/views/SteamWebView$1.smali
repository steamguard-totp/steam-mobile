.class Lcom/valvesoftware/android/steam/community/views/SteamWebView$1;
.super Ljava/lang/Object;
.source "SteamWebView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/valvesoftware/android/steam/community/views/SteamWebView;->setupView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/valvesoftware/android/steam/community/views/SteamWebView;


# direct methods
.method constructor <init>(Lcom/valvesoftware/android/steam/community/views/SteamWebView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/valvesoftware/android/steam/community/views/SteamWebView;

    .prologue
    .line 224
    iput-object p1, p0, Lcom/valvesoftware/android/steam/community/views/SteamWebView$1;->this$0:Lcom/valvesoftware/android/steam/community/views/SteamWebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 227
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 241
    .end local p1    # "v":Landroid/view/View;
    :cond_0
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 231
    .restart local p1    # "v":Landroid/view/View;
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_0

    .line 233
    instance-of v0, p1, Lcom/valvesoftware/android/steam/community/views/SteamWebView;

    if-eqz v0, :cond_1

    .line 234
    check-cast p1, Lcom/valvesoftware/android/steam/community/views/SteamWebView;

    .end local p1    # "v":Landroid/view/View;
    invoke-static {p1}, Lcom/valvesoftware/android/steam/community/views/SteamWebView;->access$200(Lcom/valvesoftware/android/steam/community/views/SteamWebView;)V

    goto :goto_0

    .line 236
    .restart local p1    # "v":Landroid/view/View;
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    goto :goto_0

    .line 227
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
