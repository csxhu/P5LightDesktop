package com.local.p5home;

import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.List;
import java.util.Locale;
import java.util.Set;

/* loaded from: classes.dex */
final class WakeWordPolicy {
    static final int MAX_WORDS = 4;
    private static final Set<String> SYLLABLES = new HashSet(Arrays.asList("a ai an ang ao ba bai ban bang bao bei ben beng bi bian biao bie bin bing bo bu ca cai can cang cao ce cen ceng cha chai chan chang chao che chen cheng chi chong chou chu chuai chuan chuang chui chun chuo ci cong cou cu cuan cui cun cuo da dai dan dang dao de dei den deng di dia dian diao die ding diu dong dou du duan dui dun duo e ei en er fa fan fang fei fen feng fo fou fu ga gai gan gang gao ge gei gen geng gong gou gu gua guai guan guang gui gun guo ha hai han hang hao he hei hen heng hng hong hou hu hua huai huan huang hui hun huo ji jia jian jiang jiao jie jin jing jiong jiu juan jue jun jv ka kai kan kang kao ke ken keng kong kou ku kua kuai kuan kuang kui kun kuo la lai lan lang lao le lei leng li lia lian liang liao lie lin ling liu lo long lou lu luan lue lun luo lv ma mai man mang mao me mei men meng mi mian miao mie min ming miu mo mou mu na nai nan nang nao ne nei nen neng ng ni nian niang niao nie nin ning niu nong nou nu nuan nue nuo nv o ou pa pai pan pang pao pei pen peng pi pian piao pie pin ping po pou pu qi qia qian qiang qiao qie qin qing qiong qiu quan que qun qv ran rang rao re ren reng ri rong rou ru ruan rui run ruo sa sai san sang sao se sen seng sha shai shan shang shao she shei shen sheng shi shou shu shua shuai shuan shuang shui shun shuo si song sou su suan sui sun suo ta tai tan tang tao te tei teng ti tian tiao tie ting tong tou tu tuan tui tun tuo wa wai wan wang wei wen weng wo wu xi xia xian xiang xiao xie xin xing xiong xiu xuan xue xun xv ya yan yang yao ye yi yin ying yo yong you yu yuan yue yun za zai zan zang zao ze zei zen zeng zha zhai zhan zhang zhao zhe zhei zhen zheng zhi zhong zhou zhu zhua zhuai zhuan zhuang zhui zhun zhuo zi zong zou zu zuan zui zun zuo".split(" ")));

    static final class Word {
        final String pinyin;
        final String text;
        final String threshold;

        Word(String str, String str2, String str3) {
            this.text = str;
            this.pinyin = str2;
            this.threshold = str3;
        }

        String key() {
            return this.text + "|" + this.pinyin + "|" + this.threshold;
        }
    }

    static List<Word> parse(String str) throws NumberFormatException {
        String strReplaceAll;
        if (str == null || str.trim().isEmpty()) {
            throw new IllegalArgumentException("请填写大模型唤醒词");
        }
        if (str.length() > 512) {
            throw new IllegalArgumentException("唤醒词配置过长");
        }
        ArrayList arrayList = new ArrayList();
        HashSet hashSet = new HashSet();
        HashSet hashSet2 = new HashSet();
        String[] strArrSplit = str.split("[\\r\\n,，]+");
        int length = strArrSplit.length;
        int i = 0;
        int i2 = 0;
        while (i2 < length) {
            String strTrim = strArrSplit[i2].trim();
            if (!strTrim.isEmpty()) {
                String[] strArrSplit2 = strTrim.split("\\|", -1);
                if (strArrSplit2.length > 3) {
                    throw new IllegalArgumentException("唤醒词格式应为：中文|拼音|阈值");
                }
                String strTrim2 = strArrSplit2[i].trim();
                if (strTrim2.equals("你好小P") || strTrim2.equals("你好小p") || strTrim2.equals("你好小批") || strTrim2.equals("你好小鹏")) {
                    throw new IllegalArgumentException("请保留原厂小P唤醒词");
                }
                if (!strTrim2.matches("[\\u3400-\\u9fff]{4,8}")) {
                    throw new IllegalArgumentException("每个唤醒词需要4—8个汉字");
                }
                if (strArrSplit2.length > 1) {
                    strReplaceAll = strArrSplit2[1].trim().toLowerCase(Locale.ROOT).replaceAll("\\s+", " ");
                } else if ("豆包豆包".equals(strTrim2)) {
                    strReplaceAll = "dou bao dou bao";
                } else {
                    if (!"小爱同学".equals(strTrim2)) {
                        throw new IllegalArgumentException("自定义词请填写拼音，例如：你好助手|ni hao zhu shou");
                    }
                    strReplaceAll = "xiao ai tong xue";
                }
                String[] strArrSplit3 = strReplaceAll.split(" ");
                if (strArrSplit3.length != strTrim2.length()) {
                    throw new IllegalArgumentException("拼音音节数应与汉字数一致");
                }
                int length2 = strArrSplit3.length;
                for (int i3 = i; i3 < length2; i3++) {
                    if (!SYLLABLES.contains(strArrSplit3[i3])) {
                        throw new IllegalArgumentException("拼音需为原厂词典支持的不带声调音节");
                    }
                }
                if ("ni hao xiao pi".equals(strReplaceAll) || "ni hao xiao peng".equals(strReplaceAll)) {
                    throw new IllegalArgumentException("请保留原厂小P唤醒词");
                }
                try {
                    double d = Double.parseDouble(strArrSplit2.length == 3 ? strArrSplit2[2].trim() : "0.31");
                    if (!Double.isFinite(d) || d < 0.2d || d > 0.9d) {
                        throw new NumberFormatException();
                    }
                    String plainString = BigDecimal.valueOf(d).stripTrailingZeros().toPlainString();
                    if (!hashSet.add(strTrim2) || !hashSet2.add(strReplaceAll)) {
                        throw new IllegalArgumentException("唤醒词或拼音重复");
                    }
                    arrayList.add(new Word(strTrim2, strReplaceAll, plainString));
                    if (arrayList.size() > MAX_WORDS) {
                        throw new IllegalArgumentException("最多设置4个大模型唤醒词");
                    }
                } catch (NumberFormatException e) {
                    throw new IllegalArgumentException("唤醒阈值需要在0.20—0.90之间");
                }
            }
            i2++;
            i = 0;
        }
        if (arrayList.isEmpty()) {
            throw new IllegalArgumentException("请填写大模型唤醒词");
        }
        return Collections.unmodifiableList(arrayList);
    }

    private WakeWordPolicy() {
    }
}
