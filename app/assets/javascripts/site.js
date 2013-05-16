
$(function(){
  var slider = $('.flexslider').flexslider({
    animation: "slide"
  }).flexslider('pause');

 $('.card-content').on('click', function(event) {
  $(this).children('.front').fadeOut(function() {
      $(this).siblings('.back').fadeIn(200).css('display', 'table-cell');
      $(this).parent('.card-content')
  });
 });
});



