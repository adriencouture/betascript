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
});
