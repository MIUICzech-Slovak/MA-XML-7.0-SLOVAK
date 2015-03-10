.class public final enum Lcom/etiennelawlor/quickreturn/library/enums/QuickReturnType;
.super Ljava/lang/Enum;
.source "QuickReturnType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/etiennelawlor/quickreturn/library/enums/QuickReturnType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/etiennelawlor/quickreturn/library/enums/QuickReturnType;

.field public static final enum BOTH:Lcom/etiennelawlor/quickreturn/library/enums/QuickReturnType;

.field public static final enum FOOTER:Lcom/etiennelawlor/quickreturn/library/enums/QuickReturnType;

.field public static final enum GOOGLE_PLUS:Lcom/etiennelawlor/quickreturn/library/enums/QuickReturnType;

.field public static final enum HEADER:Lcom/etiennelawlor/quickreturn/library/enums/QuickReturnType;

.field public static final enum TWITTER:Lcom/etiennelawlor/quickreturn/library/enums/QuickReturnType;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 7
    new-instance v0, Lcom/etiennelawlor/quickreturn/library/enums/QuickReturnType;

    const-string v1, "HEADER"

    invoke-direct {v0, v1, v2}, Lcom/etiennelawlor/quickreturn/library/enums/QuickReturnType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/etiennelawlor/quickreturn/library/enums/QuickReturnType;->HEADER:Lcom/etiennelawlor/quickreturn/library/enums/QuickReturnType;

    .line 8
    new-instance v0, Lcom/etiennelawlor/quickreturn/library/enums/QuickReturnType;

    const-string v1, "FOOTER"

    invoke-direct {v0, v1, v3}, Lcom/etiennelawlor/quickreturn/library/enums/QuickReturnType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/etiennelawlor/quickreturn/library/enums/QuickReturnType;->FOOTER:Lcom/etiennelawlor/quickreturn/library/enums/QuickReturnType;

    .line 9
    new-instance v0, Lcom/etiennelawlor/quickreturn/library/enums/QuickReturnType;

    const-string v1, "BOTH"

    invoke-direct {v0, v1, v4}, Lcom/etiennelawlor/quickreturn/library/enums/QuickReturnType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/etiennelawlor/quickreturn/library/enums/QuickReturnType;->BOTH:Lcom/etiennelawlor/quickreturn/library/enums/QuickReturnType;

    .line 10
    new-instance v0, Lcom/etiennelawlor/quickreturn/library/enums/QuickReturnType;

    const-string v1, "GOOGLE_PLUS"

    invoke-direct {v0, v1, v5}, Lcom/etiennelawlor/quickreturn/library/enums/QuickReturnType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/etiennelawlor/quickreturn/library/enums/QuickReturnType;->GOOGLE_PLUS:Lcom/etiennelawlor/quickreturn/library/enums/QuickReturnType;

    .line 11
    new-instance v0, Lcom/etiennelawlor/quickreturn/library/enums/QuickReturnType;

    const-string v1, "TWITTER"

    invoke-direct {v0, v1, v6}, Lcom/etiennelawlor/quickreturn/library/enums/QuickReturnType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/etiennelawlor/quickreturn/library/enums/QuickReturnType;->TWITTER:Lcom/etiennelawlor/quickreturn/library/enums/QuickReturnType;

    .line 6
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/etiennelawlor/quickreturn/library/enums/QuickReturnType;

    sget-object v1, Lcom/etiennelawlor/quickreturn/library/enums/QuickReturnType;->HEADER:Lcom/etiennelawlor/quickreturn/library/enums/QuickReturnType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/etiennelawlor/quickreturn/library/enums/QuickReturnType;->FOOTER:Lcom/etiennelawlor/quickreturn/library/enums/QuickReturnType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/etiennelawlor/quickreturn/library/enums/QuickReturnType;->BOTH:Lcom/etiennelawlor/quickreturn/library/enums/QuickReturnType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/etiennelawlor/quickreturn/library/enums/QuickReturnType;->GOOGLE_PLUS:Lcom/etiennelawlor/quickreturn/library/enums/QuickReturnType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/etiennelawlor/quickreturn/library/enums/QuickReturnType;->TWITTER:Lcom/etiennelawlor/quickreturn/library/enums/QuickReturnType;

    aput-object v1, v0, v6

    sput-object v0, Lcom/etiennelawlor/quickreturn/library/enums/QuickReturnType;->$VALUES:[Lcom/etiennelawlor/quickreturn/library/enums/QuickReturnType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 6
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/etiennelawlor/quickreturn/library/enums/QuickReturnType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 6
    const-class v0, Lcom/etiennelawlor/quickreturn/library/enums/QuickReturnType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/etiennelawlor/quickreturn/library/enums/QuickReturnType;

    return-object v0
.end method

.method public static values()[Lcom/etiennelawlor/quickreturn/library/enums/QuickReturnType;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/etiennelawlor/quickreturn/library/enums/QuickReturnType;->$VALUES:[Lcom/etiennelawlor/quickreturn/library/enums/QuickReturnType;

    invoke-virtual {v0}, [Lcom/etiennelawlor/quickreturn/library/enums/QuickReturnType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/etiennelawlor/quickreturn/library/enums/QuickReturnType;

    return-object v0
.end method
