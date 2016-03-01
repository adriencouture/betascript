// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.

$(document).on('ready page:load', function( {
  $('#search-form').on('submit', function(event){
    event.preventDefault();

    var searchValue = $('#search').val();

    $.ajax({
      url: '/projects?search=' + $('#search').val(),
      type: 'GET',
      dataType: 'script'
    });
  });
});
