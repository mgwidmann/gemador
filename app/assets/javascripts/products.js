$(document).ready(function(){
    var selectClicked = function(input) {
      if(input.is(':checked')){
        input.closest('li').addClass('current');
      } else {
        input.closest('li').removeClass('current');
      }
    }
   $('input[type="checkbox"]').click(function(){
      selectClicked($(this));
   }).each(function(){
      selectClicked($(this));
   });
});