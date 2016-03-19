// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.
$(document).on('ready page:load', function() {

  $('#nav-toggle').on('click', function(event) {
    event.preventDefault();

    $(this).add('.sidebar').toggleClass('is-open');
  });

});
