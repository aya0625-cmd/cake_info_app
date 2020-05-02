// 画像自動再生
//$(function () {
  //$(".slideshow").each(function () {
   // var slides = $(this).find('img'),
    //  slideCount = slides.length,
    //  currentIndex = 0;
    
   // slides.eq(currentIndex).fadeIn();

  //  setInterval(showNextSlide, 7500);

   // function showNextSlide() {
     // var nextIndex = (currentIndex + 1) % slideCount;
    //  slides.eq(currentIndex).fadeOut(2000);
     // slides.eq(nextIndex).fadeIn(4000);
     // currentIndex = nextIndex;
   // }
 // });
//});


// ハンバーガーメニュー
$(function () {
  $('.hamburger-btn').on('click', function () {
    $(this).toggleClass('active');

    if ($(this).hasClass('active')) {
      $('.global-nav').addClass('active');
    } else {
      $('.global-nav').removeClass('active');
    }
  });
});
 
// ヘッダーメニュー表示
$(function () {
  var header = $('#top-header');
  var adclass = 'scrolled';
  var scrollY = 800;
   
  $(window).scroll(function () {
    if ($(window).scrollTop() > scrollY) {
      header.addClass(adclass).fadeIn(6000);
      
    } else {
      header.removeClass(adclass);
      
    }
  });
});

// スクロール表示
$(function () {
  $(window).scroll(function () {
    $('.fade').each(function () {
      var scroll = $(window).scrollTop();
      var eleTop = $(this).offset().top;
      var windowHeight = $(window).height();
      
      if (scroll > eleTop - windowHeight + 200) {
        $(this).addClass('fade-up');
      }
    });
  });
  $(window).trigger('scroll');
});

// メニューから指定の場所に自動スクロール
$(function () {
  $('.menu-list').click(function () {
    e.preventDefault();
    var id = $(this).attr('href');
    var posi = $(id).offset().top;

    $('html, body').animate({
      'scrollTop': posi
    }, 1000)
  });
});


$(function () {
  $('.slick').slick({
    autoplay: true,
    dots: true,
    autoplaySpeed: 5000,
    centerMode: true,
    centerPadding: '100px',
    slidesToShow: 3
  });
});


