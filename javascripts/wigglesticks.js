(function($) {

  $.fn.wigglesticks = function(options) {

  // set default settings
  var settings = $.extend({
    'item'      : this,
    'parent'    : this.parent(),
    'container' : '.container',
  }, options);

  var item = settings.item;
  var parent = settings.parent;
  var container = settings.container;
  var original_width = ($(item).outerWidth() / $(container).outerWidth()) * 100;
  var true_relative_width = ($(item).outerWidth() / $(document).outerWidth()) * 100;

  $(window).resize(function() {
    original_width = ($(item).outerWidth() / $(container).outerWidth()) * 100;
    true_relative_width = ($(item).outerWidth() / $(document).outerWidth()) * 100;
  });

  function item_height() {
    if ($(item).outerHeight() > $(window).height()) {
      return - ($(item).outerHeight() - $(window).height());
    }
    else {
      return 0;
    }
  }

  function item_class() {
    if ($(item).outerHeight() > $(window).height()) {
      return 'stickit-tall';
    }
    else {
      return 'stickit';
    }
  }

  function set_true_relative_width() {
    if ($(item).css('position') !== 'absolute') {
      $(this.item).css('width', true_relative_width+'%');
    }
  }

  function unset_true_relative_width() {
    if ($(item).css('position') !== 'fixed') {
      $(this.item).removeAttr('style');
    }
  }

  $(container).stickem({
    item: item,
    container: parent,
    stickClass: item_class(),
    offset: item_height(),
    onStick: set_true_relative_width,
    onUnstick: unset_true_relative_width
  });

  var last_scroll_top = 0;
  var relative_top_pos_up = 0;
  var relative_top_pos_down = 0;

  function top_of_item_offscreen() {
    // 10px of tolerance since the browser doesn't always read offset correctly
    return ($(window).scrollTop() - $(item).offset().top) > 10
  }

  function at_bottom_of_item() {
    return ($(item).offset().top + $(item).outerHeight()) <=
           $(window).scrollTop() + $(window).height();
  }

  function item_at_top_of_container() {
    return ($(item).offset().top - $(parent).offset().top) <= 0;
  }

  function item_at_bottom_of_container() {
    return $(item).offset().top + $(item).outerHeight() >
           $(parent).offset().top + $(parent).outerHeight();
  }

  // if the item is taller than the viewport, run scrolling listener
  if ($(item).outerHeight() > $(window).height()) {
    $(window).scroll(function() {
      var st = $(this).scrollTop();

      // while scroll up
      if (st < last_scroll_top) {

        if (top_of_item_offscreen()) {
          $(item).css({
            'position': 'absolute',
            'top': relative_top_pos_up,
            'width': original_width+'%',
            'bottom': 'auto'
          });
        }
        else if (item_at_top_of_container()) {
          $(item).removeAttr('style');
        }
        else {
          // set this so we know where to pause the item when scrolling down
          relative_top_pos_down = $(item).offset().top - $(parent).offset().top;

          $(item).css({
            'position': 'fixed',
            'top': 0,
            'width': true_relative_width+'%',
            'bottom': 'auto'
          });
        }

      }

      // while scroll down
      else if (st > last_scroll_top) {

        if (top_of_item_offscreen()) {
          // set this so we know where to pause the item when scrolling up
          relative_top_pos_up = $(item).offset().top - $(parent).offset().top;

          if (at_bottom_of_item()) {
            $(item).css({
              'position': 'fixed',
              'top': 'auto',
              'width': true_relative_width+'%',
              'bottom': 0
            });
          }
        }
        else if ($(item).css('position') == 'fixed') {
          $(item).css({
            'position': 'absolute',
            'top': relative_top_pos_down,
            'width': original_width+'%',
            'bottom': 'auto'
          });
        }

        if (item_at_bottom_of_container()) {
          $(item).css({
            'position': 'absolute',
            'top': 'auto',
            'width': original_width+'%',
            'bottom': 0
          });
        }

      }

      last_scroll_top = st;
    });
  }

  // maintain chainability
  return this;

  }

})(jQuery);
