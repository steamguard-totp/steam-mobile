.class Lcom/valvesoftware/android/steam/community/activity/BaseActivity$18;
.super Ljava/lang/Object;
.source "BaseActivity.java"

# interfaces
.implements Lcom/valvesoftware/android/steam/community/RepositoryCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/valvesoftware/android/steam/community/activity/BaseActivity;->loadUserInfo(Landroid/widget/ImageView;Landroid/widget/TextView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/valvesoftware/android/steam/community/RepositoryCallback",
        "<",
        "Lcom/valvesoftware/android/steam/community/model/Persona;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/valvesoftware/android/steam/community/activity/BaseActivity;

.field final synthetic val$avatarView:Landroid/widget/ImageView;

.field final synthetic val$nameView:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/valvesoftware/android/steam/community/activity/BaseActivity;Landroid/widget/TextView;Landroid/widget/ImageView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/valvesoftware/android/steam/community/activity/BaseActivity;

    .prologue
    .line 776
    iput-object p1, p0, Lcom/valvesoftware/android/steam/community/activity/BaseActivity$18;->this$0:Lcom/valvesoftware/android/steam/community/activity/BaseActivity;

    iput-object p2, p0, Lcom/valvesoftware/android/steam/community/activity/BaseActivity$18;->val$nameView:Landroid/widget/TextView;

    iput-object p3, p0, Lcom/valvesoftware/android/steam/community/activity/BaseActivity$18;->val$avatarView:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dataAvailable(Lcom/valvesoftware/android/steam/community/model/Persona;)V
    .locals 3
    .param p1, "persona"    # Lcom/valvesoftware/android/steam/community/model/Persona;

    .prologue
    .line 779
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/activity/BaseActivity$18;->this$0:Lcom/valvesoftware/android/steam/community/activity/BaseActivity;

    iput-object p1, v0, Lcom/valvesoftware/android/steam/community/activity/BaseActivity;->loggedInUser:Lcom/valvesoftware/android/steam/community/model/Persona;

    .line 780
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/activity/BaseActivity$18;->val$nameView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/valvesoftware/android/steam/community/activity/BaseActivity$18;->this$0:Lcom/valvesoftware/android/steam/community/activity/BaseActivity;

    iget-object v1, v1, Lcom/valvesoftware/android/steam/community/activity/BaseActivity;->loggedInUser:Lcom/valvesoftware/android/steam/community/model/Persona;

    iget-object v1, v1, Lcom/valvesoftware/android/steam/community/model/Persona;->personaName:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/valvesoftware/android/steam/community/AndroidUtils;->setTextViewText(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 781
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/activity/BaseActivity$18;->this$0:Lcom/valvesoftware/android/steam/community/activity/BaseActivity;

    iget-object v1, p0, Lcom/valvesoftware/android/steam/community/activity/BaseActivity$18;->this$0:Lcom/valvesoftware/android/steam/community/activity/BaseActivity;

    iget-object v1, v1, Lcom/valvesoftware/android/steam/community/activity/BaseActivity;->loggedInUser:Lcom/valvesoftware/android/steam/community/model/Persona;

    iget-object v2, p0, Lcom/valvesoftware/android/steam/community/activity/BaseActivity$18;->val$avatarView:Landroid/widget/ImageView;

    invoke-static {v0, v1, v2}, Lcom/valvesoftware/android/steam/community/activity/BaseActivity;->access$1200(Lcom/valvesoftware/android/steam/community/activity/BaseActivity;Lcom/valvesoftware/android/steam/community/model/Persona;Landroid/widget/ImageView;)V

    .line 782
    return-void
.end method

.method public bridge synthetic dataAvailable(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 776
    check-cast p1, Lcom/valvesoftware/android/steam/community/model/Persona;

    invoke-virtual {p0, p1}, Lcom/valvesoftware/android/steam/community/activity/BaseActivity$18;->dataAvailable(Lcom/valvesoftware/android/steam/community/model/Persona;)V

    return-void
.end method

.method public end()V
    .locals 0

    .prologue
    .line 787
    return-void
.end method
