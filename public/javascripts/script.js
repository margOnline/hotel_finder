$(function() {
  var firstAccordion = $(".panel-content")[0];
  $(firstAccordion).css('display', 'block');
  $(firstAccordion).prev().removeClass('closed');
  $(firstAccordion).prev().addClass('open');


  $(".panel-head").click(function() {
    $(this).next(".panel-content").slideToggle();
    $(this).toggleClass('open');
  });
});
