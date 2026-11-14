.class Lorg/apache/http/impl/client/cache/CacheValidityPolicy;
.super Ljava/lang/Object;
.source "CacheValidityPolicy.java"


# annotations
.annotation build Lorg/apache/http/annotation/Immutable;
.end annotation


# static fields
.field public static final MAX_AGE:J = 0x80000000L


# direct methods
.method constructor <init>()V
    .locals 0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private mayReturnStaleIfError([Lorg/apache/http/Header;J)Z
    .locals 10

    .line 153
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    aget-object v4, p1, v2

    .line 154
    invoke-interface {v4}, Lorg/apache/http/Header;->getElements()[Lorg/apache/http/HeaderElement;

    move-result-object v4

    array-length v5, v4

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v5, :cond_1

    aget-object v7, v4, v6

    const-string v8, "stale-if-error"

    .line 155
    invoke-interface {v7}, Lorg/apache/http/HeaderElement;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 157
    :try_start_0
    invoke-interface {v7}, Lorg/apache/http/HeaderElement;->getValue()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    int-to-long v7, v7

    cmp-long v9, p2, v7

    if-gtz v9, :cond_0

    const/4 v3, 0x1

    goto :goto_2

    :catch_0
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v3
.end method


# virtual methods
.method protected contentLengthHeaderMatchesActualLength(Lorg/apache/http/client/cache/HttpCacheEntry;)Z
    .locals 4

    .line 219
    invoke-virtual {p0, p1}, Lorg/apache/http/impl/client/cache/CacheValidityPolicy;->hasContentLengthHeader(Lorg/apache/http/client/cache/HttpCacheEntry;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Lorg/apache/http/impl/client/cache/CacheValidityPolicy;->getContentLengthValue(Lorg/apache/http/client/cache/HttpCacheEntry;)J

    move-result-wide v0

    invoke-virtual {p1}, Lorg/apache/http/client/cache/HttpCacheEntry;->getResource()Lorg/apache/http/client/cache/Resource;

    move-result-object p1

    invoke-interface {p1}, Lorg/apache/http/client/cache/Resource;->length()J

    move-result-wide v2

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method protected getAgeValue(Lorg/apache/http/client/cache/HttpCacheEntry;)J
    .locals 11

    const-string v0, "Age"

    .line 234
    invoke-virtual {p1, v0}, Lorg/apache/http/client/cache/HttpCacheEntry;->getHeaders(Ljava/lang/String;)[Lorg/apache/http/Header;

    move-result-object p1

    array-length v0, p1

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    move-wide v4, v1

    :goto_0
    if-ge v3, v0, :cond_2

    aget-object v6, p1, v3

    const-wide v7, 0x80000000L

    .line 237
    :try_start_0
    invoke-interface {v6}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    cmp-long v6, v9, v1

    if-gez v6, :cond_0

    goto :goto_1

    :cond_0
    move-wide v7, v9

    :catch_0
    :goto_1
    cmp-long v6, v7, v4

    if-lez v6, :cond_1

    move-wide v4, v7

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-wide v4
.end method

.method protected getApparentAgeSecs(Lorg/apache/http/client/cache/HttpCacheEntry;)J
    .locals 7

    .line 223
    invoke-virtual {p0, p1}, Lorg/apache/http/impl/client/cache/CacheValidityPolicy;->getDateValue(Lorg/apache/http/client/cache/HttpCacheEntry;)Ljava/util/Date;

    move-result-object v0

    if-nez v0, :cond_0

    const-wide v0, 0x80000000L

    return-wide v0

    .line 226
    :cond_0
    invoke-virtual {p1}, Lorg/apache/http/client/cache/HttpCacheEntry;->getResponseDate()Ljava/util/Date;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    sub-long v5, v1, v3

    const-wide/16 v0, 0x0

    cmp-long p1, v5, v0

    if-gez p1, :cond_1

    return-wide v0

    :cond_1
    const-wide/16 v0, 0x3e8

    .line 229
    div-long/2addr v5, v0

    return-wide v5
.end method

.method protected getContentLengthValue(Lorg/apache/http/client/cache/HttpCacheEntry;)J
    .locals 4

    const-string v0, "Content-Length"

    .line 196
    invoke-virtual {p1, v0}, Lorg/apache/http/client/cache/HttpCacheEntry;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object p1

    const-wide/16 v0, -0x1

    if-nez p1, :cond_0

    return-wide v0

    .line 201
    :cond_0
    :try_start_0
    invoke-interface {p1}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v2

    :catch_0
    return-wide v0
.end method

.method protected getCorrectedInitialAgeSecs(Lorg/apache/http/client/cache/HttpCacheEntry;)J
    .locals 6

    .line 261
    invoke-virtual {p0, p1}, Lorg/apache/http/impl/client/cache/CacheValidityPolicy;->getCorrectedReceivedAgeSecs(Lorg/apache/http/client/cache/HttpCacheEntry;)J

    move-result-wide v0

    invoke-virtual {p0, p1}, Lorg/apache/http/impl/client/cache/CacheValidityPolicy;->getResponseDelaySecs(Lorg/apache/http/client/cache/HttpCacheEntry;)J

    move-result-wide v2

    add-long v4, v0, v2

    return-wide v4
.end method

.method protected getCorrectedReceivedAgeSecs(Lorg/apache/http/client/cache/HttpCacheEntry;)J
    .locals 4

    .line 250
    invoke-virtual {p0, p1}, Lorg/apache/http/impl/client/cache/CacheValidityPolicy;->getApparentAgeSecs(Lorg/apache/http/client/cache/HttpCacheEntry;)J

    move-result-wide v0

    .line 251
    invoke-virtual {p0, p1}, Lorg/apache/http/impl/client/cache/CacheValidityPolicy;->getAgeValue(Lorg/apache/http/client/cache/HttpCacheEntry;)J

    move-result-wide v2

    cmp-long p1, v0, v2

    if-lez p1, :cond_0

    goto :goto_0

    :cond_0
    move-wide v0, v2

    :goto_0
    return-wide v0
.end method

.method public getCurrentAgeSecs(Lorg/apache/http/client/cache/HttpCacheEntry;Ljava/util/Date;)J
    .locals 4

    .line 54
    invoke-virtual {p0, p1}, Lorg/apache/http/impl/client/cache/CacheValidityPolicy;->getCorrectedInitialAgeSecs(Lorg/apache/http/client/cache/HttpCacheEntry;)J

    move-result-wide v0

    invoke-virtual {p0, p1, p2}, Lorg/apache/http/impl/client/cache/CacheValidityPolicy;->getResidentTimeSecs(Lorg/apache/http/client/cache/HttpCacheEntry;Ljava/util/Date;)J

    move-result-wide p1

    add-long v2, v0, p1

    return-wide v2
.end method

.method protected getDateValue(Lorg/apache/http/client/cache/HttpCacheEntry;)Ljava/util/Date;
    .locals 1

    const-string v0, "Date"

    .line 172
    invoke-virtual {p1, v0}, Lorg/apache/http/client/cache/HttpCacheEntry;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 176
    :cond_0
    :try_start_0
    invoke-interface {p1}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/apache/http/impl/cookie/DateUtils;->parseDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p1
    :try_end_0
    .catch Lorg/apache/http/impl/cookie/DateParseException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    return-object v0
.end method

.method protected getExpirationDate(Lorg/apache/http/client/cache/HttpCacheEntry;)Ljava/util/Date;
    .locals 1

    const-string v0, "Expires"

    .line 291
    invoke-virtual {p1, v0}, Lorg/apache/http/client/cache/HttpCacheEntry;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 295
    :cond_0
    :try_start_0
    invoke-interface {p1}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/apache/http/impl/cookie/DateUtils;->parseDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p1
    :try_end_0
    .catch Lorg/apache/http/impl/cookie/DateParseException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    return-object v0
.end method

.method public getFreshnessLifetimeSecs(Lorg/apache/http/client/cache/HttpCacheEntry;)J
    .locals 7

    .line 58
    invoke-virtual {p0, p1}, Lorg/apache/http/impl/client/cache/CacheValidityPolicy;->getMaxAge(Lorg/apache/http/client/cache/HttpCacheEntry;)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    return-wide v0

    .line 62
    :cond_0
    invoke-virtual {p0, p1}, Lorg/apache/http/impl/client/cache/CacheValidityPolicy;->getDateValue(Lorg/apache/http/client/cache/HttpCacheEntry;)Ljava/util/Date;

    move-result-object v0

    const-wide/16 v1, 0x0

    if-nez v0, :cond_1

    return-wide v1

    .line 66
    :cond_1
    invoke-virtual {p0, p1}, Lorg/apache/http/impl/client/cache/CacheValidityPolicy;->getExpirationDate(Lorg/apache/http/client/cache/HttpCacheEntry;)Ljava/util/Date;

    move-result-object p1

    if-nez p1, :cond_2

    return-wide v1

    .line 69
    :cond_2
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    sub-long v5, v1, v3

    const-wide/16 v0, 0x3e8

    .line 70
    div-long/2addr v5, v0

    return-wide v5
.end method

.method public getHeuristicFreshnessLifetimeSecs(Lorg/apache/http/client/cache/HttpCacheEntry;FJ)J
    .locals 4

    .line 97
    invoke-virtual {p0, p1}, Lorg/apache/http/impl/client/cache/CacheValidityPolicy;->getDateValue(Lorg/apache/http/client/cache/HttpCacheEntry;)Ljava/util/Date;

    move-result-object v0

    .line 98
    invoke-virtual {p0, p1}, Lorg/apache/http/impl/client/cache/CacheValidityPolicy;->getLastModifiedValue(Lorg/apache/http/client/cache/HttpCacheEntry;)Ljava/util/Date;

    move-result-object p1

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 101
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide p3

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    sub-long v2, p3, v0

    const-wide/16 p3, 0x0

    cmp-long p1, v2, p3

    if-gez p1, :cond_0

    return-wide p3

    :cond_0
    const-wide/16 p3, 0x3e8

    .line 104
    div-long/2addr v2, p3

    long-to-float p1, v2

    mul-float p2, p2, p1

    float-to-long p1, p2

    return-wide p1

    :cond_1
    return-wide p3
.end method

.method protected getLastModifiedValue(Lorg/apache/http/client/cache/HttpCacheEntry;)Ljava/util/Date;
    .locals 1

    const-string v0, "Last-Modified"

    .line 184
    invoke-virtual {p1, v0}, Lorg/apache/http/client/cache/HttpCacheEntry;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 188
    :cond_0
    :try_start_0
    invoke-interface {p1}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/apache/http/impl/cookie/DateUtils;->parseDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p1
    :try_end_0
    .catch Lorg/apache/http/impl/cookie/DateParseException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    return-object v0
.end method

.method protected getMaxAge(Lorg/apache/http/client/cache/HttpCacheEntry;)J
    .locals 13

    const-string v0, "Cache-Control"

    .line 271
    invoke-virtual {p1, v0}, Lorg/apache/http/client/cache/HttpCacheEntry;->getHeaders(Ljava/lang/String;)[Lorg/apache/http/Header;

    move-result-object p1

    array-length v0, p1

    const/4 v1, 0x0

    const-wide/16 v2, -0x1

    move-wide v5, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v0, :cond_4

    aget-object v7, p1, v4

    .line 272
    invoke-interface {v7}, Lorg/apache/http/Header;->getElements()[Lorg/apache/http/HeaderElement;

    move-result-object v7

    array-length v8, v7

    move-wide v9, v5

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v8, :cond_3

    aget-object v6, v7, v5

    const-string v11, "max-age"

    .line 273
    invoke-interface {v6}, Lorg/apache/http/HeaderElement;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_0

    const-string v11, "s-maxage"

    invoke-interface {v6}, Lorg/apache/http/HeaderElement;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 276
    :cond_0
    :try_start_0
    invoke-interface {v6}, Lorg/apache/http/HeaderElement;->getValue()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v11
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    cmp-long v6, v9, v2

    if-eqz v6, :cond_1

    cmp-long v6, v11, v9

    if-gez v6, :cond_2

    :cond_1
    move-wide v9, v11

    goto :goto_2

    :catch_0
    const-wide/16 v9, 0x0

    :cond_2
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_3
    add-int/lit8 v4, v4, 0x1

    move-wide v5, v9

    goto :goto_0

    :cond_4
    return-wide v5
.end method

.method protected getResidentTimeSecs(Lorg/apache/http/client/cache/HttpCacheEntry;Ljava/util/Date;)J
    .locals 4

    .line 265
    invoke-virtual {p2}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-virtual {p1}, Lorg/apache/http/client/cache/HttpCacheEntry;->getResponseDate()Ljava/util/Date;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide p1

    sub-long v2, v0, p1

    const-wide/16 p1, 0x3e8

    .line 266
    div-long/2addr v2, p1

    return-wide v2
.end method

.method protected getResponseDelaySecs(Lorg/apache/http/client/cache/HttpCacheEntry;)J
    .locals 6

    .line 256
    invoke-virtual {p1}, Lorg/apache/http/client/cache/HttpCacheEntry;->getResponseDate()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-virtual {p1}, Lorg/apache/http/client/cache/HttpCacheEntry;->getRequestDate()Ljava/util/Date;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    sub-long v4, v0, v2

    const-wide/16 v0, 0x3e8

    .line 257
    div-long/2addr v4, v0

    return-wide v4
.end method

.method public getStalenessSecs(Lorg/apache/http/client/cache/HttpCacheEntry;Ljava/util/Date;)J
    .locals 4

    .line 315
    invoke-virtual {p0, p1, p2}, Lorg/apache/http/impl/client/cache/CacheValidityPolicy;->getCurrentAgeSecs(Lorg/apache/http/client/cache/HttpCacheEntry;Ljava/util/Date;)J

    move-result-wide v0

    .line 316
    invoke-virtual {p0, p1}, Lorg/apache/http/impl/client/cache/CacheValidityPolicy;->getFreshnessLifetimeSecs(Lorg/apache/http/client/cache/HttpCacheEntry;)J

    move-result-wide p1

    cmp-long v2, v0, p1

    if-gtz v2, :cond_0

    const-wide/16 p1, 0x0

    return-wide p1

    :cond_0
    const/4 v2, 0x0

    sub-long v2, v0, p1

    return-wide v2
.end method

.method public hasCacheControlDirective(Lorg/apache/http/client/cache/HttpCacheEntry;Ljava/lang/String;)Z
    .locals 7

    const-string v0, "Cache-Control"

    .line 304
    invoke-virtual {p1, v0}, Lorg/apache/http/client/cache/HttpCacheEntry;->getHeaders(Ljava/lang/String;)[Lorg/apache/http/Header;

    move-result-object p1

    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    aget-object v3, p1, v2

    .line 305
    invoke-interface {v3}, Lorg/apache/http/Header;->getElements()[Lorg/apache/http/HeaderElement;

    move-result-object v3

    array-length v4, v3

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v4, :cond_1

    aget-object v6, v3, v5

    .line 306
    invoke-interface {v6}, Lorg/apache/http/HeaderElement;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method protected hasContentLengthHeader(Lorg/apache/http/client/cache/HttpCacheEntry;)Z
    .locals 1

    const-string v0, "Content-Length"

    .line 208
    invoke-virtual {p1, v0}, Lorg/apache/http/client/cache/HttpCacheEntry;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isResponseFresh(Lorg/apache/http/client/cache/HttpCacheEntry;Ljava/util/Date;)Z
    .locals 3

    .line 74
    invoke-virtual {p0, p1, p2}, Lorg/apache/http/impl/client/cache/CacheValidityPolicy;->getCurrentAgeSecs(Lorg/apache/http/client/cache/HttpCacheEntry;Ljava/util/Date;)J

    move-result-wide v0

    invoke-virtual {p0, p1}, Lorg/apache/http/impl/client/cache/CacheValidityPolicy;->getFreshnessLifetimeSecs(Lorg/apache/http/client/cache/HttpCacheEntry;)J

    move-result-wide p1

    cmp-long v2, v0, p1

    if-gez v2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isResponseHeuristicallyFresh(Lorg/apache/http/client/cache/HttpCacheEntry;Ljava/util/Date;FJ)Z
    .locals 2

    .line 92
    invoke-virtual {p0, p1, p2}, Lorg/apache/http/impl/client/cache/CacheValidityPolicy;->getCurrentAgeSecs(Lorg/apache/http/client/cache/HttpCacheEntry;Ljava/util/Date;)J

    move-result-wide v0

    invoke-virtual {p0, p1, p3, p4, p5}, Lorg/apache/http/impl/client/cache/CacheValidityPolicy;->getHeuristicFreshnessLifetimeSecs(Lorg/apache/http/client/cache/HttpCacheEntry;FJ)J

    move-result-wide p1

    cmp-long p3, v0, p1

    if-gez p3, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isRevalidatable(Lorg/apache/http/client/cache/HttpCacheEntry;)Z
    .locals 1

    const-string v0, "ETag"

    .line 111
    invoke-virtual {p1, v0}, Lorg/apache/http/client/cache/HttpCacheEntry;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, "Last-Modified"

    invoke-virtual {p1, v0}, Lorg/apache/http/client/cache/HttpCacheEntry;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public mayReturnStaleIfError(Lorg/apache/http/HttpRequest;Lorg/apache/http/client/cache/HttpCacheEntry;Ljava/util/Date;)Z
    .locals 2

    .line 144
    invoke-virtual {p0, p2, p3}, Lorg/apache/http/impl/client/cache/CacheValidityPolicy;->getStalenessSecs(Lorg/apache/http/client/cache/HttpCacheEntry;Ljava/util/Date;)J

    move-result-wide v0

    const-string p3, "Cache-Control"

    .line 145
    invoke-interface {p1, p3}, Lorg/apache/http/HttpRequest;->getHeaders(Ljava/lang/String;)[Lorg/apache/http/Header;

    move-result-object p1

    invoke-direct {p0, p1, v0, v1}, Lorg/apache/http/impl/client/cache/CacheValidityPolicy;->mayReturnStaleIfError([Lorg/apache/http/Header;J)Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "Cache-Control"

    invoke-virtual {p2, p1}, Lorg/apache/http/client/cache/HttpCacheEntry;->getHeaders(Ljava/lang/String;)[Lorg/apache/http/Header;

    move-result-object p1

    invoke-direct {p0, p1, v0, v1}, Lorg/apache/http/impl/client/cache/CacheValidityPolicy;->mayReturnStaleIfError([Lorg/apache/http/Header;J)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public mayReturnStaleWhileRevalidating(Lorg/apache/http/client/cache/HttpCacheEntry;Ljava/util/Date;)Z
    .locals 12

    const-string v0, "Cache-Control"

    .line 124
    invoke-virtual {p1, v0}, Lorg/apache/http/client/cache/HttpCacheEntry;->getHeaders(Ljava/lang/String;)[Lorg/apache/http/Header;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v4, v0, v3

    .line 125
    invoke-interface {v4}, Lorg/apache/http/Header;->getElements()[Lorg/apache/http/HeaderElement;

    move-result-object v4

    array-length v5, v4

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v5, :cond_1

    aget-object v7, v4, v6

    const-string v8, "stale-while-revalidate"

    .line 126
    invoke-interface {v7}, Lorg/apache/http/HeaderElement;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 128
    :try_start_0
    invoke-interface {v7}, Lorg/apache/http/HeaderElement;->getValue()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 129
    invoke-virtual {p0, p1, p2}, Lorg/apache/http/impl/client/cache/CacheValidityPolicy;->getStalenessSecs(Lorg/apache/http/client/cache/HttpCacheEntry;Ljava/util/Date;)J

    move-result-wide v8
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    int-to-long v10, v7

    cmp-long v7, v8, v10

    if-gtz v7, :cond_0

    const/4 p1, 0x1

    return p1

    :catch_0
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return v2
.end method

.method public mustRevalidate(Lorg/apache/http/client/cache/HttpCacheEntry;)Z
    .locals 1

    const-string v0, "must-revalidate"

    .line 116
    invoke-virtual {p0, p1, v0}, Lorg/apache/http/impl/client/cache/CacheValidityPolicy;->hasCacheControlDirective(Lorg/apache/http/client/cache/HttpCacheEntry;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public proxyRevalidate(Lorg/apache/http/client/cache/HttpCacheEntry;)Z
    .locals 1

    const-string v0, "proxy-revalidate"

    .line 120
    invoke-virtual {p0, p1, v0}, Lorg/apache/http/impl/client/cache/CacheValidityPolicy;->hasCacheControlDirective(Lorg/apache/http/client/cache/HttpCacheEntry;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
