$(function() {
  var firstAccordion = $(".panel-content")[0];
  $(firstAccordion).css('display', 'block');

  $(".panel").click(function() {
    $(".panel-content").slideUp();
    $(this).find(".panel-content").slideToggle();
  });
});
