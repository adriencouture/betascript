// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.

$(document).on('ready page:load', function() {

  $('#search-form').on('submit', function(event){
    event.preventDefault();

    var searchValue = $('#search').val();

    $.ajax({
      url: '/projects?search=' + $('#search').val(),
      type: 'GET',
      dataType: 'script'
    });
  });

  function gEBI(id) {
    return document.getElementById(id);
  }

  var italicYellowBgApplier

  function toggleItalicYellowBg() {
    italicYellowBgApplier.toggleSelection();
  }

  window.onload = function() {
    rangy.init();

    var classApplierModule = rangy.modules.ClassApplier || rangy.modules.CssClassApplier;

    italicYellowBgApplier = rangy.createCssClassApplier('italicYellowBg', {
      tagNames: ['span', 'a', 'b']
    });

    var toggleItalicYellowBgButton = gEBI('toggleItalicYellowBgButton');
    toggleItalicYellowBgButton.disabled = false;
    toggleItalicYellowBgButton.ontouchstart = toggleItalicYellowBgButton.onmousedown = function() {
      toggleItalicYellowBg();
      return false;
    };
  }

});
