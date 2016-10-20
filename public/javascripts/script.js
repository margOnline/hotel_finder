$(function() {
  var firstAccordion = $(".accordion-content")[0];
  $(firstAccordion).css('display', 'block');

  $(".accordion").click(function() {
    $(".accordion-content").slideUp();
    $(this).find(".accordion-content").slideToggle();
  });
});
