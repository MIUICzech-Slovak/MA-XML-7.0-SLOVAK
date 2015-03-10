.class public Lcom/antsz13/devicedao/SportsCamera;
.super Ljava/lang/Object;
.source "SportsCamera.java"


# instance fields
.field private macAdress:Ljava/lang/String;

.field private password:Ljava/lang/String;

.field private ssid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "macAdress"    # Ljava/lang/String;

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/antsz13/devicedao/SportsCamera;->macAdress:Ljava/lang/String;

    .line 19
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "macAdress"    # Ljava/lang/String;
    .param p2, "ssid"    # Ljava/lang/String;
    .param p3, "password"    # Ljava/lang/String;

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/antsz13/devicedao/SportsCamera;->macAdress:Ljava/lang/String;

    .line 23
    iput-object p2, p0, Lcom/antsz13/devicedao/SportsCamera;->ssid:Ljava/lang/String;

    .line 24
    iput-object p3, p0, Lcom/antsz13/devicedao/SportsCamera;->password:Ljava/lang/String;

    .line 25
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 64
    if-ne p0, p1, :cond_1

    .line 76
    :cond_0
    :goto_0
    return v1

    .line 66
    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    .line 67
    goto :goto_0

    .line 68
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    move v1, v2

    .line 69
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 70
    check-cast v0, Lcom/antsz13/devicedao/SportsCamera;

    .line 71
    .local v0, "other":Lcom/antsz13/devicedao/SportsCamera;
    iget-object v3, p0, Lcom/antsz13/devicedao/SportsCamera;->macAdress:Ljava/lang/String;

    if-nez v3, :cond_4

    .line 72
    iget-object v3, v0, Lcom/antsz13/devicedao/SportsCamera;->macAdress:Ljava/lang/String;

    if-eqz v3, :cond_0

    move v1, v2

    .line 73
    goto :goto_0

    .line 74
    :cond_4
    iget-object v3, p0, Lcom/antsz13/devicedao/SportsCamera;->macAdress:Ljava/lang/String;

    iget-object v4, v0, Lcom/antsz13/devicedao/SportsCamera;->macAdress:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    .line 75
    goto :goto_0
.end method

.method public getMacAdress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/antsz13/devicedao/SportsCamera;->macAdress:Ljava/lang/String;

    return-object v0
.end method

.method public getPassword()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/antsz13/devicedao/SportsCamera;->password:Ljava/lang/String;

    return-object v0
.end method

.method public getSsid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/antsz13/devicedao/SportsCamera;->ssid:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 55
    const/16 v0, 0x1f

    .line 56
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 58
    .local v1, "result":I
    iget-object v2, p0, Lcom/antsz13/devicedao/SportsCamera;->macAdress:Ljava/lang/String;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    .line 57
    :goto_0
    add-int/lit8 v1, v2, 0x1f

    .line 59
    return v1

    .line 58
    :cond_0
    iget-object v2, p0, Lcom/antsz13/devicedao/SportsCamera;->macAdress:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_0
.end method

.method public setMacAdress(Ljava/lang/String;)V
    .locals 0
    .param p1, "macAdress"    # Ljava/lang/String;

    .prologue
    .line 34
    iput-object p1, p0, Lcom/antsz13/devicedao/SportsCamera;->macAdress:Ljava/lang/String;

    .line 35
    return-void
.end method

.method public setPassword(Ljava/lang/String;)V
    .locals 0
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/antsz13/devicedao/SportsCamera;->password:Ljava/lang/String;

    .line 51
    return-void
.end method

.method public setSsid(Ljava/lang/String;)V
    .locals 0
    .param p1, "ssid"    # Ljava/lang/String;

    .prologue
    .line 42
    iput-object p1, p0, Lcom/antsz13/devicedao/SportsCamera;->ssid:Ljava/lang/String;

    .line 43
    return-void
.end method
