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
  }
});