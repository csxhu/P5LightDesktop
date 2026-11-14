.class final Lcom/local/p5home/TurnCameraStatusIdentity;
.super Ljava/lang/Object;
.source "TurnCameraStatusIdentity.java"


# static fields
.field static final CERT:Ljava/lang/String; = "162fb40e0725bcfcc0932a4d6bcd9606973b6443ebe1d2fa84ae735867286ee7"

.field static final PACKAGE:Ljava/lang/String; = "com.xiaopeng.drivingimageassist"


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static hex([B)Ljava/lang/String;
    .registers 7

    .line 33
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

.method static declared-synchronized verified(Landroid/content/Context;I)Z
    .registers 7

    const-class v0, Lcom/local/p5home/TurnCameraStatusIdentity;

    monitor-enter v0

    .line 17
    const/4 v1, 0x0

    if-eqz p0, :cond_80

    if-lez p1, :cond_80

    .line 18
    :try_start_8
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    .line 19
    const-string v2, "com.xiaopeng.drivingimageassist"

    const/high16 v3, 0x8000000

    invoke-virtual {p0, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 20
    iget-object v3, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 21
    if-eqz v3, :cond_76

    iget-boolean v4, v3, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-eqz v4, :cond_76

    iget v4, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v4, p1, :cond_76

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v3, v3, 0x81

    if-eqz v3, :cond_76

    iget-object v3, v2, Landroid/content/pm/PackageInfo;->signingInfo:Landroid/content/pm/SigningInfo;

    if-eqz v3, :cond_76

    iget-object v3, v2, Landroid/content/pm/PackageInfo;->signingInfo:Landroid/content/pm/SigningInfo;

    .line 23
    invoke-virtual {v3}, Landroid/content/pm/SigningInfo;->hasMultipleSigners()Z

    move-result v3

    if-eqz v3, :cond_33

    goto :goto_76

    .line 24
    :cond_33
    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object p0

    .line 25
    if-eqz p0, :cond_74

    array-length p1, p0

    const/4 v3, 0x1

    if-ne p1, v3, :cond_74

    const-string p1, "com.xiaopeng.drivingimageassist"

    aget-object p0, p0, v1

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_48

    goto :goto_74

    .line 26
    :cond_48
    iget-object p0, v2, Landroid/content/pm/PackageInfo;->signingInfo:Landroid/content/pm/SigningInfo;

    invoke-virtual {p0}, Landroid/content/pm/SigningInfo;->getApkContentsSigners()[Landroid/content/pm/Signature;

    move-result-object p0

    .line 27
    if-eqz p0, :cond_72

    array-length p1, p0

    if-ne p1, v3, :cond_72

    const-string p1, "162fb40e0725bcfcc0932a4d6bcd9606973b6443ebe1d2fa84ae735867286ee7"

    const-string v2, "SHA-256"

    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    aget-object p0, p0, v1

    invoke-virtual {p0}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p0

    invoke-static {p0}, Lcom/local/p5home/TurnCameraStatusIdentity;->hex([B)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0
    :try_end_6d
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_6d} :catch_7d
    .catch Ljava/lang/LinkageError; {:try_start_8 .. :try_end_6d} :catch_7b
    .catchall {:try_start_8 .. :try_end_6d} :catchall_78

    if-nez p0, :cond_70

    goto :goto_72

    .line 30
    :cond_70
    monitor-exit v0

    return v3

    .line 27
    :cond_72
    :goto_72
    monitor-exit v0

    return v1

    .line 25
    :cond_74
    :goto_74
    monitor-exit v0

    return v1

    .line 23
    :cond_76
    :goto_76
    monitor-exit v0

    return v1

    .line 16
    :catchall_78
    move-exception p0

    monitor-exit v0

    throw p0

    .line 31
    :catch_7b
    move-exception p0

    goto :goto_7e

    :catch_7d
    move-exception p0

    :goto_7e
    monitor-exit v0

    return v1

    .line 17
    :cond_80
    monitor-exit v0

    return v1
.end method
