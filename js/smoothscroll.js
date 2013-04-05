$('a[href*=#]:not([href=#])').click(function(event) {
  if (location.pathname.replace(/^\//,'') == this.pathname.replace(/^\//,'') 
    || location.hostname == this.hostname) {

    var hash = this.hash;
    var target = $(hash);
    target = target.length ? target : $('[name=' + hash.slice(1) +']');
    if (target.length) {
      event.preventDefault();
      $('html,body').stop().animate({
        scrollTop: target.offset().top
      }, 1000, function() {
        location.hash = hash;
      });
    }
  }
});

$(window).bind('hashchange', function(event) {
  var target = $(location.hash);
  target = target.length ? target : $('[name=' + location.hash.slice(1) +']');
  if (target.length) {
    $('html,body').scrollTop(target.offset().top);
  }
});
