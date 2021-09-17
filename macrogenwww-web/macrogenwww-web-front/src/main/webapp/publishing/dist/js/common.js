/**
 * --------------------------------------------------------------------------
 *  common.js
 * --------------------------------------------------------------------------
 */

var front = front || {};


front.common = front.common || {};

front.common = (function () {

  var init = function() {
    this.a();
    this.commonHandler();
    this.scrollHeader();

  };

  var a = function () {
    $('a[href="#"]').on('click', function (e) {
      e.preventDefault();
    });
  }
  var scrollHeader = function () {
    var scrollableElement = document.body; //document.getElementById('scrollableElement');
    scrollableElement.addEventListener('wheel', checkScrollDirection);
    function checkScrollDirection(event) {
      if (checkScrollDirectionIsUp(event)) {
        // console.log('UP');
        if (window.scrollY > 124){
          $('.header').show()
              .css({'position': 'fixed','top':'0'})
              .addClass('header-sm')
        } else {
          $('.header').show()
              .css({'position': 'relative'})
              .removeClass('header-sm');
          $('.header-main').show()
              .css({'position': 'absolute'})
        }
      } else {
        // console.log('Down');
        // console.log(window.scrollY);
        if (window.scrollY > 124){
          $('.header').hide()
        }
      }
    }
    function checkScrollDirectionIsUp(event) {
      if (event.wheelDelta) {
        return event.wheelDelta > 0;
      }
      return event.deltaY < 0;
    }
  }

  var commonHandler = function () {
    // $(".header").sticky({topSpacing:0});

      $('._btnTooltip').on('click',function (){
        $(this).siblings().show();
      })

      $('._btnTooltipClose').on('click',function (){
        $(this).parent().hide();
      })

    $('._fileUpload .form-control-file').on('change', function(){
      var target = $(this).parent().find('.file-box');
      if(typeof(this.files) !='undefined'){
        if(this.files.length == 0){
          target.removeClass('withFile').text(target.data('default'));
        }
        else {
          var file = this.files[0];
          var name = file.name;
          target.parent().addClass('withFile');
          target.html('<span>'+ name +'</span><a href="#" class="btn-delete"><em class="sr-only">file delete</em></a>');
        }
      }
      return false;
    });
  }

  return {
    a : a,
    commonHandler : commonHandler,
    scrollHeader : scrollHeader,
    init : init,
  }
})();

$(function () {
  front.common.init();
});
