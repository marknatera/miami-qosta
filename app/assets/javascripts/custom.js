// Scroll to id
$(function() {
  $('a[href*=#]:not([href=#])').click(function() {
    if (location.pathname.replace(/^\//,'') == this.pathname.replace(/^\//,'') && location.hostname == this.hostname) {
      var target = $(this.hash);
      target = target.length ? target : $('[name=' + this.hash.slice(1) +']');
      if (target.length) {
        $('html,body').animate({
          scrollTop: target.offset().top
        }, 1000);
        return false;
      }
    }
  });
});


  //
  // var slider = new MasterSlider();
  // slider.setup('masterslider' , {
  //         width:1920,    // slider standard width
  //         height:1080,   // slider standard height
  //         space:5
  //         // more slider options goes here...
  //         // check slider options section in documentation for more options.
  //     });
  // // adds Arrows navigation control to the slider.
  // slider.control('arrows');



// Parallax
// Home Page





// fadeThis. Look at http://www.jqueryscript.net/demo/jQuery-Plugin-For-Element-Fade-Slide-Effects-As-You-Scroll-FadeThis/ for more info

// $(document).ready(function() {
//   $(window).fadeThis({
//     speed: 1000,
//   });
// });
//
// $(window).scroll(function() {
//   $("#center-main").css({
//     'opacity' : 1-(($(this).scrollTop())/300)
//   });
// });
// $(window).scroll(function() {
//   $("#header-main").css({
//     'opacity' : 1-(($(this).scrollTop())/500)
//   });
// });
