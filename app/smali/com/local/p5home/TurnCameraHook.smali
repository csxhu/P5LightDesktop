.class public final Lcom/local/p5home/TurnCameraHook;
.super Ljava/lang/Object;
.source "TurnCameraHook.java"

# interfaces
.implements Lde/robv/android/xposed/IXposedHookLoadPackage;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/local/p5home/TurnCameraHook$Sample;
    }
.end annotation


# static fields
.field private static final APK_SHA:Ljava/lang/String; = "397f217923c48cf0ba3b712347f7d86d632be3d54d1b6f3448c714de44c23105"

.field private static final CODE_SHA:Ljava/lang/String; = "1befc632cc0d597eec02c01135f7e78699131ea17dc1b5e0386039d48bbc8754"

.field private static final PACKAGE:Ljava/lang/String; = "com.xiaopeng.drivingimageassist"

.field private static final SIGNER_SHA:Ljava/lang/String; = "162fb40e0725bcfcc0932a4d6bcd9606973b6443ebe1d2fa84ae735867286ee7"

.field private static final attempted:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static final health:Lcom/local/p5home/TurnCameraEventHealth;

.field private static volatile reporter:Lcom/local/p5home/TurnCameraStatusClient;

.field private static volatile sample:Lcom/local/p5home/TurnCameraHook$Sample;

.field private static final speedLock:Ljava/lang/Object;

.field private static speedSequence:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 37
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    sput-object v0, Lcom/local/p5home/TurnCameraHook;->attempted:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 38
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/local/p5home/TurnCameraHook;->speedLock:Ljava/lang/Object;

    .line 42
    new-instance v0, Lcom/local/p5home/TurnCameraEventHealth;

    invoke-direct {v0}, Lcom/local/p5home/TurnCameraEventHealth;-><init>()V

    sput-object v0, Lcom/local/p5home/TurnCameraHook;->health:Lcom/local/p5home/TurnCameraEventHealth;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;Ljava/lang/ClassLoader;)V
    .registers 2

    .line 32
    invoke-static {p0, p1}, Lcom/local/p5home/TurnCameraHook;->installOnce(Landroid/content/Context;Ljava/lang/ClassLoader;)V

    return-void
.end method

.method static synthetic access$100()Ljava/lang/Object;
    .registers 1

    .line 32
    sget-object v0, Lcom/local/p5home/TurnCameraHook;->speedLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$200()Lcom/local/p5home/TurnCameraHook$Sample;
    .registers 1

    .line 32
    sget-object v0, Lcom/local/p5home/TurnCameraHook;->sample:Lcom/local/p5home/TurnCameraHook$Sample;

    return-object v0
.end method

.method static synthetic access$202(Lcom/local/p5home/TurnCameraHook$Sample;)Lcom/local/p5home/TurnCameraHook$Sample;
    .registers 1

    .line 32
    sput-object p0, Lcom/local/p5home/TurnCameraHook;->sample:Lcom/local/p5home/TurnCameraHook$Sample;

    return-object p0
.end method

.method static synthetic access$300()J
    .registers 2

    .line 32
    sget-wide v0, Lcom/local/p5home/TurnCameraHook;->speedSequence:J

    return-wide v0
.end method

.method static synthetic access$304()J
    .registers 4

    .line 32
    sget-wide v0, Lcom/local/p5home/TurnCameraHook;->speedSequence:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    sput-wide v0, Lcom/local/p5home/TurnCameraHook;->speedSequence:J

    return-wide v0
.end method

.method static synthetic access$308()J
    .registers 4

    .line 32
    sget-wide v0, Lcom/local/p5home/TurnCameraHook;->speedSequence:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    sput-wide v2, Lcom/local/p5home/TurnCameraHook;->speedSequence:J

    return-wide v0
.end method

.method static synthetic access$400()Lcom/local/p5home/TurnCameraEventHealth;
    .registers 1

    .line 32
    sget-object v0, Lcom/local/p5home/TurnCameraHook;->health:Lcom/local/p5home/TurnCameraEventHealth;

    return-object v0
.end method

.method static synthetic access$500(Ljava/lang/String;)V
    .registers 1

    .line 32
    invoke-static {p0}, Lcom/local/p5home/TurnCameraHook;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Z)V
    .registers 1

    .line 32
    invoke-static {p0}, Lcom/local/p5home/TurnCameraHook;->reportObserver(Z)V

    return-void
.end method

.method static synthetic access$700(Z)V
    .registers 1

    .line 32
    invoke-static {p0}, Lcom/local/p5home/TurnCameraHook;->reportLamp(Z)V

    return-void
.end method

.method static synthetic access$800(Z)V
    .registers 1

    .line 32
    invoke-static {p0}, Lcom/local/p5home/TurnCameraHook;->reportGear(Z)V

    return-void
.end method

.method static synthetic access$900(Z)V
    .registers 1

    .line 32
    invoke-static {p0}, Lcom/local/p5home/TurnCameraHook;->reportConnection(Z)V

    return-void
.end method

.method private static addHook(Ljava/util/List;Ljava/lang/reflect/Method;Lde/robv/android/xposed/XC_MethodHook;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lde/robv/android/xposed/XC_MethodHook$Unhook;",
            ">;",
            "Ljava/lang/reflect/Method;",
            "Lde/robv/android/xposed/XC_MethodHook;",
            ")V"
        }
    .end annotation

    .line 243
    invoke-static {p1, p2}, Lde/robv/android/xposed/XposedBridge;->hookMethod(Ljava/lang/reflect/Member;Lde/robv/android/xposed/XC_MethodHook;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    move-result-object p1

    .line 244
    if-eqz p1, :cond_a

    .line 245
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 246
    return-void

    .line 244
    :cond_a
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "hook unavailable"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static allowed(Landroid/content/Context;)Z
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 253
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    const/4 v2, 0x0

    if-ne v0, v1, :cond_167

    const-string v0, "d20"

    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    goto/16 :goto_167

    .line 254
    :cond_13
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v0, "com.xiaopeng.drivingimageassist"

    const/high16 v1, 0x8000000

    invoke-virtual {p0, v0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    .line 255
    if-eqz p0, :cond_166

    iget-object v0, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v0, :cond_166

    iget-object v0, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    if-ne v0, v1, :cond_166

    iget-object v0, p0, Landroid/content/pm/PackageInfo;->signingInfo:Landroid/content/pm/SigningInfo;

    if-eqz v0, :cond_166

    iget-object v0, p0, Landroid/content/pm/PackageInfo;->signingInfo:Landroid/content/pm/SigningInfo;

    .line 256
    invoke-virtual {v0}, Landroid/content/pm/SigningInfo;->hasMultipleSigners()Z

    move-result v0

    if-eqz v0, :cond_3d

    goto/16 :goto_166

    .line 257
    :cond_3d
    iget-object v0, p0, Landroid/content/pm/PackageInfo;->signingInfo:Landroid/content/pm/SigningInfo;

    invoke-virtual {v0}, Landroid/content/pm/SigningInfo;->getApkContentsSigners()[Landroid/content/pm/Signature;

    move-result-object v0

    .line 258
    if-eqz v0, :cond_165

    array-length v1, v0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_165

    const-string v1, "SHA-256"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v4

    aget-object v0, v0, v2

    invoke-virtual {v0}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v0

    invoke-static {v0}, Lcom/local/p5home/TurnCameraHook;->hex([B)Ljava/lang/String;

    move-result-object v0

    const-string v4, "162fb40e0725bcfcc0932a4d6bcd9606973b6443ebe1d2fa84ae735867286ee7"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_67

    goto/16 :goto_165

    .line 259
    :cond_67
    new-instance v0, Ljava/io/File;

    iget-object p0, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 260
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result p0

    if-eqz p0, :cond_164

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long p0, v4, v6

    if-lez p0, :cond_164

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v4

    const-wide/32 v8, 0x10000000

    cmp-long p0, v4, v8

    if-lez p0, :cond_8d

    goto/16 :goto_164

    .line 261
    :cond_8d
    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object p0

    .line 262
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const/16 v4, 0x4000

    :try_start_98
    new-array v5, v4, [B

    :goto_9a
    invoke-virtual {v1, v5}, Ljava/io/FileInputStream;->read([B)I

    move-result v8

    const/4 v9, -0x1

    if-eq v8, v9, :cond_a5

    invoke-virtual {p0, v5, v2, v8}, Ljava/security/MessageDigest;->update([BII)V
    :try_end_a4
    .catchall {:try_start_98 .. :try_end_a4} :catchall_15a

    goto :goto_9a

    :cond_a5
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    .line 263
    invoke-virtual {p0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    invoke-static {v1}, Lcom/local/p5home/TurnCameraHook;->hex([B)Ljava/lang/String;

    move-result-object v1

    const-string v5, "397f217923c48cf0ba3b712347f7d86d632be3d54d1b6f3448c714de44c23105"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b9

    return v3

    .line 268
    :cond_b9
    new-instance v1, Ljava/util/zip/ZipFile;

    invoke-direct {v1, v0}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V

    .line 269
    :try_start_be
    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v0

    .line 270
    const/4 v3, 0x0

    .line 271
    :goto_c3
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_f1

    .line 272
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/zip/ZipEntry;

    .line 273
    invoke-virtual {v5}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v8

    const-string v10, "classes[0-9]*\\.dex"

    invoke-virtual {v8, v10}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_f0

    .line 274
    if-nez v3, :cond_ec

    const-string v3, "classes.dex"

    invoke-virtual {v5}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_e7
    .catchall {:try_start_be .. :try_end_e7} :catchall_150

    if-nez v3, :cond_ea

    goto :goto_ec

    .line 275
    :cond_ea
    move-object v3, v5

    goto :goto_f0

    .line 282
    :cond_ec
    :goto_ec
    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->close()V

    .line 274
    return v2

    .line 277
    :cond_f0
    :goto_f0
    goto :goto_c3

    .line 278
    :cond_f1
    if-eqz v3, :cond_14c

    :try_start_f3
    invoke-virtual {v3}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v10

    cmp-long v0, v10, v6

    if-lez v0, :cond_14c

    invoke-virtual {v3}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v10

    const-wide/32 v12, 0x8000000

    cmp-long v0, v10, v12

    if-lez v0, :cond_107

    goto :goto_14c

    .line 279
    :cond_107
    invoke-virtual {p0}, Ljava/security/MessageDigest;->reset()V

    .line 280
    invoke-virtual {v1, v3}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v0
    :try_end_10e
    .catchall {:try_start_f3 .. :try_end_10e} :catchall_150

    :try_start_10e
    new-array v3, v4, [B

    :goto_110
    invoke-virtual {v0, v3}, Ljava/io/InputStream;->read([B)I

    move-result v4
    :try_end_114
    .catchall {:try_start_10e .. :try_end_114} :catchall_140

    if-eq v4, v9, :cond_129

    int-to-long v10, v4

    add-long/2addr v6, v10

    cmp-long v5, v6, v12

    if-lez v5, :cond_125

    if-eqz v0, :cond_121

    :try_start_11e
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_121
    .catchall {:try_start_11e .. :try_end_121} :catchall_150

    .line 282
    :cond_121
    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->close()V

    .line 280
    return v2

    :cond_125
    :try_start_125
    invoke-virtual {p0, v3, v2, v4}, Ljava/security/MessageDigest;->update([BII)V
    :try_end_128
    .catchall {:try_start_125 .. :try_end_128} :catchall_140

    goto :goto_110

    :cond_129
    if-eqz v0, :cond_12e

    :try_start_12b
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 281
    :cond_12e
    const-string v0, "1befc632cc0d597eec02c01135f7e78699131ea17dc1b5e0386039d48bbc8754"

    invoke-virtual {p0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p0

    invoke-static {p0}, Lcom/local/p5home/TurnCameraHook;->hex([B)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0
    :try_end_13c
    .catchall {:try_start_12b .. :try_end_13c} :catchall_150

    .line 282
    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->close()V

    .line 281
    return p0

    .line 280
    :catchall_140
    move-exception p0

    if-eqz v0, :cond_14b

    :try_start_143
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_146
    .catchall {:try_start_143 .. :try_end_146} :catchall_147

    goto :goto_14b

    :catchall_147
    move-exception v0

    :try_start_148
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_14b
    :goto_14b
    throw p0
    :try_end_14c
    .catchall {:try_start_148 .. :try_end_14c} :catchall_150

    .line 282
    :cond_14c
    :goto_14c
    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->close()V

    .line 278
    return v2

    .line 268
    :catchall_150
    move-exception p0

    :try_start_151
    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->close()V
    :try_end_154
    .catchall {:try_start_151 .. :try_end_154} :catchall_155

    goto :goto_159

    :catchall_155
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_159
    throw p0

    .line 262
    :catchall_15a
    move-exception p0

    :try_start_15b
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_15e
    .catchall {:try_start_15b .. :try_end_15e} :catchall_15f

    goto :goto_163

    :catchall_15f
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_163
    throw p0

    .line 260
    :cond_164
    :goto_164
    return v2

    .line 258
    :cond_165
    :goto_165
    return v2

    .line 256
    :cond_166
    :goto_166
    return v2

    .line 253
    :cond_167
    :goto_167
    return v2
.end method

.method private static hex([B)Ljava/lang/String;
    .registers 7

    .line 284
    const-string v0, "0123456789abcdef"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    array-length v1, p0

    mul-int/lit8 v1, v1, 0x2

    new-array v1, v1, [C

    const/4 v2, 0x0

    :goto_c
    array-length v3, p0

    if-ge v2, v3, :cond_26

    mul-int/lit8 v3, v2, 0x2

    aget-byte v4, p0, v2

    and-int/lit16 v5, v4, 0xff

    ushr-int/lit8 v5, v5, 0x4

    aget-char v5, v0, v5

    aput-char v5, v1, v3

    add-int/lit8 v3, v3, 0x1

    and-int/lit8 v4, v4, 0xf

    aget-char v4, v0, v4

    aput-char v4, v1, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    :cond_26
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v1}, Ljava/lang/String;-><init>([C)V

    return-object p0
.end method

.method private static installOnce(Landroid/content/Context;Ljava/lang/ClassLoader;)V
    .registers 29

    .line 61
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v0, "onErrorEvent"

    const-string v3, "onChangeEvent"

    const-string v4, "d"

    const-string v5, "c"

    sget-object v6, Lcom/local/p5home/TurnCameraHook;->attempted:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-virtual {v6, v7, v8}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v6

    if-nez v6, :cond_17

    return-void

    .line 63
    :cond_17
    :try_start_17
    invoke-static/range {p0 .. p0}, Lcom/local/p5home/TurnCameraHook;->allowed(Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_23

    const-string v0, "PRIVATE_IMPLEMENTATION_UNCONFIRMED"

    invoke-static {v0}, Lcom/local/p5home/TurnCameraHook;->log(Ljava/lang/String;)V

    return-void

    .line 64
    :cond_23
    const-string v6, "i8$b"

    invoke-static {v6, v7, v2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v6

    .line 65
    const-string v9, "com.xiaopeng.drivingimageassist.carapi.CarEventFactory"

    invoke-static {v9, v7, v2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v9

    .line 66
    const-string v10, "com.xiaopeng.drivingimageassist.carapi.ICarEvent"

    invoke-static {v10, v7, v2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v10

    .line 67
    const-string v11, "com.xiaopeng.drivingimageassist.carapi.event.BCMEvent"

    invoke-static {v11, v7, v2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v11

    .line 68
    const-string v12, "com.xiaopeng.drivingimageassist.carapi.event.VCUEvent"

    invoke-static {v12, v7, v2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v12

    .line 69
    const-string v13, "android.car.hardware.CarPropertyValue"

    invoke-static {v13, v7, v2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v13

    .line 70
    const-string v14, "com.xiaopeng.drivingimageassist.carapi.CarApiHelper"

    invoke-static {v14, v7, v2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v14

    .line 71
    const-string v15, "com.xiaopeng.drivingimageassist.carapi.CarApiHelper$2"

    invoke-static {v15, v7, v2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v15

    .line 72
    const-string v8, "p8"

    invoke-static {v8, v7, v2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v8

    .line 73
    const-string v7, "createCarEvents"

    filled-new-array {v6}, [Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v9, v7, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    .line 74
    const-string v7, "getRawCarSpeed"

    const/4 v9, 0x0

    new-array v2, v9, [Ljava/lang/Class;

    invoke-virtual {v14, v7, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 75
    new-array v7, v9, [Ljava/lang/Class;

    invoke-virtual {v8, v5, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    .line 76
    new-array v14, v9, [Ljava/lang/Class;

    invoke-virtual {v8, v4, v14}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v9

    .line 77
    invoke-virtual {v8, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    .line 78
    invoke-virtual {v8, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    .line 79
    const/4 v8, 0x0

    new-array v14, v8, [Ljava/lang/Class;

    invoke-virtual {v11, v14}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v14

    .line 80
    const-string v8, "carManager"

    move-object/from16 v18, v14

    const/4 v1, 0x0

    new-array v14, v1, [Ljava/lang/Class;

    invoke-virtual {v11, v8, v14}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    const-string v14, "eventIds"

    move-object/from16 v19, v8

    new-array v8, v1, [Ljava/lang/Class;

    invoke-virtual {v11, v14, v8}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    .line 81
    const-string v14, "getPropertyId"

    move-object/from16 v20, v8

    new-array v8, v1, [Ljava/lang/Class;

    invoke-virtual {v13, v14, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    const-string v14, "getAreaId"

    move-object/from16 v21, v8

    new-array v8, v1, [Ljava/lang/Class;

    invoke-virtual {v13, v14, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    const-string v14, "getStatus"

    move-object/from16 v22, v8

    new-array v8, v1, [Ljava/lang/Class;

    invoke-virtual {v13, v14, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    const-string v14, "getValue"

    move-object/from16 v23, v8

    new-array v8, v1, [Ljava/lang/Class;

    invoke-virtual {v13, v14, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 82
    filled-new-array {v13}, [Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v11, v3, v8}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    const/4 v14, 0x2

    move-object/from16 v24, v8

    new-array v8, v14, [Ljava/lang/Class;

    sget-object v25, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/16 v17, 0x0

    aput-object v25, v8, v17

    sget-object v25, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/16 v16, 0x1

    aput-object v25, v8, v16

    invoke-virtual {v11, v0, v8}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    .line 83
    filled-new-array {v13}, [Ljava/lang/Class;

    move-result-object v14

    invoke-virtual {v12, v3, v14}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    move-object/from16 v26, v3

    const/4 v14, 0x2

    new-array v3, v14, [Ljava/lang/Class;

    sget-object v14, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/16 v17, 0x0

    aput-object v14, v3, v17

    sget-object v14, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/16 v16, 0x1

    aput-object v14, v3, v16

    invoke-virtual {v12, v0, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 84
    const-string v3, "onServiceConnected"

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/Class;

    const-class v14, Landroid/content/ComponentName;

    const/16 v17, 0x0

    aput-object v14, v12, v17

    const-class v14, Landroid/os/IBinder;

    move-object/from16 v25, v0

    const/4 v0, 0x1

    aput-object v14, v12, v0

    invoke-virtual {v15, v3, v12}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    const-string v12, "onServiceDisconnected"

    new-array v14, v0, [Ljava/lang/Class;

    const-class v0, Landroid/content/ComponentName;

    const/16 v17, 0x0

    aput-object v0, v14, v17

    invoke-virtual {v15, v12, v14}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 85
    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v12

    invoke-static {v12}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v12

    if-eqz v12, :cond_2eb

    const-class v12, Ljava/util/List;

    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v14

    invoke-virtual {v12, v14}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v12

    if-eqz v12, :cond_2eb

    .line 86
    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v12

    invoke-static {v12}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v12

    if-nez v12, :cond_2eb

    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v12

    sget-object v14, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne v12, v14, :cond_2eb

    .line 87
    invoke-virtual {v7}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v12

    invoke-static {v12}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v12

    if-nez v12, :cond_2eb

    invoke-virtual {v7}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v12

    sget-object v14, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v12, v14, :cond_2eb

    .line 88
    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v12

    sget-object v14, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne v12, v14, :cond_2eb

    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v12

    invoke-static {v12}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v12

    if-nez v12, :cond_2eb

    .line 89
    invoke-virtual {v9}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v12

    invoke-static {v12}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v12

    if-nez v12, :cond_2eb

    invoke-virtual {v9}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v12

    sget-object v14, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v12, v14, :cond_2eb

    .line 90
    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v12

    sget-object v14, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v12, v14, :cond_2eb

    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v12

    invoke-static {v12}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v12

    if-nez v12, :cond_2eb

    .line 91
    invoke-virtual {v10, v11}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v11

    if-eqz v11, :cond_2eb

    invoke-virtual/range {v18 .. v18}, Ljava/lang/reflect/Constructor;->getModifiers()I

    move-result v11

    invoke-static {v11}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v11

    if-eqz v11, :cond_2eb

    .line 92
    invoke-virtual/range {v19 .. v19}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v11

    const-class v12, Ljava/lang/String;

    if-ne v11, v12, :cond_2eb

    const-class v11, Ljava/util/List;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v11

    if-eqz v11, :cond_2eb

    .line 93
    invoke-virtual/range {v21 .. v21}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v11

    sget-object v12, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v11, v12, :cond_2eb

    invoke-virtual/range {v22 .. v22}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v11

    sget-object v12, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v11, v12, :cond_2eb

    invoke-virtual/range {v23 .. v23}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v11

    sget-object v12, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v11, v12, :cond_2eb

    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v11

    const-class v12, Ljava/lang/Object;

    if-ne v11, v12, :cond_2eb

    const-string v11, "STATUS_AVAILABLE"

    .line 94
    invoke-virtual {v13, v11}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v11

    if-nez v11, :cond_2eb

    .line 95
    invoke-virtual/range {v24 .. v24}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v11

    sget-object v14, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-ne v11, v14, :cond_2eb

    invoke-virtual {v8}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v11

    sget-object v14, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-ne v11, v14, :cond_2eb

    .line 96
    invoke-virtual/range {v26 .. v26}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v11

    sget-object v14, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-ne v11, v14, :cond_2eb

    invoke-virtual/range {v25 .. v25}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v11

    sget-object v14, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-ne v11, v14, :cond_2eb

    const-class v11, Landroid/content/ServiceConnection;

    .line 97
    invoke-virtual {v11, v15}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v11

    if-eqz v11, :cond_2eb

    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v11

    sget-object v14, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-ne v11, v14, :cond_2eb

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v11

    sget-object v14, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-eq v11, v14, :cond_21d

    goto/16 :goto_2eb

    .line 100
    :cond_21d
    const/4 v11, 0x1

    invoke-virtual {v4, v11}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {v5, v11}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    move-object/from16 v14, v18

    invoke-virtual {v14, v11}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    move-object/from16 v15, v19

    invoke-virtual {v15, v11}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    move-object/from16 v12, v20

    invoke-virtual {v12, v11}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 101
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V
    :try_end_238
    .catchall {:try_start_17 .. :try_end_238} :catchall_2f1

    .line 103
    move-object/from16 v20, v0

    :try_start_23a
    new-instance v0, Lcom/local/p5home/TurnCameraHook$2;

    invoke-direct {v0}, Lcom/local/p5home/TurnCameraHook$2;-><init>()V

    invoke-static {v11, v2, v0}, Lcom/local/p5home/TurnCameraHook;->addHook(Ljava/util/List;Ljava/lang/reflect/Method;Lde/robv/android/xposed/XC_MethodHook;)V

    .line 123
    new-instance v0, Lcom/local/p5home/TurnCameraHook$3;

    invoke-direct {v0, v4}, Lcom/local/p5home/TurnCameraHook$3;-><init>(Ljava/lang/reflect/Field;)V

    invoke-static {v11, v7, v0}, Lcom/local/p5home/TurnCameraHook;->addHook(Ljava/util/List;Ljava/lang/reflect/Method;Lde/robv/android/xposed/XC_MethodHook;)V

    .line 133
    new-instance v0, Lcom/local/p5home/TurnCameraHook$4;

    invoke-direct {v0, v5}, Lcom/local/p5home/TurnCameraHook$4;-><init>(Ljava/lang/reflect/Field;)V

    invoke-static {v11, v9, v0}, Lcom/local/p5home/TurnCameraHook;->addHook(Ljava/util/List;Ljava/lang/reflect/Method;Lde/robv/android/xposed/XC_MethodHook;)V

    .line 141
    new-instance v0, Lcom/local/p5home/TurnCameraHook$5;

    invoke-direct {v0, v10, v14, v15, v12}, Lcom/local/p5home/TurnCameraHook$5;-><init>(Ljava/lang/Class;Ljava/lang/reflect/Constructor;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V

    invoke-static {v11, v6, v0}, Lcom/local/p5home/TurnCameraHook;->addHook(Ljava/util/List;Ljava/lang/reflect/Method;Lde/robv/android/xposed/XC_MethodHook;)V

    .line 154
    new-instance v0, Lcom/local/p5home/TurnCameraHook$6;

    move-object v14, v0

    move-object v15, v13

    move-object/from16 v16, v21

    move-object/from16 v17, v22

    move-object/from16 v18, v23

    move-object/from16 v19, v1

    invoke-direct/range {v14 .. v19}, Lcom/local/p5home/TurnCameraHook$6;-><init>(Ljava/lang/Class;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V

    move-object/from16 v2, v24

    invoke-static {v11, v2, v0}, Lcom/local/p5home/TurnCameraHook;->addHook(Ljava/util/List;Ljava/lang/reflect/Method;Lde/robv/android/xposed/XC_MethodHook;)V

    .line 171
    new-instance v0, Lcom/local/p5home/TurnCameraHook$7;

    invoke-direct {v0}, Lcom/local/p5home/TurnCameraHook$7;-><init>()V

    invoke-static {v11, v8, v0}, Lcom/local/p5home/TurnCameraHook;->addHook(Ljava/util/List;Ljava/lang/reflect/Method;Lde/robv/android/xposed/XC_MethodHook;)V

    .line 176
    new-instance v0, Lcom/local/p5home/TurnCameraHook$8;

    move-object v14, v0

    move-object v15, v13

    move-object/from16 v16, v21

    move-object/from16 v17, v22

    move-object/from16 v18, v23

    move-object/from16 v19, v1

    invoke-direct/range {v14 .. v19}, Lcom/local/p5home/TurnCameraHook$8;-><init>(Ljava/lang/Class;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V

    move-object/from16 v1, v26

    invoke-static {v11, v1, v0}, Lcom/local/p5home/TurnCameraHook;->addHook(Ljava/util/List;Ljava/lang/reflect/Method;Lde/robv/android/xposed/XC_MethodHook;)V

    .line 190
    new-instance v0, Lcom/local/p5home/TurnCameraHook$9;

    invoke-direct {v0}, Lcom/local/p5home/TurnCameraHook$9;-><init>()V

    move-object/from16 v1, v25

    invoke-static {v11, v1, v0}, Lcom/local/p5home/TurnCameraHook;->addHook(Ljava/util/List;Ljava/lang/reflect/Method;Lde/robv/android/xposed/XC_MethodHook;)V

    .line 195
    new-instance v0, Lcom/local/p5home/TurnCameraHook$10;

    invoke-direct {v0}, Lcom/local/p5home/TurnCameraHook$10;-><init>()V

    invoke-static {v11, v3, v0}, Lcom/local/p5home/TurnCameraHook;->addHook(Ljava/util/List;Ljava/lang/reflect/Method;Lde/robv/android/xposed/XC_MethodHook;)V

    .line 209
    new-instance v0, Lcom/local/p5home/TurnCameraHook$11;

    invoke-direct {v0}, Lcom/local/p5home/TurnCameraHook$11;-><init>()V

    move-object/from16 v1, v20

    invoke-static {v11, v1, v0}, Lcom/local/p5home/TurnCameraHook;->addHook(Ljava/util/List;Ljava/lang/reflect/Method;Lde/robv/android/xposed/XC_MethodHook;)V
    :try_end_2a6
    .catchall {:try_start_23a .. :try_end_2a6} :catchall_2c8

    .line 212
    :try_start_2a6
    new-instance v0, Lcom/local/p5home/TurnCameraStatusClient;
    :try_end_2a8
    .catchall {:try_start_2a6 .. :try_end_2a8} :catchall_2b2

    move-object/from16 v1, p0

    :try_start_2aa
    invoke-direct {v0, v1}, Lcom/local/p5home/TurnCameraStatusClient;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/local/p5home/TurnCameraHook;->reporter:Lcom/local/p5home/TurnCameraStatusClient;
    :try_end_2af
    .catchall {:try_start_2aa .. :try_end_2af} :catchall_2b0

    goto :goto_2b8

    :catchall_2b0
    move-exception v0

    goto :goto_2b5

    :catchall_2b2
    move-exception v0

    move-object/from16 v1, p0

    :goto_2b5
    const/4 v2, 0x0

    :try_start_2b6
    sput-object v2, Lcom/local/p5home/TurnCameraHook;->reporter:Lcom/local/p5home/TurnCameraStatusClient;

    .line 213
    :goto_2b8
    new-instance v0, Lcom/local/p5home/TurnCameraHook$$ExternalSyntheticLambda0;

    move-object/from16 v2, p1

    invoke-direct {v0, v2}, Lcom/local/p5home/TurnCameraHook$$ExternalSyntheticLambda0;-><init>(Ljava/lang/ClassLoader;)V

    invoke-static {v1, v2, v0}, Lcom/local/p5home/TurnCameraNativeBridge;->install(Landroid/content/Context;Ljava/lang/ClassLoader;Lcom/local/p5home/TurnCameraNativeBridge$Repair;)V

    .line 214
    const-string v0, "HOOKS_READY"

    invoke-static {v0}, Lcom/local/p5home/TurnCameraHook;->log(Ljava/lang/String;)V
    :try_end_2c7
    .catchall {:try_start_2b6 .. :try_end_2c7} :catchall_2c8

    goto :goto_2e9

    .line 215
    :catchall_2c8
    move-exception v0

    :try_start_2c9
    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2cd
    :goto_2cd
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2e1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/robv/android/xposed/XC_MethodHook$Unhook;
    :try_end_2d9
    .catchall {:try_start_2c9 .. :try_end_2d9} :catchall_2f1

    if-eqz v0, :cond_2cd

    :try_start_2db
    invoke-virtual {v0}, Lde/robv/android/xposed/XC_MethodHook$Unhook;->unhook()V
    :try_end_2de
    .catchall {:try_start_2db .. :try_end_2de} :catchall_2df

    goto :goto_2cd

    :catchall_2df
    move-exception v0

    goto :goto_2cd

    :cond_2e1
    const/4 v1, 0x0

    :try_start_2e2
    sput-object v1, Lcom/local/p5home/TurnCameraHook;->sample:Lcom/local/p5home/TurnCameraHook$Sample;

    const-string v0, "HOOK_INSTALL_FAILED"

    invoke-static {v0}, Lcom/local/p5home/TurnCameraHook;->log(Ljava/lang/String;)V

    :goto_2e9
    nop

    .line 216
    goto :goto_2f7

    .line 98
    :cond_2eb
    :goto_2eb
    const-string v0, "ABI_MISMATCH"

    invoke-static {v0}, Lcom/local/p5home/TurnCameraHook;->log(Ljava/lang/String;)V
    :try_end_2f0
    .catchall {:try_start_2e2 .. :try_end_2f0} :catchall_2f1

    return-void

    .line 216
    :catchall_2f1
    move-exception v0

    const-string v0, "ABI_UNAVAILABLE"

    invoke-static {v0}, Lcom/local/p5home/TurnCameraHook;->log(Ljava/lang/String;)V

    .line 217
    :goto_2f7
    return-void
.end method

.method static synthetic lambda$installOnce$0(Ljava/lang/ClassLoader;)Z
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 213
    invoke-static {p0}, Lcom/local/p5home/TurnCameraHook;->repairObserver(Ljava/lang/ClassLoader;)Z

    move-result p0

    return p0
.end method

.method private static log(Ljava/lang/String;)V
    .registers 3

    .line 285
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "G3TurnCamera: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lde/robv/android/xposed/XposedBridge;->log(Ljava/lang/String;)V
    :try_end_16
    .catchall {:try_start_0 .. :try_end_16} :catchall_17

    goto :goto_18

    :catchall_17
    move-exception p0

    :goto_18
    return-void
.end method

.method private static repairObserver(Ljava/lang/ClassLoader;)Z
    .registers 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 221
    move-object/from16 v0, p0

    sget-object v1, Lcom/local/p5home/TurnCameraHook;->speedLock:Ljava/lang/Object;

    monitor-enter v1

    .line 222
    :try_start_5
    const-string v2, "com.xiaopeng.drivingimageassist.carapi.CarApiHelper"

    const/4 v3, 0x0

    invoke-static {v2, v3, v0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v2

    .line 223
    const-string v4, "instance"

    new-array v5, v3, [Ljava/lang/Class;

    invoke-virtual {v2, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    new-array v6, v3, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-virtual {v4, v7, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 224
    const-string v6, "mCarEventList"

    invoke-virtual {v2, v6}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v6

    const-string v8, "mCarClient"

    invoke-virtual {v2, v8}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v8

    invoke-virtual {v6, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {v8, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 225
    invoke-virtual {v6, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v8, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    instance-of v9, v6, Ljava/util/ArrayList;

    if-eqz v9, :cond_123

    if-nez v8, :cond_41

    goto/16 :goto_123

    .line 226
    :cond_41
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    const-string v10, "isConnected"

    new-array v11, v3, [Ljava/lang/Class;

    invoke-virtual {v9, v10, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v9

    sget-object v10, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    new-array v11, v3, [Ljava/lang/Object;

    invoke-virtual {v9, v8, v11}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v10, v8}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_5d

    monitor-exit v1

    return v3

    .line 227
    :cond_5d
    const-string v8, "com.xiaopeng.drivingimageassist.carapi.ICarEvent"

    invoke-static {v8, v3, v0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v8

    const-string v9, "com.xiaopeng.drivingimageassist.carapi.event.BCMEvent"

    invoke-static {v9, v3, v0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    .line 228
    sget-object v9, Lcom/local/p5home/TurnCameraHook;->health:Lcom/local/p5home/TurnCameraEventHealth;

    invoke-virtual {v9}, Lcom/local/p5home/TurnCameraEventHealth;->observer()Ljava/lang/Object;

    move-result-object v10

    .line 229
    const-wide/16 v11, 0x1

    const-wide/16 v13, 0x0

    if-eqz v10, :cond_be

    .line 230
    check-cast v6, Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_7b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_89

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    if-ne v6, v10, :cond_7b

    move v0, v5

    goto :goto_8a

    :cond_89
    move v0, v3

    :goto_8a
    if-nez v0, :cond_8e

    monitor-exit v1

    return v3

    .line 231
    :cond_8e
    sget-object v0, Lcom/local/p5home/TurnCameraHook;->health:Lcom/local/p5home/TurnCameraEventHealth;

    invoke-virtual {v0}, Lcom/local/p5home/TurnCameraEventHealth;->epoch()J

    move-result-wide v15

    cmp-long v3, v15, v13

    if-gez v3, :cond_a5

    invoke-virtual {v0}, Lcom/local/p5home/TurnCameraEventHealth;->connected()V

    sput-object v7, Lcom/local/p5home/TurnCameraHook;->sample:Lcom/local/p5home/TurnCameraHook$Sample;

    sget-wide v6, Lcom/local/p5home/TurnCameraHook;->speedSequence:J

    add-long/2addr v6, v11

    sput-wide v6, Lcom/local/p5home/TurnCameraHook;->speedSequence:J

    invoke-static {v5}, Lcom/local/p5home/TurnCameraHook;->reportConnection(Z)V

    .line 232
    :cond_a5
    const-string v0, "register"

    filled-new-array {v8}, [Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    filled-new-array {v10}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v4, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v5}, Lcom/local/p5home/TurnCameraHook;->reportObserver(Z)V

    monitor-exit v1

    return v5

    .line 234
    :cond_be
    check-cast v6, Ljava/util/List;

    new-array v10, v3, [Ljava/lang/Class;

    invoke-virtual {v0, v10}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v10

    const-string v15, "carManager"

    new-array v11, v3, [Ljava/lang/Class;

    invoke-virtual {v0, v15, v11}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v11

    const-string v12, "eventIds"

    new-array v15, v3, [Ljava/lang/Class;

    invoke-virtual {v0, v12, v15}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-static {v6, v8, v10, v11, v0}, Lcom/local/p5home/TurnCameraContract;->appendObserver(Ljava/util/List;Ljava/lang/Class;Ljava/lang/reflect/Constructor;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)Ljava/util/List;

    move-result-object v0

    .line 235
    if-nez v0, :cond_de

    monitor-exit v1

    return v3

    :cond_de
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v5

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 236
    invoke-virtual {v9, v0}, Lcom/local/p5home/TurnCameraEventHealth;->bindObserver(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_f3

    invoke-virtual {v9}, Lcom/local/p5home/TurnCameraEventHealth;->hasObserver()Z

    move-result v0

    monitor-exit v1

    return v0

    .line 237
    :cond_f3
    invoke-virtual {v9}, Lcom/local/p5home/TurnCameraEventHealth;->epoch()J

    move-result-wide v10

    cmp-long v3, v10, v13

    if-gez v3, :cond_10a

    invoke-virtual {v9}, Lcom/local/p5home/TurnCameraEventHealth;->connected()V

    sput-object v7, Lcom/local/p5home/TurnCameraHook;->sample:Lcom/local/p5home/TurnCameraHook$Sample;

    sget-wide v6, Lcom/local/p5home/TurnCameraHook;->speedSequence:J

    const-wide/16 v9, 0x1

    add-long/2addr v6, v9

    sput-wide v6, Lcom/local/p5home/TurnCameraHook;->speedSequence:J

    invoke-static {v5}, Lcom/local/p5home/TurnCameraHook;->reportConnection(Z)V

    .line 238
    :cond_10a
    const-string v3, "addCarEvent"

    filled-new-array {v8}, [Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v2, v3, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v4, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v5}, Lcom/local/p5home/TurnCameraHook;->reportObserver(Z)V

    monitor-exit v1

    return v5

    .line 225
    :cond_123
    :goto_123
    monitor-exit v1

    return v3

    .line 239
    :catchall_125
    move-exception v0

    monitor-exit v1
    :try_end_127
    .catchall {:try_start_5 .. :try_end_127} :catchall_125

    throw v0
.end method

.method private static reportConnection(Z)V
    .registers 2

    .line 248
    :try_start_0
    sget-object v0, Lcom/local/p5home/TurnCameraHook;->reporter:Lcom/local/p5home/TurnCameraStatusClient;

    if-eqz v0, :cond_9

    invoke-virtual {v0, p0}, Lcom/local/p5home/TurnCameraStatusClient;->connection(Z)V
    :try_end_7
    .catchall {:try_start_0 .. :try_end_7} :catchall_8

    goto :goto_9

    :catchall_8
    move-exception p0

    :cond_9
    :goto_9
    return-void
.end method

.method private static reportGear(Z)V
    .registers 2

    .line 250
    :try_start_0
    sget-object v0, Lcom/local/p5home/TurnCameraHook;->reporter:Lcom/local/p5home/TurnCameraStatusClient;

    if-eqz v0, :cond_9

    invoke-virtual {v0, p0}, Lcom/local/p5home/TurnCameraStatusClient;->gearCallback(Z)V
    :try_end_7
    .catchall {:try_start_0 .. :try_end_7} :catchall_8

    goto :goto_9

    :catchall_8
    move-exception p0

    :cond_9
    :goto_9
    return-void
.end method

.method private static reportLamp(Z)V
    .registers 2

    .line 249
    :try_start_0
    sget-object v0, Lcom/local/p5home/TurnCameraHook;->reporter:Lcom/local/p5home/TurnCameraStatusClient;

    if-eqz v0, :cond_9

    invoke-virtual {v0, p0}, Lcom/local/p5home/TurnCameraStatusClient;->lampCallback(Z)V
    :try_end_7
    .catchall {:try_start_0 .. :try_end_7} :catchall_8

    goto :goto_9

    :catchall_8
    move-exception p0

    :cond_9
    :goto_9
    return-void
.end method

.method private static reportObserver(Z)V
    .registers 2

    .line 247
    :try_start_0
    sget-object v0, Lcom/local/p5home/TurnCameraHook;->reporter:Lcom/local/p5home/TurnCameraStatusClient;

    if-eqz v0, :cond_9

    invoke-virtual {v0, p0}, Lcom/local/p5home/TurnCameraStatusClient;->observerAttempt(Z)V
    :try_end_7
    .catchall {:try_start_0 .. :try_end_7} :catchall_8

    goto :goto_9

    :catchall_8
    move-exception p0

    :cond_9
    :goto_9
    return-void
.end method


# virtual methods
.method public handleLoadPackage(Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;)V
    .registers 7

    .line 46
    iget-object v0, p1, Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;->packageName:Ljava/lang/String;

    const-string v1, "com.xiaopeng.drivingimageassist"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_48

    iget-object v0, p1, Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;->processName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    goto :goto_48

    .line 48
    :cond_13
    :try_start_13
    invoke-static {}, Landroid/app/AndroidAppHelper;->currentApplication()Landroid/app/Application;

    move-result-object v0

    .line 49
    if-eqz v0, :cond_29

    invoke-virtual {v0}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_29

    iget-object p1, p1, Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;->classLoader:Ljava/lang/ClassLoader;

    invoke-static {v0, p1}, Lcom/local/p5home/TurnCameraHook;->installOnce(Landroid/content/Context;Ljava/lang/ClassLoader;)V

    return-void

    .line 50
    :cond_29
    const-class v0, Landroid/app/Application;

    const-string v1, "attach"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const-class v3, Landroid/content/Context;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    new-instance v3, Lcom/local/p5home/TurnCameraHook$1;

    invoke-direct {v3, p0, p1}, Lcom/local/p5home/TurnCameraHook$1;-><init>(Lcom/local/p5home/TurnCameraHook;Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;)V

    const/4 p1, 0x1

    aput-object v3, v2, p1

    invoke-static {v0, v1, v2}, Lde/robv/android/xposed/XposedHelpers;->findAndHookMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;
    :try_end_40
    .catchall {:try_start_13 .. :try_end_40} :catchall_41

    .line 57
    goto :goto_47

    :catchall_41
    move-exception p1

    const-string p1, "ATTACH_UNAVAILABLE"

    invoke-static {p1}, Lcom/local/p5home/TurnCameraHook;->log(Ljava/lang/String;)V

    .line 58
    :goto_47
    return-void

    .line 46
    :cond_48
    :goto_48
    return-void
.end method
