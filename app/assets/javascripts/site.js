$(function(){

  var slider = $('.flexslider');

  // Check slider actually exists
  if (slider.length > 0) {

    slider.flexslider({
      animation: "slide"
    });

    // Pause if > 1 slide
    if (slider.find('ul li').length > 1) {
      slider.flexslider('pause'); 
    }

    $('.card-content').on('click', function(event) {
      $(this).children('.front').fadeOut(function() {
        $(this).siblings('.back').fadeIn(200).css('display', 'table-cell');
        $(this).parent('.card-content');
      });
    });

  }

});



