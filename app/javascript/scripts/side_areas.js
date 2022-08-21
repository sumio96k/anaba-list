$(document).on('change', '.side_prefecture_select', function(){
  let prefectureId = $(this).val();

  // target_css = $(this).attr('id')
  // alert('".' + target_css  + ' option[value]"')
  // alert("'" + "."+target_css+ "'")


  if (prefectureId != '') {
    // 何か選択したらセレクトボックスが表示される
    $('.side_area_select').val('');
    $('.side_area_select option').css('display', 'block');
    $('.side_area_select').css('display', 'block');

    if (prefectureId == 1) {
      // 北海道
      $('.side_area_select option[value]').each(function(i) {
        if (i>15) {
          $('.side_area_select option[value = ' +(i)+ ']').css('display', 'none');
        }
      });
    } else if (prefectureId == 2) {
      // 青森
      $('.side_area_select option[value]').each(function(i) {
        if (i>22 || i<16) {
          $('.side_area_select option[value = ' +(i)+ ']').css('display', 'none');
        }
      });
    } else if (prefectureId == 3) {
      // 岩手
      $('.side_area_select option[value]').each(function(i) {
        if (i>28 || i<23) {
          $('.side_area_select option[value = ' +(i)+ ']').css('display', 'none');
        }
      });
    } else if (prefectureId == 4) {
      // 宮城
      $('.side_area_select option[value]').each(function(i) {
        if (i>34 || i<29) {
          $('.side_area_select option[value = ' +(i)+ ']').css('display', 'none');
        }
      });
    } else if (prefectureId == 5) {
      // 秋田
      $('.side_area_select option[value]').each(function(i) {
        if (i>39 || i<35) {
          $('.side_area_select option[value = ' +(i)+ ']').css('display', 'none');
        }
      });
    } else if (prefectureId == 6) {
      // 山形
      $('.side_area_select option[value]').each(function(i) {
        if (i>44 || i<40) {
          $('.side_area_select option[value = ' +(i)+ ']').css('display', 'none');
        }
      });
    } else if (prefectureId == 7) {
      // 福島
      $('.side_area_select option[value]').each(function(i) {
        if (i>53 || i<45) {
          $('.side_area_select option[value = ' +(i)+ ']').css('display', 'none');
        }
      });
    } else if (prefectureId == 8) {
      // 茨城
      $('.side_area_select option[value]').each(function(i) {
        if (i>59 || i<54) {
          $('.side_area_select option[value = ' +(i)+ ']').css('display', 'none');
        }
      });
    } else if (prefectureId == 9) {
      // 栃木
      $('.side_area_select option[value]').each(function(i) {
        if (i>66 || i<60) {
          $('.side_area_select option[value = ' +(i)+ ']').css('display', 'none');
        }
      });
    } else if (prefectureId == 10) {
      // 群馬
      $('.side_area_select option[value]').each(function(i) {
        if (i>75 || i<67) {
          $('.side_area_select option[value = ' +(i)+ ']').css('display', 'none');
        }
      });
    } else if (prefectureId == 11) {
      // 埼玉
      $('.side_area_select option[value]').each(function(i) {
        if (i>81 || i<76) {
          $('.side_area_select option[value = ' +(i)+ ']').css('display', 'none');
        }
      });
    } else if (prefectureId == 12) {
      // 千葉
      $('.side_area_select option[value]').each(function(i) {
        if (i>90 || i<82) {
          $('.side_area_select option[value = ' +(i)+ ']').css('display', 'none');
        }
      });
    } else if (prefectureId == 13) {
      // 東京
      $('.side_area_select option[value]').each(function(i) {
        if (i>103 || i<91) {
          $('.side_area_select option[value = ' +(i)+ ']').css('display', 'none');
        }
      });
    } else if (prefectureId == 14) {
      // 神奈川
      $('.side_area_select option[value]').each(function(i) {
        if (i>112 || i<104) {
          $('.side_area_select option[value = ' +(i)+ ']').css('display', 'none');
        }
      });
    } else if (prefectureId == 15) {
      // 新潟
      $('.side_area_select option[value]').each(function(i) {
        if (i>120 || i<113) {
          $('.side_area_select option[value = ' +(i)+ ']').css('display', 'none');
        }
      });
    } else if (prefectureId == 16) {
      // 富山
      $('.side_area_select option[value]').each(function(i) {
        if (i>123 || i<121) {
          $('.side_area_select option[value = ' +(i)+ ']').css('display', 'none');
        }
      });
    } else if (prefectureId == 17) {
      // 石川
      $('.side_area_select option[value]').each(function(i) {
        if (i>128 || i<124) {
          $('.side_area_select option[value = ' +(i)+ ']').css('display', 'none');
        }
      });
    } else if (prefectureId == 18) {
      // 福井
      $('.side_area_select option[value]').each(function(i) {
        if (i>132 || i<129) {
          $('.side_area_select option[value = ' +(i)+ ']').css('display', 'none');
        }
      });
    } else if (prefectureId == 19) {
      // 山梨
      $('.side_area_select option[value]').each(function(i) {
        if (i>140 || i<133) {
          $('.side_area_select option[value = ' +(i)+ ']').css('display', 'none');
        }
      });
    } else if (prefectureId == 20) {
      // 長野
      $('.side_area_select option[value]').each(function(i) {
        if (i>157 || i<141) {
          $('.side_area_select option[value = ' +(i)+ ']').css('display', 'none');
        }
      });
    } else if (prefectureId == 21) {
      // 岐阜
      $('.side_area_select option[value]').each(function(i) {
        if (i>163 || i<158) {
          $('.side_area_select option[value = ' +(i)+ ']').css('display', 'none');
        }
      });
    } else if (prefectureId == 22) {
      // 静岡
      $('.side_area_select option[value]').each(function(i) {
        if (i>177 || i<164) {
          $('.side_area_select option[value = ' +(i)+ ']').css('display', 'none');
        }
      });
    } else if (prefectureId == 23) {
      // 愛知
      $('.side_area_select option[value]').each(function(i) {
        if (i>181 || i<178) {
          $('.side_area_select option[value = ' +(i)+ ']').css('display', 'none');
        }
      });
    } else if (prefectureId == 24) {
      // 三重
      $('.side_area_select option[value]').each(function(i) {
        if (i>190 || i<182) {
          $('.side_area_select option[value = ' +(i)+ ']').css('display', 'none');
        }
      });
    } else if (prefectureId == 25) {
      // 滋賀
      $('.side_area_select option[value]').each(function(i) {
        if (i>196 || i<191) {
          $('.side_area_select option[value = ' +(i)+ ']').css('display', 'none');
        }
      });
    } else if (prefectureId == 26) {
      // 京都
      $('.side_area_select option[value]').each(function(i) {
        if (i>206 || i<197) {
          $('.side_area_select option[value = ' +(i)+ ']').css('display', 'none');
        }
      });
    } else if (prefectureId == 27) {
      // 大阪
      $('.side_area_select option[value]').each(function(i) {
        if (i>215 || i<207) {
          $('.side_area_select option[value = ' +(i)+ ']').css('display', 'none');
        }
      });
    } else if (prefectureId == 28) {
      // 兵庫
      $('.side_area_select option[value]').each(function(i) {
        if (i>222 || i<216) {
          $('.side_area_select option[value = ' +(i)+ ']').css('display', 'none');
        }
      });
    } else if (prefectureId == 29) {
      // 奈良
      $('.side_area_select option[value]').each(function(i) {
        if (i>225 || i<223) {
          $('.side_area_select option[value = ' +(i)+ ']').css('display', 'none');
        }
      });
    } else if (prefectureId == 30) {
      // 和歌山
      $('.side_area_select option[value]').each(function(i) {
        if (i>231 || i<226) {
          $('.side_area_select option[value = ' +(i)+ ']').css('display', 'none');
        }
      });
    } else if (prefectureId == 31) {
      // 鳥取
      $('.side_area_select option[value]').each(function(i) {
        if (i>234 || i<232) {
          $('.side_area_select option[value = ' +(i)+ ']').css('display', 'none');
        }
      });
    } else if (prefectureId == 32) {
      // 島根
      $('.side_area_select option[value]').each(function(i) {
        if (i>238 || i<235) {
          $('.side_area_select option[value = ' +(i)+ ']').css('display', 'none');
        }
      });
    } else if (prefectureId == 33) {
      // 岡山
      $('.side_area_select option[value]').each(function(i) {
        if (i>242 || i<239) {
          $('.side_area_select option[value = ' +(i)+ ']').css('display', 'none');
        }
      });
    } else if (prefectureId == 34) {
      // 広島
      $('.side_area_select option[value]').each(function(i) {
        if (i>245 || i<243) {
          $('.side_area_select option[value = ' +(i)+ ']').css('display', 'none');
        }
      });
    } else if (prefectureId == 35) {
      // 山口
      $('.side_area_select option[value]').each(function(i) {
        if (i>249 || i<246) {
          $('.side_area_select option[value = ' +(i)+ ']').css('display', 'none');
        }
      });
    } else if (prefectureId == 36) {
      // 徳島
      $('.side_area_select option[value]').each(function(i) {
        if (i>252 || i<250) {
          $('.side_area_select option[value = ' +(i)+ ']').css('display', 'none');
        }
      });
    } else if (prefectureId == 37) {
      // 香川
      $('.side_area_select option[value]').each(function(i) {
        if (i>255 || i<253) {
          $('.side_area_select option[value = ' +(i)+ ']').css('display', 'none');
        }
      });
    } else if (prefectureId == 38) {
      // 愛媛
      $('.side_area_select option[value]').each(function(i) {
        if (i>259 || i<256) {
          $('.side_area_select option[value = ' +(i)+ ']').css('display', 'none');
        }
      });
    } else if (prefectureId == 39) {
      // 高知
      $('.side_area_select option[value]').each(function(i) {
        if (i>262 || i<260) {
          $('.side_area_select option[value = ' +(i)+ ']').css('display', 'none');
        }
      });
    } else if (prefectureId == 40) {
      // 福岡
      $('.side_area_select option[value]').each(function(i) {
        if (i>268 || i<263) {
          $('.side_area_select option[value = ' +(i)+ ']').css('display', 'none');
        }
      });
    } else if (prefectureId == 41) {
      // 佐賀
      $('.side_area_select option[value]').each(function(i) {
        if (i>273 || i<269) {
          $('.side_area_select option[value = ' +(i)+ ']').css('display', 'none');
        }
      });
    } else if (prefectureId == 42) {
      // 長崎
      $('.side_area_select option[value]').each(function(i) {
        if (i>279 || i<274) {
          $('.side_area_select option[value = ' +(i)+ ']').css('display', 'none');
        }
      });
    } else if (prefectureId == 43) {
      // 熊本
      $('.side_area_select option[value]').each(function(i) {
        if (i>286 || i<280) {
          $('.side_area_select option[value = ' +(i)+ ']').css('display', 'none');
        }
      });
    } else if (prefectureId == 44) {
      // 大分
      $('.side_area_select option[value]').each(function(i) {
        if (i>292 || i<287) {
          $('.side_area_select option[value = ' +(i)+ ']').css('display', 'none');
        }
      });
    } else if (prefectureId == 45) {
      // 宮崎
      $('.side_area_select option[value]').each(function(i) {
        if (i>295 || i<293) {
          $('.side_area_select option[value = ' +(i)+ ']').css('display', 'none');
        }
      });
    } else if (prefectureId == 46) {
      // 鹿児島
      $('.side_area_select option[value]').each(function(i) {
        if (i>301 || i<296) {
          $('.side_area_select option[value = ' +(i)+ ']').css('display', 'none');
        }
      });
    } else if (prefectureId == 47) {
      // 沖縄
      $('.side_area_select option[value]').each(function(i) {
        if (i<302) {
          $('.side_area_select option[value = ' +(i)+ ']').css('display', 'none');
        }
      });
    }

  } else {
    $('.side_area_select').val('');
    $('.side_area_select').css('display', 'none');
  }
});