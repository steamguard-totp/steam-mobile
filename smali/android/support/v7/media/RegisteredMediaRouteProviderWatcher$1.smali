.class Landroid/support/v7/media/RegisteredMediaRouteProviderWatcher$1;
.super Landroid/content/BroadcastReceiver;
.source "RegisteredMediaRouteProviderWatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/media/RegisteredMediaRouteProviderWatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v7/media/RegisteredMediaRouteProviderWatcher;


# direct methods
.method constructor <init>(Landroid/support/v7/media/RegisteredMediaRouteProviderWatcher;)V
    .locals 0
    .param p1, "this$0"    # Landroid/support/v7/media/RegisteredMediaRouteProviderWatcher;

    .prologue
    .line 139
    iput-object p1, p0, Landroid/support/v7/media/RegisteredMediaRouteProviderWatcher$1;->this$0:Landroid/support/v7/media/RegisteredMediaRouteProviderWatcher;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 142
    iget-object v0, p0, Landroid/support/v7/media/RegisteredMediaRouteProviderWatcher$1;->this$0:Landroid/support/v7/media/RegisteredMediaRouteProviderWatcher;

    invoke-static {v0}, Landroid/support/v7/media/RegisteredMediaRouteProviderWatcher;->access$000(Landroid/support/v7/media/RegisteredMediaRouteProviderWatcher;)V

    .line 143
    return-void
.end method
