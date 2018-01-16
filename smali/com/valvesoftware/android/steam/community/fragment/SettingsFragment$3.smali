.class Lcom/valvesoftware/android/steam/community/fragment/SettingsFragment$3;
.super Lcom/valvesoftware/android/steam/community/webrequests/ImageResponseListener;
.source "SettingsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/valvesoftware/android/steam/community/fragment/SettingsFragment;->getAvatar(Lcom/valvesoftware/android/steam/community/model/Persona;Landroid/widget/ImageView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/valvesoftware/android/steam/community/fragment/SettingsFragment;

.field final synthetic val$avatarView:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Lcom/valvesoftware/android/steam/community/fragment/SettingsFragment;Landroid/widget/ImageView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/valvesoftware/android/steam/community/fragment/SettingsFragment;

    .prologue
    .line 140
    iput-object p1, p0, Lcom/valvesoftware/android/steam/community/fragment/SettingsFragment$3;->this$0:Lcom/valvesoftware/android/steam/community/fragment/SettingsFragment;

    iput-object p2, p0, Lcom/valvesoftware/android/steam/community/fragment/SettingsFragment$3;->val$avatarView:Landroid/widget/ImageView;

    invoke-direct {p0}, Lcom/valvesoftware/android/steam/community/webrequests/ImageResponseListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onSuccess(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 143
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/fragment/SettingsFragment$3;->val$avatarView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 144
    return-void
.end method
