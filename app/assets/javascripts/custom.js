$(function() {
  $("#foods").hide();
  $("#foodsSearch input").keyup(function() {
    $("#foods").show();
    $.get($("#foodsSearch").attr("action"), $("#foodsSearch").serialize(), null, "script");
    return false;
  });

  var paleo = $('div').hasClass('true');
  var notPaleo = $('div').hasClass('false');

  if(paleo === true){
    $('body').addClass('paleo');
  } if(notPaleo === true) {
    $('body').addClass('notPaleo');
  } if(paleo !== true && notPaleo !== true) {
    $('body').addClass('home');
  }

  var bg = Math.floor(Math.random() * 2 + 1);
  $('.home').css({
    'background': ("#fff url('assets/bg/" + bg + ".jpg') no-repeat fixed top center"),
    'background-size': 'cover'
  });
});