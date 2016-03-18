// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.

$(document).on('ready page:load', function() {
  $('.scene-edit').on('click', function(event) {
    event.preventDefault();

    var self = $(this);

    $.ajax({
      url: self.attr('action'),
      type: 'GET',
      dataType: 'script',
      data: self.serialize()
    });
  });

  // This function works:
  var addCharacterScroll = function() {
    var currentHeight = $(window).scrollTop();
    $('html, body').animate({ scrollTop: currentHeight + 300 }, 350);
  }

  $('a.add_fields').on('click', addCharacterScroll);

  var removeCharacterScroll = function() {
    var currentHeight = $(window).scrollTop();
    $('html, body').animate({ scrollTop: currentHeight - 300 }, 350);
  }

  $('a.remove_fields').css({'background-color': 'blue'});

});
