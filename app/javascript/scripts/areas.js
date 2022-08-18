$(document).on('change', '.prefecture_select', function(){
  let prefectureId = $(this).val();

  if (prefectureId != '') {
    $('.area_select').val('');
    $('.area_select option').css('display', 'block');
    $('.area_select').css('display', 'block');

    if (prefectureId == 1) {
      // 北海道
      $('.area_select option[value]').each(function(i) {
        if (i>15) {
          $('.area_select option[value = ' +(i)+ ']').css('display', 'none');
        }
      });
    } else if (prefectureId == 2) {
      // 青森
      $('.area_select option[value]').each(function(i) {
        if (i>22 || i<16) {
          $('.area_select option[value = ' +(i)+ ']').css('display', 'none');
        }
      });
    } else if (prefectureId == 3) {
      // 岩手
      $('.area_select option[value]').each(function(i) {
        if (i>28 || i<23) {
          $('.area_select option[value = ' +(i)+ ']').css('display', 'none');
        }
      });
    } else if (prefectureId == 4) {
      // 宮城
      $('.area_select option[value]').each(function(i) {
        if (i>34 || i<29) {
          $('.area_select option[value = ' +(i)+ ']').css('display', 'none');
        }
      });
    } else if (prefectureId == 5) {
      // 秋田
      $('.area_select option[value]').each(function(i) {
        if (i>39 || i<35) {
          $('.area_select option[value = ' +(i)+ ']').css('display', 'none');
        }
      });
    } else if (prefectureId == 6) {
      // 山形
      $('.area_select option[value]').each(function(i) {
        if (i>44 || i<40) {
          $('.area_select option[value = ' +(i)+ ']').css('display', 'none');
        }
      });
    } else if (prefectureId == 7) {
      // 福島
      $('.area_select option[value]').each(function(i) {
        if (i>53 || i<45) {
          $('.area_select option[value = ' +(i)+ ']').css('display', 'none');
        }
      });
    } else if (prefectureId == 8) {
      // 茨城
      $('.area_select option[value]').each(function(i) {
        if (i>59 || i<54) {
          $('.area_select option[value = ' +(i)+ ']').css('display', 'none');
        }
      });
    } else if (prefectureId == 9) {
      // 栃木
      $('.area_select option[value]').each(function(i) {
        if (i>66 || i<60) {
          $('.area_select option[value = ' +(i)+ ']').css('display', 'none');
        }
      });
    } else if (prefectureId == 10) {
      // 群馬
      $('.area_select option[value]').each(function(i) {
        if (i>75 || i<67) {
          $('.area_select option[value = ' +(i)+ ']').css('display', 'none');
        }
      });
    } else if (prefectureId == 11) {
      // 埼玉
      $('.area_select option[value]').each(function(i) {
        if (i>81 || i<76) {
          $('.area_select option[value = ' +(i)+ ']').css('display', 'none');
        }
      });
    } else if (prefectureId == 12) {
      // 千葉
      $('.area_select option[value]').each(function(i) {
        if (i>90 || i<82) {
          $('.area_select option[value = ' +(i)+ ']').css('display', 'none');
        }
      });
    } else if (prefectureId == 13) {
      // 東京
      $('.area_select option[value]').each(function(i) {
        if (i>103 || i<91) {
          $('.area_select option[value = ' +(i)+ ']').css('display', 'none');
        }
      });
    } else if (prefectureId == 14) {
      // 神奈川
      $('.area_select option[value]').each(function(i) {
        if (i>112 || i<104) {
          $('.area_select option[value = ' +(i)+ ']').css('display', 'none');
        }
      });
    } else if (prefectureId == 15) {
      // 新潟
      $('.area_select option[value]').each(function(i) {
        if (i>120 || i<113) {
          $('.area_select option[value = ' +(i)+ ']').css('display', 'none');
        }
      });
    } else if (prefectureId == 16) {
      // 富山
      $('.area_select option[value]').each(function(i) {
        if (i>123 || i<121) {
          $('.area_select option[value = ' +(i)+ ']').css('display', 'none');
        }
      });
    } else if (prefectureId == 17) {
      // 石川
      $('.area_select option[value]').each(function(i) {
        if (i>128 || i<124) {
          $('.area_select option[value = ' +(i)+ ']').css('display', 'none');
        }
      });
    } else if (prefectureId == 18) {
      // 福井
      $('.area_select option[value]').each(function(i) {
        if (i>132 || i<129) {
          $('.area_select option[value = ' +(i)+ ']').css('display', 'none');
        }
      });
    } else if (prefectureId == 19) {
      // 山梨
      $('.area_select option[value]').each(function(i) {
        if (i>140 || i<133) {
          $('.area_select option[value = ' +(i)+ ']').css('display', 'none');
        }
      });
    } else if (prefectureId == 20) {
      // 長野
      $('.area_select option[value]').each(function(i) {
        if (i>157 || i<141) {
          $('.area_select option[value = ' +(i)+ ']').css('display', 'none');
        }
      });
    } else if (prefectureId == 21) {
      // 岐阜
      $('.area_select option[value]').each(function(i) {
        if (i>163 || i<158) {
          $('.area_select option[value = ' +(i)+ ']').css('display', 'none');
        }
      });
    } else if (prefectureId == 22) {
      // 静岡
      $('.area_select option[value]').each(function(i) {
        if (i>177 || i<164) {
          $('.area_select option[value = ' +(i)+ ']').css('display', 'none');
        }
      });
    } else if (prefectureId == 23) {
      // 愛知
      $('.area_select option[value]').each(function(i) {
        if (i>181 || i<178) {
          $('.area_select option[value = ' +(i)+ ']').css('display', 'none');
        }
      });
    } else if (prefectureId == 24) {
      // 三重
      $('.area_select option[value]').each(function(i) {
        if (i>190 || i<182) {
          $('.area_select option[value = ' +(i)+ ']').css('display', 'none');
        }
      });
    } else if (prefectureId == 25) {
      // 滋賀
      $('.area_select option[value]').each(function(i) {
        if (i>196 || i<191) {
          $('.area_select option[value = ' +(i)+ ']').css('display', 'none');
        }
      });
    } else if (prefectureId == 26) {
      // 京都
      $('.area_select option[value]').each(function(i) {
        if (i>206 || i<197) {
          $('.area_select option[value = ' +(i)+ ']').css('display', 'none');
        }
      });
    } else if (prefectureId == 27) {
      // 大阪
      $('.area_select option[value]').each(function(i) {
        if (i>215 || i<207) {
          $('.area_select option[value = ' +(i)+ ']').css('display', 'none');
        }
      });
    } else if (prefectureId == 28) {
      // 兵庫
      $('.area_select option[value]').each(function(i) {
        if (i>222 || i<216) {
          $('.area_select option[value = ' +(i)+ ']').css('display', 'none');
        }
      });
    } else if (prefectureId == 29) {
      // 奈良
      $('.area_select option[value]').each(function(i) {
        if (i>225 || i<223) {
          $('.area_select option[value = ' +(i)+ ']').css('display', 'none');
        }
      });
    } else if (prefectureId == 30) {
      // 和歌山
      $('.area_select option[value]').each(function(i) {
        if (i>231 || i<226) {
          $('.area_select option[value = ' +(i)+ ']').css('display', 'none');
        }
      });
    } else if (prefectureId == 31) {
      // 鳥取
      $('.area_select option[value]').each(function(i) {
        if (i>234 || i<232) {
          $('.area_select option[value = ' +(i)+ ']').css('display', 'none');
        }
      });
    } else if (prefectureId == 32) {
      // 島根
      $('.area_select option[value]').each(function(i) {
        if (i>238 || i<235) {
          $('.area_select option[value = ' +(i)+ ']').css('display', 'none');
        }
      });
    } else if (prefectureId == 33) {
      // 岡山
      $('.area_select option[value]').each(function(i) {
        if (i>242 || i<239) {
          $('.area_select option[value = ' +(i)+ ']').css('display', 'none');
        }
      });
    } else if (prefectureId == 34) {
      // 広島
      $('.area_select option[value]').each(function(i) {
        if (i>245 || i<243) {
          $('.area_select option[value = ' +(i)+ ']').css('display', 'none');
        }
      });
    } else if (prefectureId == 35) {
      // 山口
      $('.area_select option[value]').each(function(i) {
        if (i>249 || i<246) {
          $('.area_select option[value = ' +(i)+ ']').css('display', 'none');
        }
      });
    } else if (prefectureId == 36) {
      // 徳島
      $('.area_select option[value]').each(function(i) {
        if (i>252 || i<250) {
          $('.area_select option[value = ' +(i)+ ']').css('display', 'none');
        }
      });
    } else if (prefectureId == 37) {
      // 香川
      $('.area_select option[value]').each(function(i) {
        if (i>255 || i<253) {
          $('.area_select option[value = ' +(i)+ ']').css('display', 'none');
        }
      });
    } else if (prefectureId == 38) {
      // 愛媛
      $('.area_select option[value]').each(function(i) {
        if (i>259 || i<256) {
          $('.area_select option[value = ' +(i)+ ']').css('display', 'none');
        }
      });
    } else if (prefectureId == 39) {
      // 高知
      $('.area_select option[value]').each(function(i) {
        if (i>262 || i<260) {
          $('.area_select option[value = ' +(i)+ ']').css('display', 'none');
        }
      });
    } else if (prefectureId == 40) {
      // 福岡
      $('.area_select option[value]').each(function(i) {
        if (i>268 || i<263) {
          $('.area_select option[value = ' +(i)+ ']').css('display', 'none');
        }
      });
    } else if (prefectureId == 41) {
      // 佐賀
      $('.area_select option[value]').each(function(i) {
        if (i>273 || i<269) {
          $('.area_select option[value = ' +(i)+ ']').css('display', 'none');
        }
      });
    } else if (prefectureId == 42) {
      // 長崎
      $('.area_select option[value]').each(function(i) {
        if (i>279 || i<274) {
          $('.area_select option[value = ' +(i)+ ']').css('display', 'none');
        }
      });
    } else if (prefectureId == 43) {
      // 熊本
      $('.area_select option[value]').each(function(i) {
        if (i>286 || i<280) {
          $('.area_select option[value = ' +(i)+ ']').css('display', 'none');
        }
      });
    } else if (prefectureId == 44) {
      // 大分
      $('.area_select option[value]').each(function(i) {
        if (i>292 || i<287) {
          $('.area_select option[value = ' +(i)+ ']').css('display', 'none');
        }
      });
    } else if (prefectureId == 45) {
      // 宮崎
      $('.area_select option[value]').each(function(i) {
        if (i>295 || i<293) {
          $('.area_select option[value = ' +(i)+ ']').css('display', 'none');
        }
      });
    } else if (prefectureId == 46) {
      // 鹿児島
      $('.area_select option[value]').each(function(i) {
        if (i>301 || i<296) {
          $('.area_select option[value = ' +(i)+ ']').css('display', 'none');
        }
      });
    } else if (prefectureId == 47) {
      // 沖縄
      $('.area_select option[value]').each(function(i) {
        if (i<302) {
          $('.area_select option[value = ' +(i)+ ']').css('display', 'none');
        }
      });
    }

  } else {
    $('.area_select').val('');
    $('.area_select').css('display', 'none');
  }

});