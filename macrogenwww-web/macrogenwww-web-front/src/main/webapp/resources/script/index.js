"use strict";

document.addEventListener('DOMContentLoaded', function () {
  gsap.registerPlugin(ScrollTrigger);
  gsap.registerPlugin(ScrollToPlugin);
  var mainKv = document.querySelector('.main-kv');
  var moveBox = document.querySelector('.main-board__pc');
  var mainBoard = document.querySelector('.main-board');
  var header = document.querySelector('#header');
  var serviceButtons = document.querySelectorAll('.main-service__button li');
  var marquee = document.querySelector('.main-slogan__marquee h4');
  var marqueeImage = document.querySelector('.main-slogan__imagewrap');
  var marqueeWidth = marquee.offsetWidth;
  var marqueeImageWidth = marqueeImage.offsetWidth;
  var totalWidth = marqueeWidth + marqueeImageWidth;
  var counters = document.querySelectorAll('.counting');
  var sections = gsap.utils.toArray('.section--slide');
  var $depth2 = document.querySelector('#gnb2Depth');
  var topButton = document.querySelector('.top-btn');
  var winWidth = window.innerWidth;
  var winHeight = window.innerHeight;
  var contWidth = moveBox.clientWidth;
  var contHeight = moveBox.clientHeight;
  var isMoving = false;
  var isScrolling = false;
  var currentSectionIndex = 0;
  var tl;
  var globalSlider;
  var initialGroupIndex = 0;
  var groupIndex;
  var globalMapSlider = new Swiper('.main-global__bg', {
    slidesPerView: 'auto',
    loop: false,
    speed: 600,
    effect: 'fade',
    fadeEffect: {
      crossFade: true
    },
    allowTouchMove: false,
    parallax: true,
    grabCursor: false
  });
  var updateDimensions = function updateDimensions() {
    winWidth = window.innerWidth;
    winHeight = window.innerHeight;
    contWidth = moveBox.clientWidth;
    contHeight = moveBox.clientHeight;
  };
  var debounce = function debounce(func, wait) {
    var timeout;
    return function () {
      var _this = this;
      for (var _len = arguments.length, args = new Array(_len), _key = 0; _key < _len; _key++) {
        args[_key] = arguments[_key];
      }
      clearTimeout(timeout);
      timeout = setTimeout(function () {
        return func.apply(_this, args);
      }, wait);
    };
  };
  var mouseMoveHandler = function mouseMoveHandler(e) {
    var nowX = (-1 + e.pageX / winWidth * 2).toFixed(2);
    var nowY = (1 - e.pageY / winHeight * 2).toFixed(2);
    var minPositionY = 30;
    var movePositionX;
    var movePositionY = nowY * ((contHeight + 20 - winHeight) / 2) - header.clientHeight;
    if (winWidth < contWidth) {
      movePositionX = -1 * (nowX * ((contWidth + 70 - winWidth) / 2));
    } else {
      movePositionX = nowX * ((contWidth + 70 - winWidth) / 2);
    }
    if (movePositionY > minPositionY) {
      movePositionY = minPositionY;
    }
    if (!isMoving) {
      isMoving = true;
      requestAnimationFrame(function () {
        moveBox.style.transform = "translate(".concat(movePositionX, "px, ").concat(movePositionY, "px)");
        isMoving = false;
      });
    }
  };
  var setInitialPosition = function setInitialPosition() {
    moveBox.style.transform = "translate(0px, 0px)";
  };
  var initAnimation = function initAnimation() {
    tl = gsap.timeline({
      scrollTrigger: {
        trigger: '.section--slogan',
        start: 'top bottom',
        end: 'bottom top',
        // toggleActions: 'play reset restart reset',
        once: true
      }
    });
    tl.to('.main-slogan', {
      backgroundColor: '#fff',
      duration: 0.2,
      ease: 'power2.out',
      onStart: function onStart() {
        // main-service__button의 모든 li 요소에서 active 클래스 제거
        var listItems = document.querySelectorAll('.main-service__button li');
        listItems.forEach(function (li) {
          li.classList.remove('active'); // active 클래스 제거
        });

        // 첫 번째 li에 active 클래스 추가
        var firstLi = listItems[0];
        if (firstLi) {
          firstLi.classList.add('active'); // 첫 번째 li에 active 클래스 추가
          firstLi.click(); // 첫 번째 li를 클릭한 것처럼 처리
        }
      }
    }).to('.main-slogan__text h4', {
      y: '0%',
      scale: 1,
      duration: 1.5,
      ease: 'power2.out',
      stagger: 0
    }, '+=0.2').to('.highlight .bg', {
      width: '100%',
      duration: 0.6,
      ease: 'power2.out',
      stagger: 0.3
    }, '-=0.85').to('.highlight', {
      color: '#fff',
      duration: 0.6,
      ease: 'power2.out',
      stagger: 0.3
    }, '-=0.85').to('.main-slogan__text h4', {
      y: 100,
      scale: 1,
      duration: 1,
      ease: 'power2.in',
      stagger: 0
    }).to('.overlay-circle', {
      scale: 100,
      opacity: 1,
      duration: 1.5,
      ease: 'power2.out',
      stagger: 0.5,
      onComplete: function onComplete() {
        gsap.to('.overlay-circle', {
          opacity: 0,
          duration: 0
        });
        gsap.to('.main-slogan', {
          backgroundColor: '#1F273B',
          duration: 0,
          ease: 'power2.out'
        });
      }
    }).to('.main-slogan__marquee', {
      left: 'calc(50% + 245.333px)',
      transform: 'translate(-100%, -50%)',
      duration: 5,
      // stagger: 0,
      ease: 'power1.in'
    }, '-=3').to('.main-slogan__marquee', {
      opacity: 1,
      // opacity를 1로 설정
      duration: 1 // opacity 변경 시간
    }, '-=3' // 첫 번째 애니메이션과 겹치도록 설정
    ).to('.main-slogan__image--scale', {
      width: '101vw',
      height: '101vh',
      minWidth: '1680px',
      borderRadius: '0%',
      duration: 1,
      // scale 변경 시간
      ease: 'power2.out' // 부드러운 애니메이션
    }, '+=0' // opacity 애니메이션이 끝난 후 0.5초 지연
    ).to('.main-slogan__image--scale', {
      opacity: 1,
      duration: 0.65,
      ease: 'power2.out'
    }).to('.main-service', {
      opacity: 1,
      // opacity를 1로 설정
      duration: 1,
      onStart: function onStart() {
        // main-service의 z-index를 설정
        document.querySelector('.main-service').style.zIndex = '3'; // 원하는 z-index 값
      }
    }, '-=1.5' // 이전 애니메이션과 동시에 실행하려면 적절한 지점에서 설정
    ).add(function () {
      document.querySelector('.section--slogan').classList.toggle('animate-end'); // 원하는 클래스 이름으로 변경
    });
  };
  new SimpleMarquee('.main-marquee__slide ul', {
    autoplay: true,
    speed: 1.5,
    pauseOnMouseEnter: true,
    direction: 'left'
  });
  var serviceSwiper = new Swiper('.main-service__slide', {
    slidesPerView: 'auto',
    loop: false,
    speed: 600,
    effect: 'fade',
    parallax: true,
    grabCursor: false,
    on: {
      slideChange: function slideChange() {
        var index = this.activeIndex;
        serviceButtons.forEach(function (btn, i) {
          btn.classList.toggle('active', i === index);
        });
      }
    }
  });
  var getRandomInt = function getRandomInt(min, max) {
    return Math.floor(Math.random() * (max - min + 1)) + min;
  };
  var generateRandomNumber = function generateRandomNumber(length) {
    return getRandomInt(Math.pow(10, length - 1), Math.pow(10, length) - 1);
  };
  var countToTarget = function countToTarget(element, target, duration) {
    var startTime = performance.now();
    var step = function step() {
      var elapsedTime = performance.now() - startTime;
      var progressRatio = Math.min(elapsedTime / duration, 1);
      element.innerText = progressRatio < 1 ? generateRandomNumber(target.toString().length) : target;
      if (progressRatio < 1) requestAnimationFrame(step);
    };
    requestAnimationFrame(step);
  };
  counters.forEach(function (counter) {
    return counter.innerText === '0' && startCounting(counter);
  });
  function startCounting(counterElement) {
    countToTarget(counterElement, parseInt(counterElement.getAttribute('data-count'), 10), 1200);
  }
  function goToSection(index) {
    if (isScrolling || index < 0 || index >= sections.length) return;
    isScrolling = true;
    gsap.to(window, {
      scrollTo: {
        y: sections[index].offsetTop,
        autoKill: false
      },
      duration: 1,
      ease: 'expo.inOut',
      onComplete: function onComplete() {
        currentSectionIndex = index;
        isScrolling = false;
        sections.forEach(function (section) {
          section.classList.remove('active');
          if (index >= sections.length - 1) {
            counters.forEach(startCounting);
            document.querySelector('.bg-video').play();
          } else {
            counters.forEach(function (counter) {
              return counter.innerText = '0';
            });
            document.querySelector('.bg-video').pause();
          }
        });
        sections[index].classList.add('active');
        if (index === 0) {
          // header.classList.remove('header-sm');
          header.classList.add('header-sm');
        }
        if (index === 0 && !mainKv.classList.contains('stop')) {
          // header.classList.remove('header-sm');
          header.style.display = 'block';
          document.querySelector('.scroll-area').scrollTop = 0;
        }
      }
    });
  }
  function handleWheel(e) {
    if (isScrolling) {
      e.preventDefault();
      return;
    }
    var delta = e.deltaY > 0 ? 'down' : 'up';
    if (delta === 'down' && currentSectionIndex < sections.length - 1) {
      currentSectionIndex += 1;
      goToSection(currentSectionIndex);
    } else if (delta === 'up' && currentSectionIndex > 0 && currentSectionIndex !== sections.length - 1) {
      currentSectionIndex -= 1;
      goToSection(currentSectionIndex);
    } else if (delta === 'up' && currentSectionIndex === sections.length - 1 && document.querySelector('.scroll-area').scrollTop === 0) {
      currentSectionIndex -= 1;
      goToSection(currentSectionIndex);
      document.querySelector('.scroll-area').scrollTop = 0;
    }
    if (delta == 'down' && currentSectionIndex === 1) {
      setTimeout(function () {
        return header.style.display = 'none';
      }, 300);
      moveBox.classList.add('down');
    }
    if (delta == 'up' && currentSectionIndex === 0) {
      moveBox.classList.remove('down');
    }
    if (delta == 'up') {
      header.classList.add('header-sm');
    }
  }
  var handleWindowScroll = function handleWindowScroll() {
    gsap.to(window, {
      scrollTo: {
        y: sections[currentSectionIndex].offsetTop,
        autoKill: false
      },
      duration: 1,
      ease: 'expo.inOut'
    });
  };
  window.addEventListener('load', setInitialPosition);
  window.addEventListener('scroll', setInitialPosition);
  window.addEventListener('wheel', handleWheel, {
    passive: false
  });
  window.addEventListener('resize', debounce(function () {
    updateDimensions();
    handleWindowScroll();
  }, 100));
  var loadAfterEvt = function loadAfterEvt() {
    // moveBox.style.paddingTop = `${moveBox.clientHeight - document.querySelectorAll('.section')[0].clientHeight + header.clientHeight + 40}px`;
    moveBox.style.paddingTop = "".concat(header.clientHeight, "px");
    mainKv.classList.add('stop');
    header.classList.add('header-sm');
    setTimeout(function () {
      window.addEventListener('mousemove', loadmouseMove);
    }, 1000);
  };
  var loadmouseMove = function loadmouseMove() {
    if (mainKv.classList.contains('stop')) {
      // moveBox.style.paddingTop = '0';
      mainKv.classList.remove('stop');
      // header.classList.remove('header-sm');

      [mainBoard, header].forEach(function (element) {
        return element.addEventListener('mousemove', mouseMoveHandler);
      });
      window.removeEventListener('mousemove', loadmouseMove);
    }
  };
  loadAfterEvt();
  serviceButtons.forEach(function (btn, index) {
    btn.addEventListener('click', function () {
      serviceSwiper.slideTo(index);
      serviceButtons.forEach(function (b) {
        return b.classList.remove('active');
      });
      btn.classList.add('active');
    });
  });
  var swiperOptions = {
    slidesPerView: 'auto',
    spaceBetween: 20,
    on: {
      init: function init() {
        var slides = document.querySelectorAll('.global-swiper .swiper-slide');
        slides.forEach(function (slide, index) {
          setTimeout(function () {
            slide.classList.add('active');
          }, index * 200);
        });
      },
      slideChange: function slideChange() {
        var currentSlide = this.slides[this.activeIndex];
        var currentGroup = currentSlide.getAttribute('data-group');

        // 그룹에 따라 globalMapSlider를 이동

        document.querySelectorAll('.group-button').forEach(function (button) {
          button.classList.toggle('active', button.dataset.group === currentGroup);
        });
        var lastGroup = Number(this.slides[this.slides.length - 1].getAttribute('data-group'));
        var slidesPerView = this.params.slidesPerView === 'auto' ? Math.floor(this.width / this.slides[0].swiperSlideSize) : this.params.slidesPerView;
        var lastGroupSlidesCount = this.slides.filter(function (slide) {
          return Number(slide.getAttribute('data-group')) === lastGroup;
        }).length;
        if (this.isEnd) {
          document.querySelectorAll('.group-button').forEach(function (button) {
            if (lastGroupSlidesCount < slidesPerView) {
              button.classList.toggle('active', Number(button.dataset.group) === lastGroup);
              currentGroup = lastGroup;
            } else {
              button.classList.toggle('active', button.dataset.group === currentGroup);
            }
          });
        }
        globalMapSlider.slideTo(currentGroup);
      },
      reachEnd: function reachEnd() {}
    }
  };
  gsap.to('.section--global', {
    scrollTrigger: {
      trigger: '.section--global .title',
      scroller: '.scroll-area',
      start: 'bottom+=40px center',
      onEnter: function onEnter() {
        document.querySelector('.section--global').classList.add('active');
        document.querySelector('.main-global__btnlist').classList.add('active');
        globalSlider = new Swiper('.global-swiper', swiperOptions);
        if (initialGroupIndex !== null) {
          var slides = document.querySelectorAll(".global-swiper .swiper-slide[data-group=\"".concat(initialGroupIndex, "\"]"));
          if (slides.length > 0) {
            var firstSlide = slides[0];
            var allSlides = Array.from(globalSlider.slides);
            var firstSlideIndex = allSlides.indexOf(firstSlide);
            globalSlider.slideTo(firstSlideIndex);
            firstSlide.classList.add('swiper-slide-active');
            globalSlider.update();
            globalMapSlider.update();
          }
        }
      },
      markers: false,
      once: true
    }
  });
  document.querySelectorAll('.group-button').forEach(function (button) {
    button.addEventListener('click', function () {
      groupIndex = this.dataset.group;
      initialGroupIndex = groupIndex;
      var slides = document.querySelectorAll(".global-swiper .swiper-slide[data-group=\"".concat(groupIndex, "\"]"));
      var parentLi = this.closest('li');
      var siblingButtons = parentLi.parentElement.querySelectorAll('li button');
      siblingButtons.forEach(function (siblingButton) {
        siblingButton.classList.remove('active');
      });
      this.classList.add('active');
      if (slides.length > 0) {
        var firstSlide = slides[0];
        var allSlides = Array.from(globalSlider.slides);
        var firstSlideIndex = allSlides.indexOf(firstSlide);
        var activeSlides = document.querySelectorAll('.swiper-slide-active');
        activeSlides.forEach(function (slide) {
          slide.classList.remove('swiper-slide-active');
        });
        globalSlider.slideTo(firstSlideIndex);
        globalMapSlider.slideTo(groupIndex);
        firstSlide.classList.add('swiper-slide-active');
        globalSlider.update();
        globalMapSlider.update();
      } else {
        console.log("\uADF8\uB8F9 ".concat(groupIndex, "\uC5D0 \uC2AC\uB77C\uC774\uB4DC\uAC00 \uC5C6\uC2B5\uB2C8\uB2E4."));
      }
    });
  });
  topButton.addEventListener('click', function () {
    goToSection(0);
    moveBox.classList.remove('down');
  });
  initAnimation();
  goToSection(currentSectionIndex);
});