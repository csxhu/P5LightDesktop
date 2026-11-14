.class final Lcom/local/p5home/OemSpeechIdentity;
.super Ljava/lang/Object;
.source "OemSpeechIdentity.java"


# static fields
.field private static final APK:Ljava/lang/String; = "a9a2fb27edb76f6ed0c171b4db662f36d7cd2c3224cb6f6270f90d093eb68e5f"

.field private static final CERT:Ljava/lang/String; = "162fb40e0725bcfcc0932a4d6bcd9606973b6443ebe1d2fa84ae735867286ee7"

.field private static final DEX:Ljava/lang/String; = "6874b8b87a91b0657069ddc878564b8d552ebb9478685ce43a8cb8307325533a"

.field static final PACKAGE:Ljava/lang/String; = "com.xiaopeng.carspeechservice"


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static hash(Ljava/io/InputStream;Ljava/security/MessageDigest;J)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 53
    const v0, 0x8000

    new-array v0, v0, [B

    const-wide/16 v1, 0x0

    .line 54
    :goto_7
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_21

    int-to-long v4, v3

    add-long/2addr v1, v4

    cmp-long v4, v1, p2

    if-gtz v4, :cond_19

    const/4 v4, 0x0

    invoke-virtual {p1, v0, v4, v3}, Ljava/security/MessageDigest;->update([BII)V

    goto :goto_7

    :cond_19
    new-instance p0, Ljava/io/IOException;

    const-string p1, "code too large"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 55
    :cond_21
    return-void
.end method

.method private static hex([B)Ljava/lang/String;
    .registers 7

    .line 56
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

.method static knownCode(Landroid/content/Context;)Z
    .registers 10

    .line 34
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v1, "com.xiaopeng.carspeechservice"

    invoke-virtual {p0, v1, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    iget-object p0, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 35
    if-eqz p0, :cond_f6

    iget-object v1, p0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    if-nez v1, :cond_15

    goto/16 :goto_f6

    .line 36
    :cond_15
    new-instance v1, Ljava/io/File;

    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result p0

    if-eqz p0, :cond_f5

    invoke-virtual {v1}, Ljava/io/File;->canRead()Z

    move-result p0

    if-eqz p0, :cond_f5

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long p0, v2, v4

    if-lez p0, :cond_f5

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v2

    const-wide/32 v6, 0x10000000

    cmp-long p0, v2, v6

    if-lez p0, :cond_3f

    goto/16 :goto_f5

    .line 37
    :cond_3f
    const-string p0, "SHA-256"

    invoke-static {p0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object p0

    .line 38
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_4a
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_4a} :catch_f9
    .catch Ljava/lang/LinkageError; {:try_start_1 .. :try_end_4a} :catch_f7

    :try_start_4a
    invoke-static {v2, p0, v6, v7}, Lcom/local/p5home/OemSpeechIdentity;->hash(Ljava/io/InputStream;Ljava/security/MessageDigest;J)V
    :try_end_4d
    .catchall {:try_start_4a .. :try_end_4d} :catchall_eb

    :try_start_4d
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 39
    const-string v2, "a9a2fb27edb76f6ed0c171b4db662f36d7cd2c3224cb6f6270f90d093eb68e5f"

    invoke-virtual {p0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v3

    invoke-static {v3}, Lcom/local/p5home/OemSpeechIdentity;->hex([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_62

    const/4 p0, 0x1

    return p0

    .line 40
    :cond_62
    new-instance v2, Ljava/util/zip/ZipFile;

    invoke-direct {v2, v1}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V
    :try_end_67
    .catch Ljava/lang/Exception; {:try_start_4d .. :try_end_67} :catch_f9
    .catch Ljava/lang/LinkageError; {:try_start_4d .. :try_end_67} :catch_f7

    .line 41
    :try_start_67
    invoke-virtual {v2}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v1

    const/4 v3, 0x0

    .line 42
    :goto_6c
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v6

    if-eqz v6, :cond_9a

    .line 43
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/zip/ZipEntry;

    invoke-virtual {v6}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "classes[0-9]*\\.dex"

    invoke-virtual {v7, v8}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_85

    goto :goto_6c

    .line 44
    :cond_85
    if-nez v3, :cond_96

    const-string v3, "classes.dex"

    invoke-virtual {v6}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_91
    .catchall {:try_start_67 .. :try_end_91} :catchall_e1

    if-nez v3, :cond_94

    goto :goto_96

    .line 45
    :cond_94
    move-object v3, v6

    goto :goto_6c

    .line 49
    :cond_96
    :goto_96
    :try_start_96
    invoke-virtual {v2}, Ljava/util/zip/ZipFile;->close()V
    :try_end_99
    .catch Ljava/lang/Exception; {:try_start_96 .. :try_end_99} :catch_f9
    .catch Ljava/lang/LinkageError; {:try_start_96 .. :try_end_99} :catch_f7

    .line 44
    return v0

    .line 46
    :cond_9a
    if-eqz v3, :cond_dd

    :try_start_9c
    invoke-virtual {v3}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v6

    cmp-long v1, v6, v4

    if-lez v1, :cond_dd

    invoke-virtual {v3}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v4

    const-wide/32 v6, 0x8000000

    cmp-long v1, v4, v6

    if-lez v1, :cond_b0

    goto :goto_dd

    .line 47
    :cond_b0
    invoke-virtual {p0}, Ljava/security/MessageDigest;->reset()V

    invoke-virtual {v2, v3}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v1
    :try_end_b7
    .catchall {:try_start_9c .. :try_end_b7} :catchall_e1

    :try_start_b7
    invoke-static {v1, p0, v6, v7}, Lcom/local/p5home/OemSpeechIdentity;->hash(Ljava/io/InputStream;Ljava/security/MessageDigest;J)V
    :try_end_ba
    .catchall {:try_start_b7 .. :try_end_ba} :catchall_d1

    if-eqz v1, :cond_bf

    :try_start_bc
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 48
    :cond_bf
    const-string v1, "6874b8b87a91b0657069ddc878564b8d552ebb9478685ce43a8cb8307325533a"

    invoke-virtual {p0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p0

    invoke-static {p0}, Lcom/local/p5home/OemSpeechIdentity;->hex([B)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0
    :try_end_cd
    .catchall {:try_start_bc .. :try_end_cd} :catchall_e1

    .line 49
    :try_start_cd
    invoke-virtual {v2}, Ljava/util/zip/ZipFile;->close()V
    :try_end_d0
    .catch Ljava/lang/Exception; {:try_start_cd .. :try_end_d0} :catch_f9
    .catch Ljava/lang/LinkageError; {:try_start_cd .. :try_end_d0} :catch_f7

    .line 48
    return p0

    .line 47
    :catchall_d1
    move-exception p0

    if-eqz v1, :cond_dc

    :try_start_d4
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_d7
    .catchall {:try_start_d4 .. :try_end_d7} :catchall_d8

    goto :goto_dc

    :catchall_d8
    move-exception v1

    :try_start_d9
    invoke-virtual {p0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_dc
    :goto_dc
    throw p0
    :try_end_dd
    .catchall {:try_start_d9 .. :try_end_dd} :catchall_e1

    .line 49
    :cond_dd
    :goto_dd
    :try_start_dd
    invoke-virtual {v2}, Ljava/util/zip/ZipFile;->close()V
    :try_end_e0
    .catch Ljava/lang/Exception; {:try_start_dd .. :try_end_e0} :catch_f9
    .catch Ljava/lang/LinkageError; {:try_start_dd .. :try_end_e0} :catch_f7

    .line 46
    return v0

    .line 40
    :catchall_e1
    move-exception p0

    :try_start_e2
    invoke-virtual {v2}, Ljava/util/zip/ZipFile;->close()V
    :try_end_e5
    .catchall {:try_start_e2 .. :try_end_e5} :catchall_e6

    goto :goto_ea

    :catchall_e6
    move-exception v1

    :try_start_e7
    invoke-virtual {p0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_ea
    throw p0
    :try_end_eb
    .catch Ljava/lang/Exception; {:try_start_e7 .. :try_end_eb} :catch_f9
    .catch Ljava/lang/LinkageError; {:try_start_e7 .. :try_end_eb} :catch_f7

    .line 38
    :catchall_eb
    move-exception p0

    :try_start_ec
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_ef
    .catchall {:try_start_ec .. :try_end_ef} :catchall_f0

    goto :goto_f4

    :catchall_f0
    move-exception v1

    :try_start_f1
    invoke-virtual {p0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_f4
    throw p0
    :try_end_f5
    .catch Ljava/lang/Exception; {:try_start_f1 .. :try_end_f5} :catch_f9
    .catch Ljava/lang/LinkageError; {:try_start_f1 .. :try_end_f5} :catch_f7

    .line 36
    :cond_f5
    :goto_f5
    return v0

    .line 35
    :cond_f6
    :goto_f6
    return v0

    .line 50
    :catch_f7
    move-exception p0

    goto :goto_fa

    :catch_f9
    move-exception p0

    :goto_fa
    return v0
.end method

.method static trusted(Landroid/content/Context;I)Z
    .registers 7

    .line 22
    const-string v0, "com.xiaopeng.carspeechservice"

    const/4 v1, 0x0

    if-eqz p0, :cond_6a

    if-lez p1, :cond_6a

    .line 23
    :try_start_7
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/16 v3, 0x40

    invoke-virtual {v2, v0, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 24
    iget-object v3, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 25
    if-eqz v3, :cond_65

    iget-boolean v4, v3, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-eqz v4, :cond_65

    iget v4, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v4, p1, :cond_65

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v3, v3, 0x81

    if-nez v3, :cond_24

    goto :goto_65

    .line 26
    :cond_24
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object p0

    .line 27
    if-eqz p0, :cond_64

    array-length p1, p0

    const/4 v3, 0x1

    if-ne p1, v3, :cond_64

    aget-object p0, p0, v1

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3b

    goto :goto_64

    .line 28
    :cond_3b
    iget-object p0, v2, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .line 29
    if-eqz p0, :cond_63

    array-length p1, p0

    if-ne p1, v3, :cond_63

    aget-object p1, p0, v1

    if-eqz p1, :cond_63

    const-string p1, "162fb40e0725bcfcc0932a4d6bcd9606973b6443ebe1d2fa84ae735867286ee7"

    const-string v0, "SHA-256"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    aget-object p0, p0, v1

    invoke-virtual {p0}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p0

    invoke-static {p0}, Lcom/local/p5home/OemSpeechIdentity;->hex([B)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0
    :try_end_60
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_60} :catch_68
    .catch Ljava/lang/LinkageError; {:try_start_7 .. :try_end_60} :catch_66

    if-eqz p0, :cond_63

    move v1, v3

    :cond_63
    return v1

    .line 27
    :cond_64
    :goto_64
    return v1

    .line 25
    :cond_65
    :goto_65
    return v1

    .line 30
    :catch_66
    move-exception p0

    goto :goto_69

    :catch_68
    move-exception p0

    :goto_69
    return v1

    .line 22
    :cond_6a
    return v1
.end method
