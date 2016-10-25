$(function() {
  var firstPanel = $(".panel-content")[0];
  $(firstPanel).css('display', 'block');
  $(firstPanel).prev().removeClass('closed');
  $(firstPanel).prev().addClass('open');
  var arrowSpan = $(firstPanel).prev().find('h4').find('span')[0];
  $(arrowSpan).removeClass('icon-arrow').addClass('icon-arrow-open');

  $(".panel-head").click(function() {
    $(this).next(".panel-content").slideToggle();
    $(this).toggleClass('open');
    var arrowSpan = $(this).find('h4').find('span')[0]

    if ($(arrowSpan).hasClass('icon-arrow')){
      $(arrowSpan).removeClass('icon-arrow');
      $(arrowSpan).addClass('icon-arrow-open');
    } else {
      $(arrowSpan).removeClass('icon-arrow-open');
      $(arrowSpan).addClass('icon-arrow');
    }
  });
});
