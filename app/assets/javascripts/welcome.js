$(function() {
  var moveLeft = -100;
  var moveDown = -150;

  $('a.product').hover(function(e) {
    $(this).parent().find('.pop-up').fadeIn(100).show()
      .css('top', e.pageY + moveDown)
      .css('left', e.pageX + moveLeft);
  }, function() {
    $('.pop-up').hide();
  });

  $('a.product').mousemove(function(e) {
    $(".pop-up").css('top', e.pageY + moveDown).css('left', e.pageX + moveLeft);
  });

});

