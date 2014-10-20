$(function() {
  $("#foods").hide();
  $("#foods_search input").keyup(function() {
    $("#foods").show();
    $.get($("#foods_search").attr("action"), $("#foods_search").serialize(), null, "script");
    return false;
  });
});