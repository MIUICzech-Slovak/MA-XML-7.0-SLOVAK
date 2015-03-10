.class Lcom/xiaomi/mistatistic/sdk/a/k;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/xiaomi/mistatistic/sdk/a/j;


# direct methods
.method constructor <init>(Lcom/xiaomi/mistatistic/sdk/a/j;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/mistatistic/sdk/a/k;->a:Lcom/xiaomi/mistatistic/sdk/a/j;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/a/b;->b()Lcom/xiaomi/mistatistic/sdk/a/b;

    move-result-object v0

    new-instance v1, Lcom/xiaomi/mistatistic/sdk/a/l;

    invoke-direct {v1, p0}, Lcom/xiaomi/mistatistic/sdk/a/l;-><init>(Lcom/xiaomi/mistatistic/sdk/a/k;)V

    invoke-virtual {v0, v1}, Lcom/xiaomi/mistatistic/sdk/a/b;->a(Lcom/xiaomi/mistatistic/sdk/a/e;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x3ff
        :pswitch_0
    .end packed-switch
.end method
