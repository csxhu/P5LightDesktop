.class final Lcom/local/p5home/WakeWordPolicy;
.super Ljava/lang/Object;
.source "WakeWordPolicy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/local/p5home/WakeWordPolicy$Word;
    }
.end annotation


# static fields
.field static final MAX_WORDS:I = 0x4

.field private static final SYLLABLES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 14
    new-instance v0, Ljava/util/HashSet;

    const-string v1, "a ai an ang ao ba bai ban bang bao bei ben beng bi bian biao bie bin bing bo bu ca cai can cang cao ce cen ceng cha chai chan chang chao che chen cheng chi chong chou chu chuai chuan chuang chui chun chuo ci cong cou cu cuan cui cun cuo da dai dan dang dao de dei den deng di dia dian diao die ding diu dong dou du duan dui dun duo e ei en er fa fan fang fei fen feng fo fou fu ga gai gan gang gao ge gei gen geng gong gou gu gua guai guan guang gui gun guo ha hai han hang hao he hei hen heng hng hong hou hu hua huai huan huang hui hun huo ji jia jian jiang jiao jie jin jing jiong jiu juan jue jun jv ka kai kan kang kao ke ken keng kong kou ku kua kuai kuan kuang kui kun kuo la lai lan lang lao le lei leng li lia lian liang liao lie lin ling liu lo long lou lu luan lue lun luo lv ma mai man mang mao me mei men meng mi mian miao mie min ming miu mo mou mu na nai nan nang nao ne nei nen neng ng ni nian niang niao nie nin ning niu nong nou nu nuan nue nuo nv o ou pa pai pan pang pao pei pen peng pi pian piao pie pin ping po pou pu qi qia qian qiang qiao qie qin qing qiong qiu quan que qun qv ran rang rao re ren reng ri rong rou ru ruan rui run ruo sa sai san sang sao se sen seng sha shai shan shang shao she shei shen sheng shi shou shu shua shuai shuan shuang shui shun shuo si song sou su suan sui sun suo ta tai tan tang tao te tei teng ti tian tiao tie ting tong tou tu tuan tui tun tuo wa wai wan wang wei wen weng wo wu xi xia xian xiang xiao xie xin xing xiong xiu xuan xue xun xv ya yan yang yao ye yi yin ying yo yong you yu yuan yue yun za zai zan zang zao ze zei zen zeng zha zhai zhan zhang zhao zhe zhei zhen zheng zhi zhong zhou zhu zhua zhuai zhuan zhuang zhui zhun zhuo zi zong zou zu zuan zui zun zuo"

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/local/p5home/WakeWordPolicy;->SYLLABLES:Ljava/util/Set;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static parse(Ljava/lang/String;)Ljava/util/List;
    .registers 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/local/p5home/WakeWordPolicy$Word;",
            ">;"
        }
    .end annotation

    .line 16
    move-object/from16 v0, p0

    const-string v1, "\u8bf7\u586b\u5199\u5927\u6a21\u578b\u5524\u9192\u8bcd"

    if-eqz v0, :cond_19a

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_19a

    .line 17
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x200

    if-gt v2, v3, :cond_192

    .line 18
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 19
    const-string v5, "[\\r\\n,\uff0c]+"

    invoke-virtual {v0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v5, v0

    const/4 v6, 0x0

    move v7, v6

    :goto_30
    if-ge v7, v5, :cond_181

    aget-object v8, v0, v7

    .line 20
    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_40

    goto/16 :goto_131

    .line 21
    :cond_40
    const-string v9, "\\|"

    const/4 v10, -0x1

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v8

    array-length v9, v8

    const/4 v10, 0x3

    if-gt v9, v10, :cond_179

    .line 22
    aget-object v9, v8, v6

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    .line 23
    const-string v11, "\u4f60\u597d\u5c0fP"

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    const-string v12, "\u8bf7\u4fdd\u7559\u539f\u5382\u5c0fP\u5524\u9192\u8bcd"

    if-nez v11, :cond_173

    const-string v11, "\u4f60\u597d\u5c0fp"

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_173

    const-string v11, "\u4f60\u597d\u5c0f\u6279"

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_173

    const-string v11, "\u4f60\u597d\u5c0f\u9e4f"

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_173

    .line 24
    const-string v11, "[\\u3400-\\u9fff]{4,8}"

    invoke-virtual {v9, v11}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_16b

    .line 26
    array-length v11, v8

    const-string v13, " "

    const/4 v14, 0x1

    if-le v11, v14, :cond_94

    aget-object v11, v8, v14

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    sget-object v14, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v11, v14}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v11

    const-string v14, "\\s+"

    invoke-virtual {v11, v14, v13}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    goto :goto_a9

    .line 27
    :cond_94
    const-string v11, "\u8c46\u5305\u8c46\u5305"

    invoke-virtual {v11, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_9f

    const-string v11, "dou bao dou bao"

    goto :goto_a9

    .line 28
    :cond_9f
    const-string v11, "\u5c0f\u7231\u540c\u5b66"

    invoke-virtual {v11, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_163

    const-string v11, "xiao ai tong xue"

    .line 30
    :goto_a9
    invoke-virtual {v11, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    .line 31
    array-length v14, v13

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v15

    if-ne v14, v15, :cond_15b

    .line 32
    array-length v14, v13

    move v15, v6

    :goto_b6
    if-ge v15, v14, :cond_cf

    aget-object v6, v13, v15

    sget-object v10, Lcom/local/p5home/WakeWordPolicy;->SYLLABLES:Ljava/util/Set;

    invoke-interface {v10, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c7

    add-int/lit8 v15, v15, 0x1

    const/4 v6, 0x0

    const/4 v10, 0x3

    goto :goto_b6

    :cond_c7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\u62fc\u97f3\u9700\u4e3a\u539f\u5382\u8bcd\u5178\u652f\u6301\u7684\u4e0d\u5e26\u58f0\u8c03\u97f3\u8282"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 33
    :cond_cf
    const-string v6, "ni hao xiao pi"

    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_155

    const-string v6, "ni hao xiao peng"

    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_155

    .line 34
    array-length v6, v8

    const/4 v10, 0x3

    if-ne v6, v10, :cond_eb

    const/4 v6, 0x2

    aget-object v6, v8, v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    goto :goto_ed

    :cond_eb
    const-string v6, "0.31"

    .line 35
    :goto_ed
    :try_start_ed
    invoke-static {v6}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Double;->isFinite(D)Z

    move-result v6

    if-eqz v6, :cond_146

    const-wide v14, 0x3fc999999999999aL    # 0.2

    cmpg-double v6, v12, v14

    if-ltz v6, :cond_146

    const-wide v14, 0x3feccccccccccccdL    # 0.9

    cmpl-double v6, v12, v14

    if-gtz v6, :cond_146

    invoke-static {v12, v13}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    move-result-object v6

    invoke-virtual {v6}, Ljava/math/BigDecimal;->stripTrailingZeros()Ljava/math/BigDecimal;

    move-result-object v6

    invoke-virtual {v6}, Ljava/math/BigDecimal;->toPlainString()Ljava/lang/String;

    move-result-object v6
    :try_end_115
    .catch Ljava/lang/NumberFormatException; {:try_start_ed .. :try_end_115} :catch_14c

    .line 36
    nop

    .line 37
    invoke-interface {v3, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_13e

    invoke-interface {v4, v11}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_13e

    .line 38
    new-instance v8, Lcom/local/p5home/WakeWordPolicy$Word;

    invoke-direct {v8, v9, v11, v6}, Lcom/local/p5home/WakeWordPolicy$Word;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    const/4 v8, 0x4

    if-gt v6, v8, :cond_136

    .line 19
    :goto_131
    add-int/lit8 v7, v7, 0x1

    const/4 v6, 0x0

    goto/16 :goto_30

    .line 38
    :cond_136
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\u6700\u591a\u8bbe\u7f6e4\u4e2a\u5927\u6a21\u578b\u5524\u9192\u8bcd"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 37
    :cond_13e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\u5524\u9192\u8bcd\u6216\u62fc\u97f3\u91cd\u590d"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 35
    :cond_146
    :try_start_146
    new-instance v0, Ljava/lang/NumberFormatException;

    invoke-direct {v0}, Ljava/lang/NumberFormatException;-><init>()V

    throw v0
    :try_end_14c
    .catch Ljava/lang/NumberFormatException; {:try_start_146 .. :try_end_14c} :catch_14c

    .line 36
    :catch_14c
    move-exception v0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\u5524\u9192\u9608\u503c\u9700\u8981\u57280.20\u20140.90\u4e4b\u95f4"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 33
    :cond_155
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 31
    :cond_15b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\u62fc\u97f3\u97f3\u8282\u6570\u5e94\u4e0e\u6c49\u5b57\u6570\u4e00\u81f4"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 29
    :cond_163
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\u81ea\u5b9a\u4e49\u8bcd\u8bf7\u586b\u5199\u62fc\u97f3\uff0c\u4f8b\u5982\uff1a\u4f60\u597d\u52a9\u624b|ni hao zhu shou"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 24
    :cond_16b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\u6bcf\u4e2a\u5524\u9192\u8bcd\u9700\u89814\u20148\u4e2a\u6c49\u5b57"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 23
    :cond_173
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 21
    :cond_179
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\u5524\u9192\u8bcd\u683c\u5f0f\u5e94\u4e3a\uff1a\u4e2d\u6587|\u62fc\u97f3|\u9608\u503c"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 40
    :cond_181
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_18c

    .line 41
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 40
    :cond_18c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 17
    :cond_192
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\u5524\u9192\u8bcd\u914d\u7f6e\u8fc7\u957f"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 16
    :cond_19a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
