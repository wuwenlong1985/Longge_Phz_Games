.class Lorg/apache/http/impl/client/cache/ResponseProtocolCompliance;
.super Ljava/lang/Object;
.source "ResponseProtocolCompliance.java"


# annotations
.annotation build Lorg/apache/http/annotation/Immutable;
.end annotation


# static fields
.field private static final UNEXPECTED_100_CONTINUE:Ljava/lang/String; = "The incoming request did not contain a 100-continue header, but the response was a Status 100, continue."

.field private static final UNEXPECTED_PARTIAL_CONTENT:Ljava/lang/String; = "partial content was returned for a request that did not ask for it"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private backendResponseMustNotHaveBody(Lorg/apache/http/HttpRequest;Lorg/apache/http/HttpResponse;)Z
    .locals 1

    const-string v0, "HEAD"

    .line 210
    invoke-interface {p1}, Lorg/apache/http/HttpRequest;->getRequestLine()Lorg/apache/http/RequestLine;

    move-result-object p1

    invoke-interface {p1}, Lorg/apache/http/RequestLine;->getMethod()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    invoke-interface {p2}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object p1

    invoke-interface {p1}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result p1

    const/16 v0, 0xcc

    if-eq p1, v0, :cond_1

    invoke-interface {p2}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object p1

    invoke-interface {p1}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result p1

    const/16 v0, 0xcd

    if-eq p1, v0, :cond_1

    invoke-interface {p2}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object p1

    invoke-interface {p1}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result p1

    const/16 p2, 0x130

    if-ne p1, p2, :cond_0

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

.method private consumeBody(Lorg/apache/http/HttpResponse;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 97
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 98
    invoke-static {p1}, Lorg/apache/http/util/EntityUtils;->consume(Lorg/apache/http/HttpEntity;)V

    :cond_0
    return-void
.end method

.method private ensure200ForOPTIONSRequestWithNoBodyHasContentLengthZero(Lorg/apache/http/HttpRequest;Lorg/apache/http/HttpResponse;)V
    .locals 1

    .line 184
    invoke-interface {p1}, Lorg/apache/http/HttpRequest;->getRequestLine()Lorg/apache/http/RequestLine;

    move-result-object p1

    invoke-interface {p1}, Lorg/apache/http/RequestLine;->getMethod()Ljava/lang/String;

    move-result-object p1

    const-string v0, "OPTIONS"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 188
    :cond_0
    invoke-interface {p2}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object p1

    invoke-interface {p1}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result p1

    const/16 v0, 0xc8

    if-eq p1, v0, :cond_1

    return-void

    :cond_1
    const-string p1, "Content-Length"

    .line 192
    invoke-interface {p2, p1}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object p1

    if-nez p1, :cond_2

    const-string p1, "Content-Length"

    const-string v0, "0"

    .line 193
    invoke-interface {p2, p1, v0}, Lorg/apache/http/HttpResponse;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method private ensure206ContainsDateHeader(Lorg/apache/http/HttpResponse;)V
    .locals 2

    const-string v0, "Date"

    .line 166
    invoke-interface {p1, v0}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "Date"

    .line 167
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-static {v1}, Lorg/apache/http/impl/cookie/DateUtils;->formatDate(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lorg/apache/http/HttpResponse;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private ensure304DoesNotContainExtraEntityHeaders(Lorg/apache/http/HttpResponse;)V
    .locals 8

    const-string v0, "Allow"

    const-string v1, "Content-Encoding"

    const-string v2, "Content-Language"

    const-string v3, "Content-Length"

    const-string v4, "Content-MD5"

    const-string v5, "Content-Range"

    const-string v6, "Content-Type"

    const-string v7, "Last-Modified"

    .line 198
    filled-new-array/range {v0 .. v7}, [Ljava/lang/String;

    move-result-object v0

    .line 202
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v1

    const/16 v2, 0x130

    if-ne v1, v2, :cond_0

    .line 203
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 204
    invoke-interface {p1, v3}, Lorg/apache/http/HttpResponse;->removeHeaders(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private ensurePartialContentIsNotSentToAClientThatDidNotRequestIt(Lorg/apache/http/HttpRequest;Lorg/apache/http/HttpResponse;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "Range"

    .line 174
    invoke-interface {p1, v0}, Lorg/apache/http/HttpRequest;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object p1

    if-nez p1, :cond_1

    invoke-interface {p2}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object p1

    invoke-interface {p1}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result p1

    const/16 v0, 0xce

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 178
    :cond_0
    invoke-direct {p0, p2}, Lorg/apache/http/impl/client/cache/ResponseProtocolCompliance;->consumeBody(Lorg/apache/http/HttpResponse;)V

    .line 179
    new-instance p1, Lorg/apache/http/client/ClientProtocolException;

    const-string p2, "partial content was returned for a request that did not ask for it"

    invoke-direct {p1, p2}, Lorg/apache/http/client/ClientProtocolException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method private getOriginalRequestProtocol(Lorg/apache/http/impl/client/RequestWrapper;)Lorg/apache/http/ProtocolVersion;
    .locals 0

    .line 251
    invoke-virtual {p1}, Lorg/apache/http/impl/client/RequestWrapper;->getOriginal()Lorg/apache/http/HttpRequest;

    move-result-object p1

    invoke-interface {p1}, Lorg/apache/http/HttpRequest;->getProtocolVersion()Lorg/apache/http/ProtocolVersion;

    move-result-object p1

    return-object p1
.end method

.method private identityIsNotUsedInContentEncoding(Lorg/apache/http/HttpResponse;)V
    .locals 16

    move-object/from16 v0, p1

    const-string v1, "Content-Encoding"

    .line 137
    invoke-interface {v0, v1}, Lorg/apache/http/HttpResponse;->getHeaders(Ljava/lang/String;)[Lorg/apache/http/Header;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 138
    array-length v2, v1

    if-nez v2, :cond_0

    goto/16 :goto_4

    .line 139
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 141
    array-length v3, v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    if-ge v5, v3, :cond_5

    aget-object v7, v1, v5

    .line 142
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 144
    invoke-interface {v7}, Lorg/apache/http/Header;->getElements()[Lorg/apache/http/HeaderElement;

    move-result-object v7

    array-length v9, v7

    const/4 v10, 0x1

    move v12, v6

    const/4 v6, 0x0

    const/4 v11, 0x1

    :goto_1
    if-ge v6, v9, :cond_3

    aget-object v13, v7, v6

    const-string v14, "identity"

    .line 145
    invoke-interface {v13}, Lorg/apache/http/HeaderElement;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_1

    const/4 v12, 0x1

    goto :goto_2

    :cond_1
    if-nez v11, :cond_2

    const-string v11, ","

    .line 148
    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    :cond_2
    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v11, 0x0

    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 153
    :cond_3
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, ""

    .line 154
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 155
    new-instance v7, Lorg/apache/http/message/BasicHeader;

    const-string v8, "Content-Encoding"

    invoke-direct {v7, v8, v6}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    add-int/lit8 v5, v5, 0x1

    move v6, v12

    goto :goto_0

    :cond_5
    if-nez v6, :cond_6

    return-void

    :cond_6
    const-string v1, "Content-Encoding"

    .line 159
    invoke-interface {v0, v1}, Lorg/apache/http/HttpResponse;->removeHeaders(Ljava/lang/String;)V

    .line 160
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/http/Header;

    .line 161
    invoke-interface {v0, v2}, Lorg/apache/http/HttpResponse;->addHeader(Lorg/apache/http/Header;)V

    goto :goto_3

    :cond_7
    return-void

    :cond_8
    :goto_4
    return-void
.end method

.method private removeResponseTransferEncoding(Lorg/apache/http/HttpResponse;)V
    .locals 1

    const-string v0, "TE"

    .line 246
    invoke-interface {p1, v0}, Lorg/apache/http/HttpResponse;->removeHeaders(Ljava/lang/String;)V

    const-string v0, "Transfer-Encoding"

    .line 247
    invoke-interface {p1, v0}, Lorg/apache/http/HttpResponse;->removeHeaders(Ljava/lang/String;)V

    return-void
.end method

.method private requestDidNotExpect100ContinueButResponseIsOne(Lorg/apache/http/HttpRequest;Lorg/apache/http/HttpResponse;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 218
    invoke-interface {p2}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v0

    const/16 v1, 0x64

    if-eq v0, v1, :cond_0

    return-void

    .line 222
    :cond_0
    invoke-direct {p0, p1}, Lorg/apache/http/impl/client/cache/ResponseProtocolCompliance;->requestWasWrapped(Lorg/apache/http/HttpRequest;)Z

    move-result v0

    if-eqz v0, :cond_1

    check-cast p1, Lorg/apache/http/impl/client/RequestWrapper;

    invoke-virtual {p1}, Lorg/apache/http/impl/client/RequestWrapper;->getOriginal()Lorg/apache/http/HttpRequest;

    move-result-object p1

    .line 224
    :cond_1
    instance-of v0, p1, Lorg/apache/http/HttpEntityEnclosingRequest;

    if-eqz v0, :cond_2

    .line 225
    check-cast p1, Lorg/apache/http/HttpEntityEnclosingRequest;

    invoke-interface {p1}, Lorg/apache/http/HttpEntityEnclosingRequest;->expectContinue()Z

    move-result p1

    if-eqz p1, :cond_2

    return-void

    .line 227
    :cond_2
    invoke-direct {p0, p2}, Lorg/apache/http/impl/client/cache/ResponseProtocolCompliance;->consumeBody(Lorg/apache/http/HttpResponse;)V

    .line 228
    new-instance p1, Lorg/apache/http/client/ClientProtocolException;

    const-string p2, "The incoming request did not contain a 100-continue header, but the response was a Status 100, continue."

    invoke-direct {p1, p2}, Lorg/apache/http/client/ClientProtocolException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private requestWasWrapped(Lorg/apache/http/HttpRequest;)Z
    .locals 0

    .line 255
    instance-of p1, p1, Lorg/apache/http/impl/client/RequestWrapper;

    return p1
.end method

.method private transferEncodingIsNotReturnedTo1_0Client(Lorg/apache/http/HttpRequest;Lorg/apache/http/HttpResponse;)V
    .locals 1

    .line 232
    invoke-direct {p0, p1}, Lorg/apache/http/impl/client/cache/ResponseProtocolCompliance;->requestWasWrapped(Lorg/apache/http/HttpRequest;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 236
    :cond_0
    check-cast p1, Lorg/apache/http/impl/client/RequestWrapper;

    invoke-direct {p0, p1}, Lorg/apache/http/impl/client/cache/ResponseProtocolCompliance;->getOriginalRequestProtocol(Lorg/apache/http/impl/client/RequestWrapper;)Lorg/apache/http/ProtocolVersion;

    move-result-object p1

    .line 238
    sget-object v0, Lorg/apache/http/HttpVersion;->HTTP_1_1:Lorg/apache/http/HttpVersion;

    invoke-virtual {p1, v0}, Lorg/apache/http/ProtocolVersion;->compareToVersion(Lorg/apache/http/ProtocolVersion;)I

    move-result p1

    if-ltz p1, :cond_1

    return-void

    .line 242
    :cond_1
    invoke-direct {p0, p2}, Lorg/apache/http/impl/client/cache/ResponseProtocolCompliance;->removeResponseTransferEncoding(Lorg/apache/http/HttpResponse;)V

    return-void
.end method

.method private warningsWithNonMatchingWarnDatesAreRemoved(Lorg/apache/http/HttpResponse;)V
    .locals 13

    :try_start_0
    const-string v0, "Date"

    .line 105
    invoke-interface {p1, v0}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/http/impl/cookie/DateUtils;->parseDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0
    :try_end_0
    .catch Lorg/apache/http/impl/cookie/DateParseException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v1, "Warning"

    .line 112
    invoke-interface {p1, v1}, Lorg/apache/http/HttpResponse;->getHeaders(Ljava/lang/String;)[Lorg/apache/http/Header;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 114
    array-length v2, v1

    if-nez v2, :cond_1

    goto :goto_6

    .line 116
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 118
    array-length v3, v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_1
    if-ge v5, v3, :cond_5

    aget-object v7, v1, v5

    .line 119
    invoke-static {v7}, Lorg/apache/http/impl/client/cache/WarningValue;->getWarningValues(Lorg/apache/http/Header;)[Lorg/apache/http/impl/client/cache/WarningValue;

    move-result-object v7

    array-length v8, v7

    move v9, v6

    const/4 v6, 0x0

    :goto_2
    if-ge v6, v8, :cond_4

    aget-object v10, v7, v6

    .line 120
    invoke-virtual {v10}, Lorg/apache/http/impl/client/cache/WarningValue;->getWarnDate()Ljava/util/Date;

    move-result-object v11

    if-eqz v11, :cond_3

    .line 121
    invoke-virtual {v11, v0}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    goto :goto_3

    :cond_2
    const/4 v9, 0x1

    goto :goto_4

    .line 122
    :cond_3
    :goto_3
    new-instance v11, Lorg/apache/http/message/BasicHeader;

    const-string v12, "Warning"

    invoke-virtual {v10}, Lorg/apache/http/impl/client/cache/WarningValue;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v11, v12, v10}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_4
    add-int/lit8 v5, v5, 0x1

    move v6, v9

    goto :goto_1

    :cond_5
    if-eqz v6, :cond_6

    const-string v0, "Warning"

    .line 129
    invoke-interface {p1, v0}, Lorg/apache/http/HttpResponse;->removeHeaders(Ljava/lang/String;)V

    .line 130
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/http/Header;

    .line 131
    invoke-interface {p1, v1}, Lorg/apache/http/HttpResponse;->addHeader(Lorg/apache/http/Header;)V

    goto :goto_5

    :cond_6
    return-void

    :cond_7
    :goto_6
    return-void
.end method


# virtual methods
.method public ensureProtocolCompliance(Lorg/apache/http/HttpRequest;Lorg/apache/http/HttpResponse;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 74
    invoke-direct {p0, p1, p2}, Lorg/apache/http/impl/client/cache/ResponseProtocolCompliance;->backendResponseMustNotHaveBody(Lorg/apache/http/HttpRequest;Lorg/apache/http/HttpResponse;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 75
    invoke-direct {p0, p2}, Lorg/apache/http/impl/client/cache/ResponseProtocolCompliance;->consumeBody(Lorg/apache/http/HttpResponse;)V

    const/4 v0, 0x0

    .line 76
    invoke-interface {p2, v0}, Lorg/apache/http/HttpResponse;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 79
    :cond_0
    invoke-direct {p0, p1, p2}, Lorg/apache/http/impl/client/cache/ResponseProtocolCompliance;->requestDidNotExpect100ContinueButResponseIsOne(Lorg/apache/http/HttpRequest;Lorg/apache/http/HttpResponse;)V

    .line 81
    invoke-direct {p0, p1, p2}, Lorg/apache/http/impl/client/cache/ResponseProtocolCompliance;->transferEncodingIsNotReturnedTo1_0Client(Lorg/apache/http/HttpRequest;Lorg/apache/http/HttpResponse;)V

    .line 83
    invoke-direct {p0, p1, p2}, Lorg/apache/http/impl/client/cache/ResponseProtocolCompliance;->ensurePartialContentIsNotSentToAClientThatDidNotRequestIt(Lorg/apache/http/HttpRequest;Lorg/apache/http/HttpResponse;)V

    .line 85
    invoke-direct {p0, p1, p2}, Lorg/apache/http/impl/client/cache/ResponseProtocolCompliance;->ensure200ForOPTIONSRequestWithNoBodyHasContentLengthZero(Lorg/apache/http/HttpRequest;Lorg/apache/http/HttpResponse;)V

    .line 87
    invoke-direct {p0, p2}, Lorg/apache/http/impl/client/cache/ResponseProtocolCompliance;->ensure206ContainsDateHeader(Lorg/apache/http/HttpResponse;)V

    .line 89
    invoke-direct {p0, p2}, Lorg/apache/http/impl/client/cache/ResponseProtocolCompliance;->ensure304DoesNotContainExtraEntityHeaders(Lorg/apache/http/HttpResponse;)V

    .line 91
    invoke-direct {p0, p2}, Lorg/apache/http/impl/client/cache/ResponseProtocolCompliance;->identityIsNotUsedInContentEncoding(Lorg/apache/http/HttpResponse;)V

    .line 93
    invoke-direct {p0, p2}, Lorg/apache/http/impl/client/cache/ResponseProtocolCompliance;->warningsWithNonMatchingWarnDatesAreRemoved(Lorg/apache/http/HttpResponse;)V

    return-void
.end method
