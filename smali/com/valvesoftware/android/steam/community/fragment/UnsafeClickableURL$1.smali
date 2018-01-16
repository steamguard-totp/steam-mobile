.class Lcom/valvesoftware/android/steam/community/fragment/UnsafeClickableURL$1;
.super Ljava/lang/Object;
.source "UnsafeClickableURL.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/valvesoftware/android/steam/community/fragment/UnsafeClickableURL;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/valvesoftware/android/steam/community/fragment/UnsafeClickableURL;

.field final synthetic val$finalView:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/valvesoftware/android/steam/community/fragment/UnsafeClickableURL;Landroid/view/View;)V
    .locals 0
    .param p1, "this$0"    # Lcom/valvesoftware/android/steam/community/fragment/UnsafeClickableURL;

    .prologue
    .line 44
    iput-object p1, p0, Lcom/valvesoftware/android/steam/community/fragment/UnsafeClickableURL$1;->this$0:Lcom/valvesoftware/android/steam/community/fragment/UnsafeClickableURL;

    iput-object p2, p0, Lcom/valvesoftware/android/steam/community/fragment/UnsafeClickableURL$1;->val$finalView:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 47
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/fragment/UnsafeClickableURL$1;->this$0:Lcom/valvesoftware/android/steam/community/fragment/UnsafeClickableURL;

    iget-object v1, p0, Lcom/valvesoftware/android/steam/community/fragment/UnsafeClickableURL$1;->val$finalView:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/valvesoftware/android/steam/community/fragment/UnsafeClickableURL;->HandleUserProcceedSelected(Landroid/view/View;)V

    .line 48
    return-void
.end method
