/**
 * --------------------------------------------------------------------------
 *  common.js
 * --------------------------------------------------------------------------
 */
var front = front || {};

front.common = front.common || {};

front.common = (function () {

    var init = function () {
        this.a();
        this.swiperTab();
        this.commonHandler();
    }

    var a = function () {
        $('a[href="#"]').on('click', function (e) {
            e.preventDefault();
        });
    }

    var swiperTab = function () {
        $(document).ready(function (){
            /* s swiper - 터치 여부에 따른 show & hide */
            // swiper.on('slideChange', function() {
            //     $('._slideLeft').show()
            //     $('._slideRight').show()
            // });
            //
            // swiper.on('touchMove', function(swiper, index) {
            //     $('._slideLeft').hide()
            //     $('._slideRight').hide()
            // });
            /* e swiper - 터치 여부에 따른 show & hide */

            /* s slide container & slide - width */
            if($('.macrogen-authorization').length === 1) {
                var swiper = new Swiper("._swiperTab", {
                    slidesPerView: "auto",
                    spaceBetween: 0,
                    centeredSlides: true,
                    watchActiveIndex: true,
                    slideToClickedSlide: true,
                    navigation: {
                        nextEl: "._slideRight",
                        prevEl: "._slideLeft",
                    }
                });

                var slide = $('._swiperTab').find('.swiper-slide')
                var idx = slide.length;
                var sum = 0;

                for (var i = 0; i <= idx; i++) {
                    var target = slide.eq(i);
                    var idxWidth = target.outerWidth(true) - 24;
                    target.css('width', idxWidth);
                }

                for (var j = 0; j < idx; j++) {
                    sum = sum + slide.eq(j).outerWidth(true);
                }

                $('.swiper-wrapper').css('width', sum);
                /* e swiper slide container  */

                /* s slide active  */
                slide.on('click', function () {
                    $(this).addClass('active').siblings().removeClass('active');
                });
                /* e slide active  */
            }
        })
    }

    var commonHandler = function () {
        /* s Dropdown Menu */
        var dropdown = $('.dropdown');

        dropdown.on('click', function () {
            $(this).attr('tabindex', 1).focus();
            $(this).toggleClass('active');
            $(this).find('.dropdown-menu').slideToggle(300);
        });

        dropdown.focusout(function () {
            $(this).removeClass('active');
            $(this).find('.dropdown-menu').slideUp(300);
        });

        $('.dropdown .dropdown-menu li').on('click', function () {
            $(this).parents('.dropdown').find('span').text($(this).text());
            $(this).parents('.dropdown').find('input').attr('value', $(this).attr('id'));
        });
        /* e Dropdown Menu */

        /* s AOS */
        AOS.init();
        /* e AOS */

        /* s full-bg 일 경우, 자동 하단으로 스크롤 */
        var screeSize = document.documentElement.clientHeight;
        // console.log(screeSize);

        if($('.full-bg').length) {
            if($('html, body').scrollTop() === 0) {
                // 서브 배경 애니메이션
                var sub = setTimeout(function() {
                    // console.log($('html, body').scrollTop())
                    if($('html, body').scrollTop() !== 0) clearTimeout(sub)
                    else $('html, body').animate({scrollTop: screeSize}, 300);
                }, 2000);
            }
        }
        /* e full-bg 일 경우, 자동 하단으로 스크롤 */

        /* s tooltip */
        $('._btnTooltip').on('click',function (){
            $('.tooltip-box').removeClass('active');
            $(this).parent().addClass('active');
        })

        $('._btnTooltipClose').on('click',function (){
            $(this).parent().parent().removeClass('active');
        })
        /* e tooltip */
    }

    return {
        a: a,
        swiperTab : swiperTab,
        commonHandler: commonHandler,
        init: init
    }
})();

$(function () {
    front.common.init();
});
