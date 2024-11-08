"use strict";

document.addEventListener('DOMContentLoaded', function () {
  var topButton = document.querySelector('.top-btn');
  var contactButton = document.querySelector('.contact-btn');
  var footer = document.querySelector('.footer');
  var $plusIcon = document.querySelectorAll('.examine__plus');
  var banner_swiper = new Swiper('.slide-banner', {
    navigation: {
      nextEl: '.swiper-button-next',
      prevEl: '.swiper-button-prev'
    },
    pagination: {
      el: '.swiper-pagination'
    },
    autoplay: {
      delay: 3000
    },
    loop: true,
    speed: 1100
  });
  var advanSwiper = new Swiper('.advantage-slide', {
    slidesPerView: 'auto',
    spaceBetween: 50,
    pagination: {
      el: '.advantage-slide__progres',
      type: 'progressbar'
    }
  });
  var commsSwiper = new Swiper('.comms-slide', {
    slidesPerView: 'auto',
    spaceBetween: 50,
    pagination: {
      el: '.comms-slide__progres',
      type: 'progressbar'
    }
  });
  $plusIcon.forEach(function (icon) {
    icon.addEventListener('click', function (e) {
      var $target = this.parentNode.nextElementSibling;
      var toggleHeight = this.parentNode.nextElementSibling.scrollHeight;
      if ($target.classList.contains('active')) {
        e.target.classList.remove('active');
        $target.classList.remove('active');
        this.parentNode.nextElementSibling.style.height = "0px";
      } else {
        e.target.classList.add('active');
        $target.classList.add('active');
        this.parentNode.nextElementSibling.style.height = "".concat(toggleHeight, "px");
      }

      // this.parentNode.nextElementSibling.style.height = `${toggleHeight}px`;
    });
  });
  topButton.addEventListener('click', function () {
    window.scrollTo(0, 0);
  });
  var observer = new IntersectionObserver(function (entries) {
    entries.forEach(function (entry) {
      if (entry.isIntersecting) {
        contactButton.classList.add('fixed');
      } else {
        contactButton.classList.remove('fixed');
      }
    });
  }, {
    threshold: 0,
    rootMargin: '0px 0px -80px 0px'
  });
  observer.observe(footer);
});