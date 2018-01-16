.class final Landroid/support/v7/media/RegisteredMediaRouteProvider$PrivateHandler;
.super Landroid/os/Handler;
.source "RegisteredMediaRouteProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/media/RegisteredMediaRouteProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PrivateHandler"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v7/media/RegisteredMediaRouteProvider;


# direct methods
.method private constructor <init>(Landroid/support/v7/media/RegisteredMediaRouteProvider;)V
    .locals 0

    .prologue
    .line 594
    iput-object p1, p0, Landroid/support/v7/media/RegisteredMediaRouteProvider$PrivateHandler;->this$0:Landroid/support/v7/media/RegisteredMediaRouteProvider;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v7/media/RegisteredMediaRouteProvider;Landroid/support/v7/media/RegisteredMediaRouteProvider$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/support/v7/media/RegisteredMediaRouteProvider;
    .param p2, "x1"    # Landroid/support/v7/media/RegisteredMediaRouteProvider$1;

    .prologue
    .line 594
    invoke-direct {p0, p1}, Landroid/support/v7/media/RegisteredMediaRouteProvider$PrivateHandler;-><init>(Landroid/support/v7/media/RegisteredMediaRouteProvider;)V

    return-void
.end method
