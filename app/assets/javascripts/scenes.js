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
    $('html, body').animate({ scrollTop: currentHeight + 300 }, 500);
  }

  $('a.add_fields').on('click', addCharacterScroll);

  // No need to include this as removing character reduces the size of the document
  // var removeCharacterScroll = function() {
  //   var currentHeight = $(window).scrollTop();
  //   $('html, body').animate({ scrollTop: currentHeight - 300 }, 2000);
  // }
  //
  // $('a.remove_fields.dynamic').on('click', removeCharacterScroll);

  // function to make 'create scene' scroll up:
  var createSceneScroll = function() {
    var currentHeight = $(window).scrollTop();
    $('html, body').animate({ scrollTop: currentHeight - 190 }, 500);
  }

  $('div#create-btn input').on('click', createSceneScroll);

});
