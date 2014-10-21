$(function() {
  $("#foods").hide();
  $("#foods_search input").keyup(function() {
    $("#foods").show();
    $.get($("#foods_search").attr("action"), $("#foods_search").serialize(), null, "script");
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