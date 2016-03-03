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

  var italicYellowBgApplier, characterApplier

  function toggleItalicYellowBg() {
    italicYellowBgApplier.toggleSelection();
  }

  function toggleCharacter() {
    characterApplier.toggleSelection();
  }

  window.onload = function() {
    rangy.init();

    var classApplierModule = rangy.modules.ClassApplier || rangy.modules.CssClassApplier;

    italicYellowBgApplier = rangy.createCssClassApplier('italicYellowBg', {
      tagNames: ['span', 'a', 'b']
    });

    characterApplier = rangy.createCssClassApplier('character', {
      tagNames: ['span', 'a', 'b']
    });

    var toggleItalicYellowBgButton = gEBI('toggleItalicYellowBgButton');
    toggleItalicYellowBgButton.disabled = false;
    toggleItalicYellowBgButton.ontouchstart = toggleItalicYellowBgButton.onmousedown = function() {
      toggleItalicYellowBg();
      return false;
    };

    var characterButton = gEBI('characterButton');
    characterButton.disabled = false;
    characterButton.ontouchstart = characterButton.onmousedown = function() {
      toggleCharacter();
      return false;
    };
  }

});
