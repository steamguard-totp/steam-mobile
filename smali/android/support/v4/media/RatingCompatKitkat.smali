.class Landroid/support/v4/media/RatingCompatKitkat;
.super Ljava/lang/Object;
.source "RatingCompatKitkat.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x13
.end annotation


# direct methods
.method public static getPercentRating(Ljava/lang/Object;)F
    .locals 1
    .param p0, "ratingObj"    # Ljava/lang/Object;

    .prologue
    .line 67
    check-cast p0, Landroid/media/Rating;

    .end local p0    # "ratingObj":Ljava/lang/Object;
    invoke-virtual {p0}, Landroid/media/Rating;->getPercentRating()F

    move-result v0

    return v0
.end method

.method public static getRatingStyle(Ljava/lang/Object;)I
    .locals 1
    .param p0, "ratingObj"    # Ljava/lang/Object;

    .prologue
    .line 51
    check-cast p0, Landroid/media/Rating;

    .end local p0    # "ratingObj":Ljava/lang/Object;
    invoke-virtual {p0}, Landroid/media/Rating;->getRatingStyle()I

    move-result v0

    return v0
.end method

.method public static getStarRating(Ljava/lang/Object;)F
    .locals 1
    .param p0, "ratingObj"    # Ljava/lang/Object;

    .prologue
    .line 63
    check-cast p0, Landroid/media/Rating;

    .end local p0    # "ratingObj":Ljava/lang/Object;
    invoke-virtual {p0}, Landroid/media/Rating;->getStarRating()F

    move-result v0

    return v0
.end method

.method public static hasHeart(Ljava/lang/Object;)Z
    .locals 1
    .param p0, "ratingObj"    # Ljava/lang/Object;

    .prologue
    .line 55
    check-cast p0, Landroid/media/Rating;

    .end local p0    # "ratingObj":Ljava/lang/Object;
    invoke-virtual {p0}, Landroid/media/Rating;->hasHeart()Z

    move-result v0

    return v0
.end method

.method public static isRated(Ljava/lang/Object;)Z
    .locals 1
    .param p0, "ratingObj"    # Ljava/lang/Object;

    .prologue
    .line 47
    check-cast p0, Landroid/media/Rating;

    .end local p0    # "ratingObj":Ljava/lang/Object;
    invoke-virtual {p0}, Landroid/media/Rating;->isRated()Z

    move-result v0

    return v0
.end method

.method public static isThumbUp(Ljava/lang/Object;)Z
    .locals 1
    .param p0, "ratingObj"    # Ljava/lang/Object;

    .prologue
    .line 59
    check-cast p0, Landroid/media/Rating;

    .end local p0    # "ratingObj":Ljava/lang/Object;
    invoke-virtual {p0}, Landroid/media/Rating;->isThumbUp()Z

    move-result v0

    return v0
.end method
