.class public final enum Lcom/baidu/mapapi/search/weather/WeatherDataType;
.super Ljava/lang/Enum;
.source "WeatherDataType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/baidu/mapapi/search/weather/WeatherDataType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/baidu/mapapi/search/weather/WeatherDataType;

.field public static final enum WEATHER_DATA_TYPE_ALERT:Lcom/baidu/mapapi/search/weather/WeatherDataType;

.field public static final enum WEATHER_DATA_TYPE_ALL:Lcom/baidu/mapapi/search/weather/WeatherDataType;

.field public static final enum WEATHER_DATA_TYPE_FORECASTS_FOR_DAY:Lcom/baidu/mapapi/search/weather/WeatherDataType;

.field public static final enum WEATHER_DATA_TYPE_FORECASTS_FOR_HOUR:Lcom/baidu/mapapi/search/weather/WeatherDataType;

.field public static final enum WEATHER_DATA_TYPE_LIFE_INDEX:Lcom/baidu/mapapi/search/weather/WeatherDataType;

.field public static final enum WEATHER_DATA_TYPE_REAL_TIME:Lcom/baidu/mapapi/search/weather/WeatherDataType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 7
    new-instance v0, Lcom/baidu/mapapi/search/weather/WeatherDataType;

    const-string v1, "WEATHER_DATA_TYPE_REAL_TIME"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/baidu/mapapi/search/weather/WeatherDataType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/mapapi/search/weather/WeatherDataType;->WEATHER_DATA_TYPE_REAL_TIME:Lcom/baidu/mapapi/search/weather/WeatherDataType;

    .line 10
    new-instance v0, Lcom/baidu/mapapi/search/weather/WeatherDataType;

    const-string v1, "WEATHER_DATA_TYPE_FORECASTS_FOR_DAY"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/baidu/mapapi/search/weather/WeatherDataType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/mapapi/search/weather/WeatherDataType;->WEATHER_DATA_TYPE_FORECASTS_FOR_DAY:Lcom/baidu/mapapi/search/weather/WeatherDataType;

    .line 13
    new-instance v0, Lcom/baidu/mapapi/search/weather/WeatherDataType;

    const-string v1, "WEATHER_DATA_TYPE_FORECASTS_FOR_HOUR"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/baidu/mapapi/search/weather/WeatherDataType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/mapapi/search/weather/WeatherDataType;->WEATHER_DATA_TYPE_FORECASTS_FOR_HOUR:Lcom/baidu/mapapi/search/weather/WeatherDataType;

    .line 16
    new-instance v0, Lcom/baidu/mapapi/search/weather/WeatherDataType;

    const-string v1, "WEATHER_DATA_TYPE_LIFE_INDEX"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/baidu/mapapi/search/weather/WeatherDataType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/mapapi/search/weather/WeatherDataType;->WEATHER_DATA_TYPE_LIFE_INDEX:Lcom/baidu/mapapi/search/weather/WeatherDataType;

    .line 19
    new-instance v0, Lcom/baidu/mapapi/search/weather/WeatherDataType;

    const-string v1, "WEATHER_DATA_TYPE_ALERT"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/baidu/mapapi/search/weather/WeatherDataType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/mapapi/search/weather/WeatherDataType;->WEATHER_DATA_TYPE_ALERT:Lcom/baidu/mapapi/search/weather/WeatherDataType;

    .line 22
    new-instance v0, Lcom/baidu/mapapi/search/weather/WeatherDataType;

    const-string v1, "WEATHER_DATA_TYPE_ALL"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lcom/baidu/mapapi/search/weather/WeatherDataType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/mapapi/search/weather/WeatherDataType;->WEATHER_DATA_TYPE_ALL:Lcom/baidu/mapapi/search/weather/WeatherDataType;

    const/4 v0, 0x6

    .line 4
    new-array v0, v0, [Lcom/baidu/mapapi/search/weather/WeatherDataType;

    sget-object v1, Lcom/baidu/mapapi/search/weather/WeatherDataType;->WEATHER_DATA_TYPE_REAL_TIME:Lcom/baidu/mapapi/search/weather/WeatherDataType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/baidu/mapapi/search/weather/WeatherDataType;->WEATHER_DATA_TYPE_FORECASTS_FOR_DAY:Lcom/baidu/mapapi/search/weather/WeatherDataType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/baidu/mapapi/search/weather/WeatherDataType;->WEATHER_DATA_TYPE_FORECASTS_FOR_HOUR:Lcom/baidu/mapapi/search/weather/WeatherDataType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/baidu/mapapi/search/weather/WeatherDataType;->WEATHER_DATA_TYPE_LIFE_INDEX:Lcom/baidu/mapapi/search/weather/WeatherDataType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/baidu/mapapi/search/weather/WeatherDataType;->WEATHER_DATA_TYPE_ALERT:Lcom/baidu/mapapi/search/weather/WeatherDataType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/baidu/mapapi/search/weather/WeatherDataType;->WEATHER_DATA_TYPE_ALL:Lcom/baidu/mapapi/search/weather/WeatherDataType;

    aput-object v1, v0, v7

    sput-object v0, Lcom/baidu/mapapi/search/weather/WeatherDataType;->$VALUES:[Lcom/baidu/mapapi/search/weather/WeatherDataType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 4
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/baidu/mapapi/search/weather/WeatherDataType;
    .locals 1

    .line 4
    const-class v0, Lcom/baidu/mapapi/search/weather/WeatherDataType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/baidu/mapapi/search/weather/WeatherDataType;

    return-object p0
.end method

.method public static values()[Lcom/baidu/mapapi/search/weather/WeatherDataType;
    .locals 1

    .line 4
    sget-object v0, Lcom/baidu/mapapi/search/weather/WeatherDataType;->$VALUES:[Lcom/baidu/mapapi/search/weather/WeatherDataType;

    invoke-virtual {v0}, [Lcom/baidu/mapapi/search/weather/WeatherDataType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/baidu/mapapi/search/weather/WeatherDataType;

    return-object v0
.end method
