class Area < ActiveHash::Base
  extend ActiveHash::Associations::ActiveRecordExtensions
  # belongs_to :prefecture

self.data = [
  #北海道
  {id: 1, name: '札幌', prefecture_id: 1},{id: 2, name: '定山渓', prefecture_id: 1},{id: 3, name: '小樽・キロロ・積丹', prefecture_id: 1},
  {id: 4, name: 'ニセコ・ルスツ', prefecture_id: 1},{id: 5, name: '洞爺・登別・苫小牧', prefecture_id:1 },{id:6 , name: '函館・大沼・松前', prefecture_id: 1},
  {id: 7, name: '稚内・留萌', prefecture_id: 1},{id: 8, name: '旭川・層雲峡', prefecture_id: 1},{id: 9, name: '富良野・美瑛・トマム', prefecture_id: 1},
  {id: 10, name: '網走・北見・知床', prefecture_id: 1},{id: 11, name: '釧路・阿寒・根室・川湯・屈斜路', prefecture_id: 1},{id: 12, name: '石狩・空知・千歳', prefecture_id: 1},
  {id: 13, name: '帯広・十勝', prefecture_id: 1},{id: 14, name: '日高・えりも', prefecture_id: 1},{id: 15, name: '離島（利尻・礼文・天売・焼尻・奥尻）', prefecture_id: 1},
  #青森
  {id: 16, name: '青森', prefecture_id: 2},{id: 17, name: '弘前', prefecture_id: 2},{id: 18, name: '十和田湖', prefecture_id: 2},
  {id: 19, name: '八戸', prefecture_id: 2},{id: 20, name: '下北・三沢', prefecture_id: 2},{id: 21, name: '津軽西海岸', prefecture_id: 2},
  {id: 22, name: '津軽半島', prefecture_id: 2},
  #岩手
  {id: 23, name: '雫石', prefecture_id: 3},{id: 24, name: '盛岡', prefecture_id: 3},{id: 25, name: '安比・八幡平・二戸', prefecture_id: 3},
  {id: 26, name: '花巻･北上･遠野', prefecture_id: 3},{id: 27, name: '三陸海岸', prefecture_id: 3},{id: 28, name: '奥州・平泉・一関', prefecture_id: 3},
  #宮城
  {id: 29, name: '仙台', prefecture_id: 4},{id: 30, name: '松島・塩竈', prefecture_id: 4},{id: 31, name: '石巻・気仙沼', prefecture_id: 4},
  {id: 32, name: '鳴子・大崎', prefecture_id: 4},{id: 33, name: '栗原・登米', prefecture_id: 4},{id: 34, name: '白石・蔵王', prefecture_id: 4},
  #秋田
  {id: 35, name: '秋田', prefecture_id: 5},{id: 36, name: '田沢湖・角館・大曲', prefecture_id: 5},{id: 37, name: '十和田湖・大館・鹿角', prefecture_id: 5},
  {id: 38, name: '白神・男鹿', prefecture_id: 5},{id: 39, name: '横手・鳥海', prefecture_id: 5},
  #山形
  {id: 40, name: '山形・天童・上山', prefecture_id: 6},{id: 41, name: '尾花沢・新庄・村山', prefecture_id: 6},{id: 42, name: '寒河江・月山', prefecture_id: 6},
  {id: 43, name: '米沢・置賜', prefecture_id: 6},{id: 44, name: '酒田・鶴岡', prefecture_id: 6},
  #福島
  {id: 45, name: '福島・二本松', prefecture_id: 7},{id: 46, name: '相馬', prefecture_id: 7},{id: 47, name: '裏磐梯・磐梯高原', prefecture_id: 7},
  {id: 48, name: '猪苗代・表磐梯', prefecture_id: 7},{id: 49, name: '会津', prefecture_id: 7},{id: 50, name: '南会津', prefecture_id: 7},
  {id: 51, name: '郡山', prefecture_id: 7},{id: 52, name: '白河', prefecture_id: 7},{id: 53, name: 'いわき・双葉', prefecture_id: 7},
  #茨城
  {id: 54, name: '北茨城・奥久慈', prefecture_id: 8},{id: 55, name: '水戸・笠間', prefecture_id: 8},{id: 56, name: '常総・結城・桜川', prefecture_id: 8},
  {id: 57, name: 'つくば・牛久', prefecture_id: 8},{id: 58, name: '霞ケ浦・土浦・潮来', prefecture_id: 8},{id: 59, name: '鹿島・大洗・ひたちなか', prefecture_id: 8},
  #栃木
  {id: 60, name: '宇都宮・さくら', prefecture_id: 9},{id: 61, name: '那須・板室', prefecture_id: 9},{id: 62, name: '塩原・矢板・大田原・西那須野', prefecture_id: 9},
  {id: 63, name: '日光・霧降高原・奥日光・中禅寺湖・今市', prefecture_id: 9},{id: 64, name: '鬼怒川・川治・湯西川・川俣', prefecture_id: 9},{id: 65, name: '佐野・小山・足利・鹿沼', prefecture_id: 9},
  {id: 66, name: '馬頭・茂木・益子・真岡', prefecture_id: 9},
  #群馬
  {id: 67, name: '四万・吾妻・川原湯', prefecture_id: 10},{id: 68, name: '草津・尻焼・花敷', prefecture_id: 10},{id: 69, name: '万座・嬬恋・北軽井沢', prefecture_id: 10},
  {id: 70, name: '水上・月夜野・猿ヶ京・法師', prefecture_id: 10},{id: 71, name: '沼田・老神・尾瀬', prefecture_id: 10},{id: 72, name: '赤城・桐生・渡良瀬', prefecture_id: 10},
  {id: 73, name: '渋川・伊香保', prefecture_id: 10},{id: 74, name: '前橋・高崎・伊勢崎・太田･榛名', prefecture_id: 10},{id: 75, name: '藤岡・碓氷・磯部・妙義', prefecture_id: 10},
  #埼玉
  {id: 76, name: '川越・さいたま', prefecture_id: 11},{id: 77, name: '秩父・長瀞', prefecture_id: 11},{id: 78, name: '飯能', prefecture_id: 11},
  {id: 79, name: '久喜・行田', prefecture_id: 11},{id: 80, name: '本庄・熊谷', prefecture_id: 11},{id: 81, name: '越谷・草加', prefecture_id: 11},
  #千葉
  {id: 82, name: '千葉・市原', prefecture_id: 12},{id: 83, name: '舞浜・浦安・船橋・幕張', prefecture_id: 12},{id: 84, name: '成田', prefecture_id: 12},
  {id: 85, name: '松戸・柏・野田', prefecture_id: 12},{id: 86, name: '佐倉・八街', prefecture_id: 12},{id: 87, name: '九十九里・銚子', prefecture_id: 12},
  {id: 88, name: '木更津・君津・富津', prefecture_id: 12},{id: 89, name: '勝浦・鴨川', prefecture_id: 12},{id: 90, name: '館山・南房総', prefecture_id: 12},
  #東京
  {id: 91, name: '銀座・日本橋・東京駅周辺', prefecture_id: 13},{id: 92, name: 'お茶の水・湯島・九段・後楽園', prefecture_id: 13},{id: 93, name: '六本木・麻布・赤坂・青山', prefecture_id: 13},
  {id: 94, name: 'お台場・汐留・新橋・品川', prefecture_id: 13},{id: 95, name: '上野・浅草・両国', prefecture_id: 13},{id: 96, name: '池袋・目白・板橋・赤羽', prefecture_id: 13},
  {id: 97, name: '新宿・中野・杉並・吉祥寺', prefecture_id: 13},{id: 98, name: '渋谷・目黒・世田谷', prefecture_id: 13},{id: 99, name: '蒲田・大森・羽田周辺', prefecture_id: 13},
  {id: 100, name: '葛飾・江戸川・江東', prefecture_id: 13},{id: 101, name: '八王子・立川・町田・府中・調布', prefecture_id: 13},{id: 102, name: '青梅・奥多摩', prefecture_id: 13},
  {id: 103, name: '伊豆七島・小笠原', prefecture_id: 13},
  #神奈川
  {id: 104, name: '川崎', prefecture_id: 14},{id: 105, name: '横浜', prefecture_id: 14},{id: 106, name: '横須賀・三浦', prefecture_id: 14},
  {id: 107, name: '湘南・鎌倉', prefecture_id: 14},{id: 108, name: '厚木・海老名', prefecture_id: 14},{id: 109, name: '相模原', prefecture_id: 14},
  {id: 110, name: '箱根', prefecture_id: 14},{id: 111, name: '湯河原・真鶴・小田原', prefecture_id: 14},{id: 112, name: '足柄', prefecture_id: 14},
  #新潟
  {id: 113, name: '新潟・月岡・阿賀野川', prefecture_id: 15},{id: 114, name: '瀬波・村上・岩船', prefecture_id: 15},{id: 115, name: '燕・三条・岩室・弥彦', prefecture_id: 15},
  {id: 116, name: '柏崎・寺泊・長岡・魚沼（湯之谷）', prefecture_id: 15},{id: 117, name: '南魚沼・十日町・津南（六日町）', prefecture_id: 15},{id: 118, name: '湯沢・苗場', prefecture_id: 15},
  {id: 119, name: '上越・糸魚川・妙高', prefecture_id: 15},{id: 120, name: '佐渡', prefecture_id: 15},
  #富山
  {id: 121, name: '立山・黒部・宇奈月', prefecture_id: 16},{id: 122, name: '富山', prefecture_id: 16},{id: 123, name: '高岡・氷見・砺波', prefecture_id: 16},
  #石川
  {id: 124, name: '輪島・能登', prefecture_id: 17},{id: 125, name: '和倉・七尾', prefecture_id: 17},{id: 126, name: '金沢・羽咋', prefecture_id: 17},
  {id: 127, name: '白山', prefecture_id: 17},{id: 128, name: '加賀・小松・辰口', prefecture_id: 17},
  #福井
  {id: 129, name: '三国・あわら', prefecture_id: 18},{id: 130, name: '福井・奥越前', prefecture_id: 18},{id: 131, name: '越前', prefecture_id: 18},
  {id: 132, name: '若狭', prefecture_id: 18},
  #山梨
  {id: 133, name: '甲府・湯村・昇仙峡', prefecture_id: 19},{id: 134, name: '石和・勝沼・塩山', prefecture_id: 19},{id: 135, name: '大月・都留', prefecture_id: 19},
  {id: 136, name: '山中湖・忍野', prefecture_id: 19},{id: 137, name: '河口湖・西湖・富士吉田・精進湖・本栖湖', prefecture_id: 19},{id: 138, name: '下部・身延・早川', prefecture_id: 19},
  {id: 139, name: '南アルプス', prefecture_id: 19},{id: 140, name: '八ヶ岳・小淵沢・清里・大泉', prefecture_id: 19},
  #長野
  {id: 141, name: '長野・戸隠・小布施', prefecture_id: 20},{id: 142, name: '野沢・木島平・秋山郷', prefecture_id: 20},{id: 143, name: '志賀・北志賀・湯田中渋', prefecture_id: 20},
  {id: 144, name: '上田・別所・鹿教湯', prefecture_id: 20},{id: 145, name: '菅平・峰の原', prefecture_id: 20},{id: 146, name: '戸倉上山田・千曲', prefecture_id: 20},
  {id: 147, name: '軽井沢・佐久・小諸', prefecture_id: 20},{id: 148, name: '八ヶ岳・富士見・原村・野辺山・小海', prefecture_id: 20},{id: 149, name: '蓼科・白樺湖・車山・女神湖・姫木平', prefecture_id: 20},
  {id: 150, name: '上諏訪・下諏訪・岡谷・霧ヶ峰・美ヶ原高原', prefecture_id: 20},{id: 151, name: '白馬・小谷', prefecture_id: 20},{id: 152, name: '松本市（松本駅周辺・浅間・美ヶ原・塩尻）', prefecture_id: 20},
  {id: 153, name: '松本市（上高地・乗鞍・白骨・野麦峠）', prefecture_id: 20},{id: 154, name: '安曇野・大町', prefecture_id: 20},{id: 155, name: '伊那・駒ヶ根・飯田・昼神', prefecture_id: 20},
  {id: 156, name: '木曽', prefecture_id: 20},{id: 157, name: '斑尾・飯山・信濃町・黒姫', prefecture_id: 20},
  #岐阜
  {id: 158, name: '飛騨・高山', prefecture_id: 21},{id: 159, name: '奥飛騨', prefecture_id: 21},{id: 160, name: '下呂・南飛騨', prefecture_id: 21},
  {id: 161, name: '郡上・美濃・関', prefecture_id: 21},{id: 162, name: '恵那・多治見・可児・加茂', prefecture_id: 21},{id: 163, name: '岐阜・大垣・養老', prefecture_id: 21},
  #静岡
  {id: 164, name: '熱海', prefecture_id: 22},{id: 165, name: '伊東・宇佐美・川奈', prefecture_id: 22},{id: 166, name: '伊豆高原', prefecture_id: 22},
  {id: 167, name: '東伊豆', prefecture_id: 22},{id: 168, name: '下田・白浜', prefecture_id: 22},{id: 169, name: '南伊豆', prefecture_id: 22},
  {id: 170, name: '西伊豆', prefecture_id: 22},{id: 171, name: '中伊豆', prefecture_id: 22},{id: 172, name: '沼津・三島', prefecture_id: 22},
  {id: 173, name: '御殿場・富士', prefecture_id: 22},{id: 174, name: '静岡・清水', prefecture_id: 22},{id: 175, name: '焼津・御前崎・掛川', prefecture_id: 22},
  {id: 176, name: '大井川・寸又峡・川根', prefecture_id: 22},{id: 177, name: '浜松・浜名湖', prefecture_id: 22},
  #愛知
  {id: 178, name: '名古屋', prefecture_id: 23},{id: 179, name: '三河', prefecture_id: 23},{id: 180, name: '尾張・犬山・小牧', prefecture_id: 23},
  {id: 181, name: '知多', prefecture_id: 23},
  #三重
  {id: 182, name: '桑名・長島・四日市・鈴鹿', prefecture_id: 24},{id: 183, name: '伊賀・上野・名張', prefecture_id: 24},{id: 184, name: '津・久居・美杉・松阪', prefecture_id: 24},
  {id: 185, name: '伊勢・二見', prefecture_id: 24},{id: 186, name: '鳥羽', prefecture_id: 24},{id: 187, name: '鳥羽南', prefecture_id: 24},
  {id: 188, name: '志摩', prefecture_id: 24},{id: 189, name: '奥伊勢', prefecture_id: 24},{id: 190, name: '東紀州', prefecture_id: 24},
  #滋賀
  {id: 191, name: '大津', prefecture_id: 25},{id: 192, name: '彦根・長浜', prefecture_id: 25},{id: 193, name: '甲賀・信楽', prefecture_id: 25},
  {id: 194, name: '奥琵琶湖・湖西', prefecture_id: 25},{id: 195, name: '草津・守山・近江八幡', prefecture_id: 25},{id: 196, name: '雄琴・堅田', prefecture_id: 25},
  #京都
  {id: 197, name: '河原町・烏丸・大宮周辺', prefecture_id: 26},{id: 198, name: '京都駅周辺', prefecture_id: 26},{id: 199, name: '大原・鞍馬・貴船', prefecture_id: 26},
  {id: 200, name: '嵯峨野・嵐山・高雄', prefecture_id: 26},{id: 201, name: '祇園・東山・北白川周辺', prefecture_id: 26},{id: 202, name: '京都南部（宇治・長岡京・山崎）', prefecture_id: 26},
  {id: 203, name: '湯の花・丹波・美山', prefecture_id: 26},{id: 204, name: '天橋立・宮津・舞鶴', prefecture_id: 26},{id: 205, name: '丹後・久美浜', prefecture_id: 26},
  {id: 206, name: '綾部・福知山', prefecture_id: 26},
  #大阪
  {id: 207, name: '大阪北部（茨木・高槻・箕面・伊丹空港）', prefecture_id: 27},{id: 208, name: '新大阪・江坂・十三・塚本', prefecture_id: 27},{id: 209, name: '大阪駅・梅田駅・福島・淀屋橋・本町', prefecture_id: 27},
  {id: 210, name: '大阪ベイエリア', prefecture_id: 27},{id: 211, name: '大阪城・京橋・市内東部', prefecture_id: 27},{id: 212, name: '心斎橋・なんば・四ツ橋', prefecture_id: 27},
  {id: 213, name: '上本町・天王寺・市内南部', prefecture_id: 27},{id: 214, name: '大阪東部（東大阪・藤井寺・河内長野）', prefecture_id: 28},{id: 215, name: '大阪南部（堺・岸和田・関西空港）', prefecture_id: 29},
  #兵庫
  {id: 216, name: '神戸・有馬・明石', prefecture_id: 28},{id: 217, name: '尼崎・宝塚・三田・篠山', prefecture_id: 28},{id: 218, name: '姫路・赤穂・播磨', prefecture_id: 28},
  {id: 219, name: '城崎・竹野・豊岡', prefecture_id: 28},{id: 220, name: '香住・浜坂・湯村', prefecture_id: 28},{id: 221, name: '神鍋・鉢伏・養父・和田山', prefecture_id: 28},
  {id: 222, name: '淡路島', prefecture_id: 28},
  #奈良
  {id: 223, name: '奈良・斑鳩・天理', prefecture_id: 29},{id: 224, name: '飛鳥・橿原・三輪', prefecture_id: 29},{id: 225, name: '吉野・奥吉野', prefecture_id: 29},
  #和歌山
  {id: 226, name: '和歌山市・加太・和歌浦', prefecture_id: 30},{id: 227, name: '高野山', prefecture_id: 30},{id: 228, name: '有田・御坊・日高', prefecture_id: 30},
  {id: 229, name: '白浜・龍神', prefecture_id: 30},{id: 230, name: '本宮・新宮・中辺路', prefecture_id: 30},{id: 231, name: '勝浦・串本・すさみ', prefecture_id: 30},
  #鳥取
  {id: 232, name: '鳥取・岩美', prefecture_id: 31},{id: 233, name: '倉吉・三朝・湯梨浜', prefecture_id: 31},{id: 234, name: '米子・大山', prefecture_id: 31},
  #島根
  {id: 235, name: '松江・安来・玉造・奥出雲', prefecture_id: 32},{id: 236, name: '出雲・大田・石見銀山', prefecture_id: 32},{id: 237, name: '益田・浜田・津和野', prefecture_id: 32},
  {id: 238, name: '隠岐島', prefecture_id: 32},
  #岡山
  {id: 239, name: '岡山・玉野・牛窓', prefecture_id: 33},{id: 240, name: '倉敷・総社・井笠', prefecture_id: 33},{id: 241, name: '津山・美作三湯・蒜山', prefecture_id: 33},
  {id: 242, name: '高梁・新見・吉備高原', prefecture_id: 33},
  #広島
  {id: 243, name: '福山・竹原・呉', prefecture_id: 34},{id: 244, name: '庄原・三次・芸北', prefecture_id: 34},{id: 245, name: '広島・宮島', prefecture_id: 34},
  #山口
  {id: 246, name: '岩国・柳井・周南', prefecture_id: 35},{id: 247, name: '山口・秋芳', prefecture_id: 35},{id: 248, name: '萩・長門', prefecture_id: 35},
  {id: 249, name: '下関・宇部', prefecture_id: 35},
  #徳島
  {id: 250, name: '徳島・鳴門', prefecture_id: 36},{id: 251, name: '阿南・日和佐・宍喰', prefecture_id: 36},{id: 252, name: '大歩危・祖谷・剣山', prefecture_id: 36},
  #香川
  {id: 253, name: '高松・東讃', prefecture_id: 37},{id: 254, name: '琴平・丸亀・坂出', prefecture_id: 37},{id: 255, name: '小豆島', prefecture_id: 37},
  #愛媛
  {id: 256, name: '松山・道後', prefecture_id: 38},{id: 257, name: '今治・しまなみ海道', prefecture_id: 38},{id: 258, name: '南予・宇和島', prefecture_id: 38},
  {id: 259, name: '新居浜・東予', prefecture_id: 38},
  #高知
  {id: 260, name: '高知・須崎・南国', prefecture_id: 39},{id: 261, name: '安芸・室戸', prefecture_id: 39},{id: 262, name: '足摺・四万十', prefecture_id: 39},
  #福岡
  {id: 263, name: '福岡市（博多駅周辺・天神周辺）', prefecture_id: 40},{id: 264, name: '太宰府・宗像', prefecture_id: 40},{id: 265, name: '糸島・前原', prefecture_id: 40},
  {id: 266, name: '久留米・原鶴・筑後川', prefecture_id: 40},{id: 267, name: '柳川・八女・筑後', prefecture_id: 40},{id: 268, name: '北九州', prefecture_id: 40},
  #佐賀
  {id: 269, name: '佐賀・古湯・熊の川', prefecture_id: 41},{id: 270, name: '嬉野・武雄', prefecture_id: 41},{id: 271, name: '太良', prefecture_id: 41},
  {id: 272, name: '唐津・呼子', prefecture_id: 41},{id: 273, name: '伊万里・有田', prefecture_id: 41},
  #長崎
  {id: 274, name: '長崎', prefecture_id: 42},{id: 275, name: '平戸・松浦・田平', prefecture_id: 42},{id: 276, name: '佐世保・ハウステンボス', prefecture_id: 42},
  {id: 277, name: '島原・雲仙・小浜', prefecture_id: 42},{id: 278, name: '五島列島', prefecture_id: 42},{id: 279, name: '壱岐・対馬', prefecture_id: 42},
  #熊本
  {id: 280, name: '熊本', prefecture_id: 43},{id: 281, name: '玉名・山鹿・菊池', prefecture_id: 43},{id: 282, name: '黒川・杖立', prefecture_id: 43},
  {id: 283, name: '阿蘇', prefecture_id: 43},{id: 284, name: '八代・水俣・湯の児', prefecture_id: 43},{id: 285, name: '人吉・球磨', prefecture_id: 43},
  {id: 286, name: '天草', prefecture_id: 43},
  #大分
  {id: 287, name: '大分', prefecture_id: 44},{id: 288, name: '別府', prefecture_id: 44},{id: 289, name: '湯布院', prefecture_id: 44},
  {id: 290, name: '中津・国東', prefecture_id: 44},{id: 291, name: '日田・天ヶ瀬・耶馬渓', prefecture_id: 44},{id: 292, name: '九重・久住・竹田・長湯', prefecture_id: 44},
  #宮崎
  {id: 293, name: '宮崎・青島・日南', prefecture_id: 45},{id: 294, name: 'えびの・都城', prefecture_id: 45},{id: 295, name: '日向・延岡・高千穂', prefecture_id: 45},
  #鹿児島
  {id: 296, name: '鹿児島・桜島', prefecture_id: 46},{id: 297, name: '南薩・指宿', prefecture_id: 46},{id: 298, name: '垂水・大隅', prefecture_id: 46},
  {id: 299, name: '霧島', prefecture_id: 46},{id: 300, name: '北薩・川内', prefecture_id: 46},{id: 301, name: '離島', prefecture_id: 46},
  #沖縄
  {id: 302, name: '那覇', prefecture_id: 47},{id: 303, name: '沖縄市（コザ）・北谷・宜野湾', prefecture_id: 47},{id: 304, name: '西海岸・東海岸', prefecture_id: 47},
  {id: 305, name: '南部', prefecture_id: 47},{id: 306, name: '本部・名護・国頭', prefecture_id: 47},{id: 307, name: '離島', prefecture_id: 47}
]

  include ActiveHash::Associations
  has_many :posts


end