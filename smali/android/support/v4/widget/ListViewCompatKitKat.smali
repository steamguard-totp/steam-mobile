.class Landroid/support/v4/widget/ListViewCompatKitKat;
.super Ljava/lang/Object;
.source "ListViewCompatKitKat.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x13
.end annotation


# direct methods
.method static scrollListBy(Landroid/widget/ListView;I)V
    .locals 0
    .param p0, "listView"    # Landroid/widget/ListView;
    .param p1, "y"    # I

    .prologue
    .line 27
    invoke-virtual {p0, p1}, Landroid/widget/ListView;->scrollListBy(I)V

    .line 28
    return-void
.end method
