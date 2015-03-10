.class public Lcom/ants360/z13/module/SettingOption;
.super Ljava/lang/Object;
.source "SettingOption.java"


# static fields
.field public static NTSC_VIDEO_RESOLUTION:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static PAL_VIDEO_RESOLUTION:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static settingOptionsMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 15
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/ants360/z13/module/SettingOption;->settingOptionsMap:Ljava/util/Map;

    .line 30
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "1920x1080 60P 16:9"

    aput-object v1, v0, v3

    const-string v1, "1920x1080 30P 16:9"

    aput-object v1, v0, v4

    .line 31
    const-string v1, "1920x1080 48P 16:9"

    aput-object v1, v0, v5

    const-string v1, "1920x1080 24P 16:9"

    aput-object v1, v0, v6

    .line 32
    const-string v1, "1280x960 60P 4:3"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "1280x960 48P 4:3"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    .line 33
    const-string v2, "1280x720 60P 16:9"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "1280x720 48P 16:9"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    .line 34
    const-string v2, "1280x720 120P 16:9"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "848x480 240P 16:9"

    aput-object v2, v0, v1

    .line 30
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 29
    sput-object v0, Lcom/ants360/z13/module/SettingOption;->NTSC_VIDEO_RESOLUTION:Ljava/util/List;

    .line 37
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "1920x1080 50P 16:9"

    aput-object v1, v0, v3

    const-string v1, "1920x1080 25P 16:9"

    aput-object v1, v0, v4

    .line 38
    const-string v1, "1920x1080 48P 16:9"

    aput-object v1, v0, v5

    const-string v1, "1920x1080 24P 16:9"

    aput-object v1, v0, v6

    .line 39
    const-string v1, "1280x960 50P 4:3"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "1280x960 48P 4:3"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    .line 40
    const-string v2, "1280x720 50P 16:9"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "1280x720 48P 16:9"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    .line 41
    const-string v2, "1280x720 100P 16:9"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "848x480 200P 16:9"

    aput-object v2, v0, v1

    .line 37
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 36
    sput-object v0, Lcom/ants360/z13/module/SettingOption;->PAL_VIDEO_RESOLUTION:Ljava/util/List;

    .line 82
    const-string v0, "video_resolution"

    sget-object v1, Lcom/ants360/z13/module/SettingOption;->NTSC_VIDEO_RESOLUTION:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/ants360/z13/module/SettingOption;->addOptions(Ljava/lang/String;Ljava/util/List;)V

    .line 84
    const-string v0, "video_quality"

    .line 85
    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "S.Fine"

    aput-object v2, v1, v3

    const-string v2, "Fine"

    aput-object v2, v1, v4

    const-string v2, "Normal"

    aput-object v2, v1, v5

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 84
    invoke-static {v0, v1}, Lcom/ants360/z13/module/SettingOption;->addOptions(Ljava/lang/String;Ljava/util/List;)V

    .line 87
    const-string v0, "video_stamp"

    new-array v1, v7, [Ljava/lang/String;

    const-string v2, "off"

    aput-object v2, v1, v3

    .line 88
    const-string v2, "date"

    aput-object v2, v1, v4

    const-string v2, "time"

    aput-object v2, v1, v5

    const-string v2, "date/time"

    aput-object v2, v1, v6

    .line 87
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ants360/z13/module/SettingOption;->addOptions(Ljava/lang/String;Ljava/util/List;)V

    .line 91
    const-string v0, "photo_size"

    .line 92
    new-array v1, v7, [Ljava/lang/String;

    const-string v2, "16M (4608x3456 4:3)"

    aput-object v2, v1, v3

    .line 93
    const-string v2, "13M (4128x3096 4:3)"

    aput-object v2, v1, v4

    const-string v2, "8M (3264x2448 4:3)"

    aput-object v2, v1, v5

    .line 94
    const-string v2, "5M (2560x1920 4:3)"

    aput-object v2, v1, v6

    .line 92
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 90
    invoke-static {v0, v1}, Lcom/ants360/z13/module/SettingOption;->addOptions(Ljava/lang/String;Ljava/util/List;)V

    .line 96
    const-string v0, "photo_stamp"

    new-array v1, v7, [Ljava/lang/String;

    const-string v2, "off"

    aput-object v2, v1, v3

    .line 97
    const-string v2, "date"

    aput-object v2, v1, v4

    const-string v2, "time"

    aput-object v2, v1, v5

    const-string v2, "date/time"

    aput-object v2, v1, v6

    .line 96
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ants360/z13/module/SettingOption;->addOptions(Ljava/lang/String;Ljava/util/List;)V

    .line 99
    const-string v0, "buzzer_volume"

    .line 100
    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "high"

    aput-object v2, v1, v3

    const-string v2, "low"

    aput-object v2, v1, v4

    const-string v2, "mute"

    aput-object v2, v1, v5

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 99
    invoke-static {v0, v1}, Lcom/ants360/z13/module/SettingOption;->addOptions(Ljava/lang/String;Ljava/util/List;)V

    .line 102
    const-string v0, "video_standard"

    .line 103
    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "NTSC"

    aput-object v2, v1, v3

    const-string v2, "PAL"

    aput-object v2, v1, v4

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 102
    invoke-static {v0, v1}, Lcom/ants360/z13/module/SettingOption;->addOptions(Ljava/lang/String;Ljava/util/List;)V

    .line 105
    const-string v0, "video_standard"

    .line 106
    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "NTSC"

    aput-object v2, v1, v3

    const-string v2, "PAL"

    aput-object v2, v1, v4

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 105
    invoke-static {v0, v1}, Lcom/ants360/z13/module/SettingOption;->addOptions(Ljava/lang/String;Ljava/util/List;)V

    .line 109
    const-string v0, "capture_default_mode"

    .line 110
    new-array v1, v7, [Ljava/lang/String;

    const-string v2, "precise quality"

    aput-object v2, v1, v3

    const-string v2, "precise self quality"

    aput-object v2, v1, v4

    .line 111
    const-string v2, "precise quality cont."

    aput-object v2, v1, v5

    const-string v2, "burst quality"

    aput-object v2, v1, v6

    .line 110
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 108
    invoke-static {v0, v1}, Lcom/ants360/z13/module/SettingOption;->addOptions(Ljava/lang/String;Ljava/util/List;)V

    .line 113
    const-string v0, "meter_mode"

    .line 114
    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "center"

    aput-object v2, v1, v3

    const-string v2, "average"

    aput-object v2, v1, v4

    const-string v2, "spot"

    aput-object v2, v1, v5

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 113
    invoke-static {v0, v1}, Lcom/ants360/z13/module/SettingOption;->addOptions(Ljava/lang/String;Ljava/util/List;)V

    .line 117
    const-string v0, "led_mode"

    .line 118
    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "all enable"

    aput-object v2, v1, v3

    const-string v2, "all disable"

    aput-object v2, v1, v4

    .line 119
    const-string v2, "status enable"

    aput-object v2, v1, v5

    .line 118
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 116
    invoke-static {v0, v1}, Lcom/ants360/z13/module/SettingOption;->addOptions(Ljava/lang/String;Ljava/util/List;)V

    .line 122
    const-string v0, "auto_power_off"

    .line 123
    new-array v1, v7, [Ljava/lang/String;

    const-string v2, "3 minúty"

    aput-object v2, v1, v3

    const-string v2, "5 minút"

    aput-object v2, v1, v4

    .line 124
    const-string v2, "10 minút"

    aput-object v2, v1, v5

    const-string v2, "off"

    aput-object v2, v1, v6

    .line 123
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 121
    invoke-static {v0, v1}, Lcom/ants360/z13/module/SettingOption;->addOptions(Ljava/lang/String;Ljava/util/List;)V

    .line 125
    const-string v0, "system_default_mode"

    .line 126
    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "capture"

    aput-object v2, v1, v3

    const-string v2, "record"

    aput-object v2, v1, v4

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 125
    invoke-static {v0, v1}, Lcom/ants360/z13/module/SettingOption;->addOptions(Ljava/lang/String;Ljava/util/List;)V

    .line 128
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addOptions(Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .param p0, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 26
    .local p1, "options":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v0, Lcom/ants360/z13/module/SettingOption;->settingOptionsMap:Ljava/util/Map;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    return-void
.end method

.method public static changeOptions(Ljava/lang/String;Lorg/json/JSONArray;)V
    .locals 4
    .param p0, "settingName"    # Ljava/lang/String;
    .param p1, "ja"    # Lorg/json/JSONArray;

    .prologue
    .line 67
    if-nez p1, :cond_1

    .line 79
    :cond_0
    :goto_0
    return-void

    .line 71
    :cond_1
    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 72
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 73
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 74
    invoke-static {p0, v2}, Lcom/ants360/z13/module/SettingOption;->addOptions(Ljava/lang/String;Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 76
    .end local v1    # "i":I
    .end local v2    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catch_0
    move-exception v0

    .line 77
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static getOptions(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 2
    .param p0, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 18
    sget-object v1, Lcom/ants360/z13/module/SettingOption;->settingOptionsMap:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 19
    .local v0, "options":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez v0, :cond_0

    .line 20
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 22
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_0
.end method

.method public static getParam()Ljava/lang/String;
    .locals 5

    .prologue
    .line 131
    const-string v1, ""

    .line 132
    .local v1, "param":Ljava/lang/String;
    sget-object v2, Lcom/ants360/z13/module/SettingOption;->settingOptionsMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 136
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 137
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 140
    :cond_0
    return-object v1

    .line 132
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 133
    .local v0, "key":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, ";"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static init(Lorg/json/JSONArray;)V
    .locals 10
    .param p0, "ja"    # Lorg/json/JSONArray;

    .prologue
    const/4 v9, -0x1

    .line 44
    if-nez p0, :cond_1

    .line 64
    :cond_0
    :goto_0
    return-void

    .line 48
    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    :try_start_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-ge v1, v8, :cond_0

    .line 49
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 50
    .local v3, "jo":Lorg/json/JSONObject;
    invoke-virtual {v3}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 51
    .local v4, "key":Ljava/lang/String;
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 53
    .local v7, "value":Ljava/lang/String;
    const/16 v8, 0x3a

    invoke-virtual {v7, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 54
    .local v2, "index":I
    if-eq v2, v9, :cond_2

    const/16 v8, 0x23

    invoke-virtual {v7, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    if-eq v8, v9, :cond_2

    .line 55
    add-int/lit8 v8, v2, 0x1

    invoke-virtual {v7, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 56
    const-string v8, "#"

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 57
    .local v6, "results":[Ljava/lang/String;
    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    .line 58
    .local v5, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {v4, v5}, Lcom/ants360/z13/module/SettingOption;->addOptions(Ljava/lang/String;Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    .end local v5    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v6    # "results":[Ljava/lang/String;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 61
    .end local v2    # "index":I
    .end local v3    # "jo":Lorg/json/JSONObject;
    .end local v4    # "key":Ljava/lang/String;
    .end local v7    # "value":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 62
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
