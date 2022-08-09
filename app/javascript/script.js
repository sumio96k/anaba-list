$(document).on('change', '.prefecture_select', function(){
  let prefectureId = $('.prefecture_select').val();

  if (prefectureId != '') {
    $('.area_select').val('');
    $('.area_select option').css('display', 'block');
    $('.area_select').css('display', 'block');

    if (prefectureId == 1) {
      $('.area_select option[value]').each(function(i) {
        if (i>15) {
          $('.area_select option[value = ' +(i)+ ']').css('display', 'none');
        }
      });
    } else if (prefectureId == 2) {
      $('.area_select option[value]').each(function(i) {
        if (i>22 || i<16) {
          $('.area_select option[value = ' +(i)+ ']').css('display', 'none');
        }
      });
    } else if (prefectureId == 3) {
      $('.area_select option[value]').each(function(i) {
        if (i>28 || i<23) {
          $('.area_select option[value = ' +(i)+ ']').css('display', 'none');
        }
      });
    }

  } else {
    $('.area_select').css('display', 'none');
  }

});