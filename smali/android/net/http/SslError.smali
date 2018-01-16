.class public Landroid/net/http/SslError;
.super Ljava/lang/Object;
.source "SslError.java"


# instance fields
.field mCertificate:Landroid/net/http/SslCertificate;

.field mErrors:I


# virtual methods
.method public getCertificate()Landroid/net/http/SslCertificate;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Landroid/net/http/SslError;->mCertificate:Landroid/net/http/SslCertificate;

    return-object v0
.end method

.method public getPrimaryError()I
    .locals 3

    .prologue
    .line 122
    iget v1, p0, Landroid/net/http/SslError;->mErrors:I

    if-eqz v1, :cond_1

    .line 124
    const/4 v0, 0x3

    .local v0, "error":I
    :goto_0
    if-ltz v0, :cond_1

    .line 125
    iget v1, p0, Landroid/net/http/SslError;->mErrors:I

    const/4 v2, 0x1

    shl-int/2addr v2, v0

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    .line 131
    .end local v0    # "error":I
    :goto_1
    return v0

    .line 124
    .restart local v0    # "error":I
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 131
    .end local v0    # "error":I
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 139
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "primary error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/net/http/SslError;->getPrimaryError()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " certificate: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 140
    invoke-virtual {p0}, Landroid/net/http/SslError;->getCertificate()Landroid/net/http/SslCertificate;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 139
    return-object v0
.end method
