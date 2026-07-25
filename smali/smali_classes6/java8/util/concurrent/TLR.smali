.class final Ljava8/util/concurrent/TLR;
.super Ljava/lang/Object;
.source "TLR.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava8/util/concurrent/TLR$SeedsHolder;
    }
.end annotation


# static fields
.field private static final CCL:J

.field private static final INHERITABLETHREADLOCALS:J

.field private static final INHERITEDACCESSCONTROLCONTEXT:J

.field private static final IS_ANDROID:Z

.field private static final IS_PRE8_IBM:Z

.field private static final PROBE_INCREMENT:I = -0x61c88647

.field private static final SEEDER_INCREMENT:J = -0x4498517a7b3558c5L

.field private static final THREADLOCALS:J

.field private static final U:Lsun/misc/Unsafe;

.field private static final localSeeds:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava8/util/concurrent/TLR$SeedsHolder;",
            ">;"
        }
    .end annotation
.end field

.field private static final probeGenerator:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static final seeder:Ljava/util/concurrent/atomic/AtomicLong;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 214
    sget-object v0, Ljava8/util/concurrent/UnsafeAcc;->unsafe:Lsun/misc/Unsafe;

    sput-object v0, Ljava8/util/concurrent/TLR;->U:Lsun/misc/Unsafe;

    .line 223
    :try_start_0
    invoke-static {}, Ljava8/util/concurrent/TLR;->isIBMPre8()Z

    move-result v1

    sput-boolean v1, Ljava8/util/concurrent/TLR;->IS_PRE8_IBM:Z

    .line 224
    invoke-static {}, Ljava8/util/concurrent/TLR;->isAndroid()Z

    move-result v2

    sput-boolean v2, Ljava8/util/concurrent/TLR;->IS_ANDROID:Z

    if-nez v2, :cond_1

    .line 226
    const-class v2, Ljava/lang/Thread;

    const-string v3, "threadLocals"

    .line 227
    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 226
    invoke-virtual {v0, v2}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v2

    sput-wide v2, Ljava8/util/concurrent/TLR;->THREADLOCALS:J

    .line 228
    const-class v2, Ljava/lang/Thread;

    const-string v3, "inheritableThreadLocals"

    .line 229
    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 228
    invoke-virtual {v0, v2}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v2

    sput-wide v2, Ljava8/util/concurrent/TLR;->INHERITABLETHREADLOCALS:J

    if-eqz v1, :cond_0

    const-string v1, "accessControlContext"

    goto :goto_0

    :cond_0
    const-string v1, "inheritedAccessControlContext"

    .line 232
    :goto_0
    const-class v2, Ljava/lang/Thread;

    .line 234
    invoke-virtual {v2, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 233
    invoke-virtual {v0, v1}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v1

    sput-wide v1, Ljava8/util/concurrent/TLR;->INHERITEDACCESSCONTROLCONTEXT:J

    .line 235
    const-class v1, Ljava/lang/Thread;

    const-string v2, "contextClassLoader"

    .line 236
    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 235
    invoke-virtual {v0, v1}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v0

    sput-wide v0, Ljava8/util/concurrent/TLR;->CCL:J

    goto :goto_1

    :cond_1
    const-wide/16 v0, 0x0

    .line 239
    sput-wide v0, Ljava8/util/concurrent/TLR;->THREADLOCALS:J

    .line 240
    sput-wide v0, Ljava8/util/concurrent/TLR;->INHERITABLETHREADLOCALS:J

    .line 241
    sput-wide v0, Ljava8/util/concurrent/TLR;->INHERITEDACCESSCONTROLCONTEXT:J

    .line 242
    sput-wide v0, Ljava8/util/concurrent/TLR;->CCL:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 249
    :goto_1
    new-instance v0, Ljava8/util/concurrent/TLR$1;

    invoke-direct {v0}, Ljava8/util/concurrent/TLR$1;-><init>()V

    sput-object v0, Ljava8/util/concurrent/TLR;->localSeeds:Ljava/lang/ThreadLocal;

    .line 257
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v0, Ljava8/util/concurrent/TLR;->probeGenerator:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 262
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    .line 263
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava8/util/concurrent/TLR;->mix64(J)J

    move-result-wide v1

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava8/util/concurrent/TLR;->mix64(J)J

    move-result-wide v3

    xor-long/2addr v1, v3

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    sput-object v0, Ljava8/util/concurrent/TLR;->seeder:Ljava/util/concurrent/atomic/AtomicLong;

    .line 267
    new-instance v0, Ljava8/util/concurrent/TLR$2;

    invoke-direct {v0}, Ljava8/util/concurrent/TLR$2;-><init>()V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 v0, 0x8

    .line 274
    invoke-static {v0}, Ljava/security/SecureRandom;->getSeed(I)[B

    move-result-object v1

    const/4 v2, 0x0

    .line 275
    aget-byte v2, v1, v2

    int-to-long v2, v2

    const-wide/16 v4, 0xff

    and-long/2addr v2, v4

    const/4 v6, 0x1

    :goto_2
    if-ge v6, v0, :cond_2

    shl-long/2addr v2, v0

    .line 277
    aget-byte v7, v1, v6

    int-to-long v7, v7

    and-long/2addr v7, v4

    or-long/2addr v2, v7

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 279
    :cond_2
    sget-object v0, Ljava8/util/concurrent/TLR;->seeder:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    :cond_3
    return-void

    :catch_0
    move-exception v0

    .line 245
    new-instance v1, Ljava/lang/ExceptionInInitializerError;

    invoke-direct {v1, v0}, Ljava/lang/ExceptionInInitializerError;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static final advanceProbe(I)I
    .locals 1

    shl-int/lit8 v0, p0, 0xd

    xor-int/2addr p0, v0

    ushr-int/lit8 v0, p0, 0x11

    xor-int/2addr p0, v0

    shl-int/lit8 v0, p0, 0x5

    xor-int/2addr p0, v0

    .line 89
    invoke-static {p0}, Ljava8/util/concurrent/TLR;->setThreadLocalRandomProbe(I)V

    return p0
.end method

.method static final eraseThreadLocals(Ljava/lang/Thread;)V
    .locals 4

    .line 140
    sget-boolean v0, Ljava8/util/concurrent/TLR;->IS_ANDROID:Z

    if-nez v0, :cond_0

    .line 141
    sget-object v0, Ljava8/util/concurrent/TLR;->U:Lsun/misc/Unsafe;

    sget-wide v1, Ljava8/util/concurrent/TLR;->THREADLOCALS:J

    const/4 v3, 0x0

    invoke-virtual {v0, p0, v1, v2, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 142
    sget-wide v1, Ljava8/util/concurrent/TLR;->INHERITABLETHREADLOCALS:J

    invoke-virtual {v0, p0, v1, v2, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method static final getProbe()I
    .locals 1

    .line 78
    invoke-static {}, Ljava8/util/concurrent/TLR;->getThreadLocalRandomProbe()I

    move-result v0

    return v0
.end method

.method static getThreadLocalRandomProbe()I
    .locals 1

    .line 118
    sget-object v0, Ljava8/util/concurrent/TLR;->localSeeds:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava8/util/concurrent/TLR$SeedsHolder;

    iget v0, v0, Ljava8/util/concurrent/TLR$SeedsHolder;->threadProbe:I

    return v0
.end method

.method private static getThreadLocalRandomSecondarySeed()I
    .locals 1

    .line 126
    sget-object v0, Ljava8/util/concurrent/TLR;->localSeeds:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava8/util/concurrent/TLR$SeedsHolder;

    iget v0, v0, Ljava8/util/concurrent/TLR$SeedsHolder;->threadSecondarySeed:I

    return v0
.end method

.method private static isAndroid()Z
    .locals 1

    const-string v0, "android.util.DisplayMetrics"

    .line 175
    invoke-static {v0}, Ljava8/util/concurrent/TLR;->isClassPresent(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const-string v0, "org.robovm.rt.bro.Bro"

    .line 180
    invoke-static {v0}, Ljava8/util/concurrent/TLR;->isClassPresent(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static isClassPresent(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    .line 206
    :try_start_0
    const-class v1, Ljava8/util/concurrent/TLR;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-static {p0, v0, v1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private static isIBMPre8()Z
    .locals 4

    const-string v0, "com.ibm.misc.JarVersion"

    .line 189
    invoke-static {v0}, Ljava8/util/concurrent/TLR;->isClassPresent(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v0, "java.class.version"

    const-string v2, "45"

    .line 190
    invoke-static {v0, v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 191
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x2

    if-lt v2, v3, :cond_0

    .line 192
    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v2, "52"

    .line 193
    invoke-virtual {v2, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    return v1
.end method

.method static final localInit()V
    .locals 2

    .line 51
    sget-object v0, Ljava8/util/concurrent/TLR;->probeGenerator:Ljava/util/concurrent/atomic/AtomicInteger;

    const v1, -0x61c88647

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 53
    :cond_0
    invoke-static {v0}, Ljava8/util/concurrent/TLR;->setThreadLocalRandomProbe(I)V

    return-void
.end method

.method static mix32(J)I
    .locals 3

    const/16 v0, 0x21

    ushr-long v1, p0, v0

    xor-long/2addr p0, v1

    const-wide v1, -0xae502812aa7333L

    mul-long p0, p0, v1

    ushr-long v0, p0, v0

    xor-long/2addr p0, v0

    const-wide v0, -0x3b314601e57a13adL    # -2.902039044684214E23

    mul-long p0, p0, v0

    const/16 v0, 0x20

    ushr-long/2addr p0, v0

    long-to-int p1, p0

    return p1
.end method

.method static mix64(J)J
    .locals 3

    const/16 v0, 0x21

    ushr-long v1, p0, v0

    xor-long/2addr p0, v1

    const-wide v1, -0xae502812aa7333L

    mul-long p0, p0, v1

    ushr-long v1, p0, v0

    xor-long/2addr p0, v1

    const-wide v1, -0x3b314601e57a13adL    # -2.902039044684214E23

    mul-long p0, p0, v1

    ushr-long v0, p0, v0

    xor-long/2addr p0, v0

    return-wide p0
.end method

.method static final nextSecondarySeed()I
    .locals 3

    .line 98
    invoke-static {}, Ljava8/util/concurrent/TLR;->getThreadLocalRandomSecondarySeed()I

    move-result v0

    if-eqz v0, :cond_0

    shl-int/lit8 v1, v0, 0xd

    xor-int/2addr v0, v1

    ushr-int/lit8 v1, v0, 0x11

    xor-int/2addr v0, v1

    shl-int/lit8 v1, v0, 0x5

    xor-int/2addr v0, v1

    goto :goto_0

    .line 103
    :cond_0
    sget-object v0, Ljava8/util/concurrent/TLR;->seeder:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide v1, -0x4498517a7b3558c5L    # -1.5671250923562117E-22

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->getAndAdd(J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava8/util/concurrent/TLR;->mix32(J)I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 106
    :cond_1
    :goto_0
    invoke-static {v0}, Ljava8/util/concurrent/TLR;->setThreadLocalRandomSecondarySeed(I)V

    return v0
.end method

.method static final setContextClassLoader(Ljava/lang/Thread;Ljava/lang/ClassLoader;)V
    .locals 3

    .line 154
    sget-boolean v0, Ljava8/util/concurrent/TLR;->IS_ANDROID:Z

    if-nez v0, :cond_0

    .line 155
    sget-object v0, Ljava8/util/concurrent/TLR;->U:Lsun/misc/Unsafe;

    sget-wide v1, Ljava8/util/concurrent/TLR;->CCL:J

    invoke-virtual {v0, p0, v1, v2, p1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method static final setInheritedAccessControlContext(Ljava/lang/Thread;Ljava/security/AccessControlContext;)V
    .locals 3

    .line 148
    sget-boolean v0, Ljava8/util/concurrent/TLR;->IS_ANDROID:Z

    if-nez v0, :cond_0

    .line 149
    sget-object v0, Ljava8/util/concurrent/TLR;->U:Lsun/misc/Unsafe;

    sget-wide v1, Ljava8/util/concurrent/TLR;->INHERITEDACCESSCONTROLCONTEXT:J

    invoke-virtual {v0, p0, v1, v2, p1}, Lsun/misc/Unsafe;->putOrderedObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private static setThreadLocalRandomProbe(I)V
    .locals 1

    .line 122
    sget-object v0, Ljava8/util/concurrent/TLR;->localSeeds:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava8/util/concurrent/TLR$SeedsHolder;

    iput p0, v0, Ljava8/util/concurrent/TLR$SeedsHolder;->threadProbe:I

    return-void
.end method

.method private static setThreadLocalRandomSecondarySeed(I)V
    .locals 1

    .line 130
    sget-object v0, Ljava8/util/concurrent/TLR;->localSeeds:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava8/util/concurrent/TLR$SeedsHolder;

    iput p0, v0, Ljava8/util/concurrent/TLR$SeedsHolder;->threadSecondarySeed:I

    return-void
.end method
