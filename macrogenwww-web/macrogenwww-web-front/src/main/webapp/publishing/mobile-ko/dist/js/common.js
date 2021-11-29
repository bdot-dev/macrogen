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
        this.scrollHorizon();
    }

    var a = function () {
        $('a[href="#"]').on('click', function (e) {
            e.preventDefault();
        });
    }

    var swiperTab = function () {
        $(document).ready(function (){
            if ($('.panzoom > img').length > 0) {
                var webpage = ($('.panzoom > img'))[0];
                var image = ($('.panzoom'))[0];

                var mc = new Hammer.Manager(image);

                var pinch = new Hammer.Pinch();
                var pan = new Hammer.Pan();

                pinch.recognizeWith(pan);

                mc.add([pinch, pan]);

                var adjustScale = 1;
                var adjustDeltaX = 0;
                var adjustDeltaY = 0;

                var currentScale = null;
                var currentDeltaX = null;
                var currentDeltaY = null;
                var currentScroll = window.pageYOffset || document.documentElement.scrollTop;

                // Prevent long press saving on mobiles.
                webpage.addEventListener('touchstart', function (e) {
                    e.preventDefault()
                });

                // Handles pinch and pan events/transforming at the same time;
                mc.on("pinch pan", function (ev) {
                    var transforms = [];

                    // Adjusting the current pinch/pan event properties using the previous ones set when they finished touching
                    currentScale = adjustScale * ev.scale;

                    if (currentScale <= 1) {
                        transforms.push('scale(1)');
                        transforms.push('translate(0px, 0px)');
                        webpage.style.transform = transforms.join(' ');

                        if (ev.additionalEvent === "pandown") {
                            $('html, body').scrollTop(currentScroll - ev.distance);
                        } else if (ev.additionalEvent === "panup") {
                            $('html, body').scrollTop(currentScroll + ev.distance);
                        }
                    } else {
                        currentDeltaX = adjustDeltaX + (ev.deltaX / currentScale);
                        currentDeltaY = adjustDeltaY + (ev.deltaY / currentScale);

                        transforms.push('scale(' + currentScale + ')');
                        // Concatinating and applying parameters.
                        transforms.push('translate(' + currentDeltaX + 'px, ' + currentDeltaY + 'px)');
                        webpage.style.transform = transforms.join(' ');
                    }
                });

                mc.on("panend pinchend", function (ev) {
                    if (currentScale <= 1) {
                        currentScroll = window.pageYOffset || document.documentElement.scrollTop;
                        if (ev.additionalEvent === "panright") {
                        } else if (ev.additionalEvent === "panleft") {}
                    }
                    // Saving the final transforms for adjustment next time the user interacts.
                    adjustScale = currentScale;
                    adjustDeltaX = currentDeltaX;
                    adjustDeltaY = currentDeltaY;
                });
            }

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
                new Swiper('.snbSwiper', {
                    slidesPerView: 'auto',
                    preventClicks: true,
                    preventClicksPropagation: false,
                    observer: true,
                    observeParents: true,
                    navigation: {
                        nextEl: "._slideRight",
                        prevEl: "._slideLeft",
                    }
                });

                var $snbSwiperItem = $('.snbSwiper .swiper-wrapper .swiper-slide a');
                $snbSwiperItem.click(function () {
                    var target = $(this).parent();
                    $snbSwiperItem.parent().removeClass('on')
                    target.addClass('on');
                    muCenter(target);
                })

                function muCenter(target) {
                    var snbwrap = $('.snbSwiper .swiper-wrapper');
                    var targetPos = target.position();
                    var box = $('.snbSwiper');
                    var boxHarf = box.width() / 2;
                    var pos;
                    var listWidth = 0;

                    snbwrap.find('.swiper-slide').each(function () {
                        listWidth += $(this).outerWidth();
                    })

                    var selectTargetPos = targetPos.left + target.outerWidth() / 2;
                    if (selectTargetPos <= boxHarf) { // left
                        pos = 0;
                    } else if ((listWidth - selectTargetPos) <= boxHarf) { //right
                        pos = listWidth - box.width();
                    } else {
                        pos = selectTargetPos - boxHarf;
                    }

                    setTimeout(function () {
                        snbwrap.css({
                            "transform": "translate3d(" + (pos * -1) + "px, 0, 0)",
                            "transition-duration": "500ms"
                        })
                    }, 200);
                }
                // var swiper = new Swiper("._swiperTab", {
                //     slidesPerView: "auto",
                //     spaceBetween: 0,
                //     centeredSlides: true,
                //     watchActiveIndex: true,
                //     slideToClickedSlide: true,
                //     navigation: {
                //         nextEl: "._slideRight",
                //         prevEl: "._slideLeft",
                //     }
                // });
                //
                // var slide = $('._swiperTab').find('.swiper-slide')
                // var idx = slide.length;
                // var sum = 0;
                //
                // for (var i = 0; i <= idx; i++) {
                //     var target = slide.eq(i);
                //     var idxWidth = target.outerWidth(true) - 24;
                //     target.css('width', idxWidth);
                // }
                //
                // for (var j = 0; j < idx; j++) {
                //     sum = sum + slide.eq(j).outerWidth(true);
                // }
                //
                // $('.swiper-wrapper').css('width', sum);
                // /* e swiper slide container  */
                //
                // /* s slide active  */
                // slide.on('click', function () {
                //     $(this).addClass('active').siblings().removeClass('active');
                // });
                // /* e slide active  */
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

        $(window).bind("load", function() {
            $('._btnTooltip').each(function () {
                var left = $(this).offset().left * -1 + 20;
                $(this).siblings().css('left', left + 'px')
            })
        });

        $(document).ready(function() {
            $('._btnTooltip').each(function () {
                var left = $(this).offset().left * -1 + 20;
                $(this).siblings().css('left', left + 'px')
            })
        });
        /* e tooltip */

        /* s accordion */
        $('.accordion-button').on('click', function () {
            if ($(this).hasClass('active')) {
                $(this).removeClass('active');
                $(this).siblings('.accordion-content').slideUp(500);
            } else {
                $('.accordion-button').removeClass('active');
                $(this).addClass('active');
                $('.accordion-content').slideUp(500);
                $(this).siblings('.accordion-content').slideDown(500);
            }
        });
        /* s accordion */


    }

    var scrollHorizon = function(){
        $(window).on("load",function(){
            $(".table-scroll").mCustomScrollbar({
                axis:"x",
                theme:"dark",
            });
        });
    };


    return {
        a: a,
        swiperTab : swiperTab,
        commonHandler: commonHandler,
        init: init,
        scrollHorizon : scrollHorizon
    }
})();

$(function () {
    front.common.init();
});
