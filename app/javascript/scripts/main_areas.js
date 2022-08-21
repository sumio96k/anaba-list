$(document).on('change', '.main_prefecture_select', function(){
  let prefectureId = $(this).val();

  // target_css = $(this).attr('id')
  // alert('".' + target_css  + ' option[value]"')
  // alert("'" + "."+target_css+ "'")


  if (prefectureId != '') {
    // 何か選択したらセレクトボックスが表示される
    $('.main_area_select').val('');
    $('.main_area_select option').css('display', 'block');
    $('.main_area_select').css('display', 'block');

    if (prefectureId == 1) {
      // 北海道
      $('.main_area_select option[value]').each(function(i) {
        if (i>15) {
          $('.main_area_select option[value = ' +(i)+ ']').css('display', 'none');
        }
      });
    } else if (prefectureId == 2) {
      // 青森
      $('.main_area_select option[value]').each(function(i) {
        if (i>22 || i<16) {
          $('.main_area_select option[value = ' +(i)+ ']').css('display', 'none');
        }
      });
    } else if (prefectureId == 3) {
      // 岩手
      $('.main_area_select option[value]').each(function(i) {
        if (i>28 || i<23) {
          $('.main_area_select option[value = ' +(i)+ ']').css('display', 'none');
        }
      });
    } else if (prefectureId == 4) {
      // 宮城
      $('.main_area_select option[value]').each(function(i) {
        if (i>34 || i<29) {
          $('.main_area_select option[value = ' +(i)+ ']').css('display', 'none');
        }
      });
    } else if (prefectureId == 5) {
      // 秋田
      $('.main_area_select option[value]').each(function(i) {
        if (i>39 || i<35) {
          $('.main_area_select option[value = ' +(i)+ ']').css('display', 'none');
        }
      });
    } else if (prefectureId == 6) {
      // 山形
      $('.main_area_select option[value]').each(function(i) {
        if (i>44 || i<40) {
          $('.main_area_select option[value = ' +(i)+ ']').css('display', 'none');
        }
      });
    } else if (prefectureId == 7) {
      // 福島
      $('.main_area_select option[value]').each(function(i) {
        if (i>53 || i<45) {
          $('.main_area_select option[value = ' +(i)+ ']').css('display', 'none');
        }
      });
    } else if (prefectureId == 8) {
      // 茨城
      $('.main_area_select option[value]').each(function(i) {
        if (i>59 || i<54) {
          $('.main_area_select option[value = ' +(i)+ ']').css('display', 'none');
        }
      });
    } else if (prefectureId == 9) {
      // 栃木
      $('.main_area_select option[value]').each(function(i) {
        if (i>66 || i<60) {
          $('.main_area_select option[value = ' +(i)+ ']').css('display', 'none');
        }
      });
    } else if (prefectureId == 10) {
      // 群馬
      $('.main_area_select option[value]').each(function(i) {
        if (i>75 || i<67) {
          $('.main_area_select option[value = ' +(i)+ ']').css('display', 'none');
        }
      });
    } else if (prefectureId == 11) {
      // 埼玉
      $('.main_area_select option[value]').each(function(i) {
        if (i>81 || i<76) {
          $('.main_area_select option[value = ' +(i)+ ']').css('display', 'none');
        }
      });
    } else if (prefectureId == 12) {
      // 千葉
      $('.main_area_select option[value]').each(function(i) {
        if (i>90 || i<82) {
          $('.main_area_select option[value = ' +(i)+ ']').css('display', 'none');
        }
      });
    } else if (prefectureId == 13) {
      // 東京
      $('.main_area_select option[value]').each(function(i) {
        if (i>103 || i<91) {
          $('.main_area_select option[value = ' +(i)+ ']').css('display', 'none');
        }
      });
    } else if (prefectureId == 14) {
      // 神奈川
      $('.main_area_select option[value]').each(function(i) {
        if (i>112 || i<104) {
          $('.main_area_select option[value = ' +(i)+ ']').css('display', 'none');
        }
      });
    } else if (prefectureId == 15) {
      // 新潟
      $('.main_area_select option[value]').each(function(i) {
        if (i>120 || i<113) {
          $('.main_area_select option[value = ' +(i)+ ']').css('display', 'none');
        }
      });
    } else if (prefectureId == 16) {
      // 富山
      $('.main_area_select option[value]').each(function(i) {
        if (i>123 || i<121) {
          $('.main_area_select option[value = ' +(i)+ ']').css('display', 'none');
        }
      });
    } else if (prefectureId == 17) {
      // 石川
      $('.main_area_select option[value]').each(function(i) {
        if (i>128 || i<124) {
          $('.main_area_select option[value = ' +(i)+ ']').css('display', 'none');
        }
      });
    } else if (prefectureId == 18) {
      // 福井
      $('.main_area_select option[value]').each(function(i) {
        if (i>132 || i<129) {
          $('.main_area_select option[value = ' +(i)+ ']').css('display', 'none');
        }
      });
    } else if (prefectureId == 19) {
      // 山梨
      $('.main_area_select option[value]').each(function(i) {
        if (i>140 || i<133) {
          $('.main_area_select option[value = ' +(i)+ ']').css('display', 'none');
        }
      });
    } else if (prefectureId == 20) {
      // 長野
      $('.main_area_select option[value]').each(function(i) {
        if (i>157 || i<141) {
          $('.main_area_select option[value = ' +(i)+ ']').css('display', 'none');
        }
      });
    } else if (prefectureId == 21) {
      // 岐阜
      $('.main_area_select option[value]').each(function(i) {
        if (i>163 || i<158) {
          $('.main_area_select option[value = ' +(i)+ ']').css('display', 'none');
        }
      });
    } else if (prefectureId == 22) {
      // 静岡
      $('.main_area_select option[value]').each(function(i) {
        if (i>177 || i<164) {
          $('.main_area_select option[value = ' +(i)+ ']').css('display', 'none');
        }
      });
    } else if (prefectureId == 23) {
      // 愛知
      $('.main_area_select option[value]').each(function(i) {
        if (i>181 || i<178) {
          $('.main_area_select option[value = ' +(i)+ ']').css('display', 'none');
        }
      });
    } else if (prefectureId == 24) {
      // 三重
      $('.main_area_select option[value]').each(function(i) {
        if (i>190 || i<182) {
          $('.main_area_select option[value = ' +(i)+ ']').css('display', 'none');
        }
      });
    } else if (prefectureId == 25) {
      // 滋賀
      $('.main_area_select option[value]').each(function(i) {
        if (i>196 || i<191) {
          $('.main_area_select option[value = ' +(i)+ ']').css('display', 'none');
        }
      });
    } else if (prefectureId == 26) {
      // 京都
      $('.main_area_select option[value]').each(function(i) {
        if (i>206 || i<197) {
          $('.main_area_select option[value = ' +(i)+ ']').css('display', 'none');
        }
      });
    } else if (prefectureId == 27) {
      // 大阪
      $('.main_area_select option[value]').each(function(i) {
        if (i>215 || i<207) {
          $('.main_area_select option[value = ' +(i)+ ']').css('display', 'none');
        }
      });
    } else if (prefectureId == 28) {
      // 兵庫
      $('.main_area_select option[value]').each(function(i) {
        if (i>222 || i<216) {
          $('.main_area_select option[value = ' +(i)+ ']').css('display', 'none');
        }
      });
    } else if (prefectureId == 29) {
      // 奈良
      $('.main_area_select option[value]').each(function(i) {
        if (i>225 || i<223) {
          $('.main_area_select option[value = ' +(i)+ ']').css('display', 'none');
        }
      });
    } else if (prefectureId == 30) {
      // 和歌山
      $('.main_area_select option[value]').each(function(i) {
        if (i>231 || i<226) {
          $('.main_area_select option[value = ' +(i)+ ']').css('display', 'none');
        }
      });
    } else if (prefectureId == 31) {
      // 鳥取
      $('.main_area_select option[value]').each(function(i) {
        if (i>234 || i<232) {
          $('.main_area_select option[value = ' +(i)+ ']').css('display', 'none');
        }
      });
    } else if (prefectureId == 32) {
      // 島根
      $('.main_area_select option[value]').each(function(i) {
        if (i>238 || i<235) {
          $('.main_area_select option[value = ' +(i)+ ']').css('display', 'none');
        }
      });
    } else if (prefectureId == 33) {
      // 岡山
      $('.main_area_select option[value]').each(function(i) {
        if (i>242 || i<239) {
          $('.main_area_select option[value = ' +(i)+ ']').css('display', 'none');
        }
      });
    } else if (prefectureId == 34) {
      // 広島
      $('.main_area_select option[value]').each(function(i) {
        if (i>245 || i<243) {
          $('.main_area_select option[value = ' +(i)+ ']').css('display', 'none');
        }
      });
    } else if (prefectureId == 35) {
      // 山口
      $('.main_area_select option[value]').each(function(i) {
        if (i>249 || i<246) {
          $('.main_area_select option[value = ' +(i)+ ']').css('display', 'none');
        }
      });
    } else if (prefectureId == 36) {
      // 徳島
      $('.main_area_select option[value]').each(function(i) {
        if (i>252 || i<250) {
          $('.main_area_select option[value = ' +(i)+ ']').css('display', 'none');
        }
      });
    } else if (prefectureId == 37) {
      // 香川
      $('.main_area_select option[value]').each(function(i) {
        if (i>255 || i<253) {
          $('.main_area_select option[value = ' +(i)+ ']').css('display', 'none');
        }
      });
    } else if (prefectureId == 38) {
      // 愛媛
      $('.main_area_select option[value]').each(function(i) {
        if (i>259 || i<256) {
          $('.main_area_select option[value = ' +(i)+ ']').css('display', 'none');
        }
      });
    } else if (prefectureId == 39) {
      // 高知
      $('.main_area_select option[value]').each(function(i) {
        if (i>262 || i<260) {
          $('.main_area_select option[value = ' +(i)+ ']').css('display', 'none');
        }
      });
    } else if (prefectureId == 40) {
      // 福岡
      $('.main_area_select option[value]').each(function(i) {
        if (i>268 || i<263) {
          $('.main_area_select option[value = ' +(i)+ ']').css('display', 'none');
        }
      });
    } else if (prefectureId == 41) {
      // 佐賀
      $('.main_area_select option[value]').each(function(i) {
        if (i>273 || i<269) {
          $('.main_area_select option[value = ' +(i)+ ']').css('display', 'none');
        }
      });
    } else if (prefectureId == 42) {
      // 長崎
      $('.main_area_select option[value]').each(function(i) {
        if (i>279 || i<274) {
          $('.main_area_select option[value = ' +(i)+ ']').css('display', 'none');
        }
      });
    } else if (prefectureId == 43) {
      // 熊本
      $('.main_area_select option[value]').each(function(i) {
        if (i>286 || i<280) {
          $('.main_area_select option[value = ' +(i)+ ']').css('display', 'none');
        }
      });
    } else if (prefectureId == 44) {
      // 大分
      $('.main_area_select option[value]').each(function(i) {
        if (i>292 || i<287) {
          $('.main_area_select option[value = ' +(i)+ ']').css('display', 'none');
        }
      });
    } else if (prefectureId == 45) {
      // 宮崎
      $('.main_area_select option[value]').each(function(i) {
        if (i>295 || i<293) {
          $('.main_area_select option[value = ' +(i)+ ']').css('display', 'none');
        }
      });
    } else if (prefectureId == 46) {
      // 鹿児島
      $('.main_area_select option[value]').each(function(i) {
        if (i>301 || i<296) {
          $('.main_area_select option[value = ' +(i)+ ']').css('display', 'none');
        }
      });
    } else if (prefectureId == 47) {
      // 沖縄
      $('.main_area_select option[value]').each(function(i) {
        if (i<302) {
          $('.main_area_select option[value = ' +(i)+ ']').css('display', 'none');
        }
      });
    }

  } else {
    $('.main_area_select').val('');
    $('.main_area_select').css('display', 'none');
  }
});