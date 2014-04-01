$(document).ready(function($){
  
  $('.front').click(function(){
      $(this).parent().addClass('flipped');
    return false;
  });

  $('.back .glyphicon').click(function(){
      $(this).parent().parent().removeClass('flipped');
    return false;
  });

});