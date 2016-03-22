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
    $('#all-projects-link').css({'visibility': 'visible'});
  });

  $(function(){
        $(".typed-script").typed({
            strings: ["EXT. U.S. EMBASSY (TEHRAN) - MORNING<br><br>Effigies of Jimmy Carter and the deposed Shah -- crowds chanting 'Magbar Carter! Magbar Ahmrika!' Fists in the air.<br><br>SUPERIMPOSE: TEHRAN - NOVEMBER 4, 1979<br><br>YOUNG MEN AND WOMEN -- about 2/3 men and 1/3 women, some with flak jackets; about half the young women wear full chador. Many wear plastic bibs with photographs of Ayatollah Khomeini."],
            typeSpeed: 10,
            cursorChar: "|"
        });
    });


  // Testing if comments script should go here:
  $('form#new_comment input').on('submit', function(event){
    event.preventDefault();


  })




  // This below is all rangy stuff.
  // function gEBI(id) {
  //   return document.getElementById(id);
  // }
  //
  // var italicYellowBgApplier, characterApplier
  //
  // function toggleItalicYellowBg() {
  //   italicYellowBgApplier.toggleSelection();
  // }
  //
  // function toggleCharacter() {
  //   characterApplier.toggleSelection();
  // }
  //
  //   rangy.init();
  //
  //   var classApplierModule = rangy.modules.ClassApplier || rangy.modules.CssClassApplier;
  //
  //   italicYellowBgApplier = rangy.createClassApplier('italicYellowBg', {
  //     tagNames: ['span', 'a', 'b']
  //   });
  //
  //   characterApplier = rangy.createClassApplier('character', {
  //     tagNames: ['span', 'a', 'b']
  //   });
  //
  //   var toggleItalicYellowBgButton = gEBI('toggleItalicYellowBgButton');
  //   toggleItalicYellowBgButton.disabled = false;
  //   toggleItalicYellowBgButton.ontouchstart = toggleItalicYellowBgButton.onmousedown = function() {
  //     toggleItalicYellowBg();
  //     return false;
  //   };
  //
  //   var characterButton = gEBI('characterButton');
  //   characterButton.disabled = false;
  //   characterButton.ontouchstart = characterButton.onmousedown = function() {
  //     toggleCharacter();
  //     return false;
  //   };


});
