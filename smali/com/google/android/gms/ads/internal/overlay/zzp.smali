.class public Lcom/google/android/gms/ads/internal/overlay/zzp;
.super Landroid/widget/FrameLayout;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzmb;
.end annotation


# instance fields
.field private final zzNA:Landroid/widget/ImageButton;

.field private final zzNB:Lcom/google/android/gms/ads/internal/overlay/zzv;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILcom/google/android/gms/ads/internal/overlay/zzv;)V
    .locals 4

    const/4 v2, 0x0

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Lcom/google/android/gms/ads/internal/overlay/zzp;->zzNB:Lcom/google/android/gms/ads/internal/overlay/zzv;

    invoke-virtual {p0, p0}, Lcom/google/android/gms/ads/internal/overlay/zzp;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Landroid/widget/ImageButton;

    invoke-direct {v0, p1}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzp;->zzNA:Landroid/widget/ImageButton;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzp;->zzNA:Landroid/widget/ImageButton;

    const v1, 0x1080017

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzp;->zzNA:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzp;->zzNA:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzp;->zzNA:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/widget/ImageButton;->setPadding(IIII)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzp;->zzNA:Landroid/widget/ImageButton;

    const-string v1, "Interstitial close button"

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    invoke-static {}, Lcom/google/android/gms/internal/zzeh;->zzeO()Lcom/google/android/gms/internal/zzpx;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/zzpx;->zzb(Landroid/content/Context;I)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/zzp;->zzNA:Landroid/widget/ImageButton;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v3, 0x11

    invoke-direct {v2, v0, v0, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {p0, v1, v2}, Lcom/google/android/gms/ads/internal/overlay/zzp;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzp;->zzNB:Lcom/google/android/gms/ads/internal/overlay/zzv;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzp;->zzNB:Lcom/google/android/gms/ads/internal/overlay/zzv;

    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/overlay/zzv;->zzhj()V

    :cond_0
    return-void
.end method

.method public zza(ZZ)V
    .locals 2

    if-eqz p2, :cond_1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzp;->zzNA:Landroid/widget/ImageButton;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzp;->zzNA:Landroid/widget/ImageButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzp;->zzNA:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_0
.end method
