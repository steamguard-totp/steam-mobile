.class Lcom/google/android/gms/appinvite/PreviewActivity$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/appinvite/PreviewActivity;->zza(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzahh:Lcom/google/android/gms/appinvite/PreviewActivity;


# direct methods
.method constructor <init>(Lcom/google/android/gms/appinvite/PreviewActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/appinvite/PreviewActivity$1;->zzahh:Lcom/google/android/gms/appinvite/PreviewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/appinvite/PreviewActivity$1;->zzahh:Lcom/google/android/gms/appinvite/PreviewActivity;

    invoke-virtual {v0}, Lcom/google/android/gms/appinvite/PreviewActivity;->finish()V

    return-void
.end method
