"use strict";

document.addEventListener('DOMContentLoaded', function () {
  var $footerMenuButton = document.querySelectorAll('.footer__menu button');
  var $familyButton = document.querySelector('.footer__button');
  var $familyToggle = document.querySelector('.footer__toggle');
  $footerMenuButton.forEach(function (menuButton) {
    menuButton.addEventListener('click', function () {
      var $toggleMenu = this.nextElementSibling;
      var toggleHeight = $toggleMenu.scrollHeight;
      console.log($toggleMenu);
      if (!this.classList.contains('active')) {
        $footerMenuButton.forEach(function (btn) {
          btn.classList.remove('active');
          var menu = btn.nextElementSibling;
          if (menu) {
            menu.style.height = 0 + 'px';
          }
        });
        this.classList.add('active');
        $toggleMenu.style.height = toggleHeight + 'px';
      } else {
        this.classList.remove('active');
        $toggleMenu.style.height = 0 + 'px';
      }
    });
  });
  $familyButton.addEventListener('click', function (e) {
    var $target = this.nextElementSibling;
    var menuHeight = $target.scrollHeight;
    if (this.classList.contains('active')) {
      this.classList.remove('active');
      this.nextElementSibling.style.height = 0 + 'px';
    } else {
      this.classList.add('active');
      this.nextElementSibling.style.height = menuHeight + 'px';
    }
  });
  document.documentElement.addEventListener('click', function (e) {
    if (!e.target.closest('.footer__select')) {
      $familyButton.classList.remove('active');
      if ($familyToggle) {
        $familyToggle.style.height = '0px';
      }
    }
  });
});