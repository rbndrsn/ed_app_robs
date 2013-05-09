// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
// WARNING: THE FIRST BLANK LINE MARKS THE END OF WHAT'S TO BE PROCESSED, ANY BLANK LINE SHOULD
// GO AFTER THE REQUIRES BELOW.
//
//= require jquery
//= require jquery_ujs
//= require_tree .

$(function(){

  // Load stacks JSON on nav stacks click
  $(".stacks_btn").on('click', function(evt){

    //Prevent default link behavior
    evt.preventDefault();

    // Grab the actual link and set it as a variable to use in getJSON
    var a_href = $(this).attr('href');

    // Get JSON data, add a title to the content and loop over results outputting names.
    $.getJSON(a_href, function(data) {
      $('#content').html('<h2>Stacks</h2>');
      $.each(data, function(key, val) {
        $('#content').append('<p id="' + val.id + '">name : ' + val.name+ '</p>');
      });
    });
  });

})

