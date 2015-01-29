// Scroll to id
$(document).on('ready page:load', function(){
  return $("a[href*=#]:not([href=#])").click(function() {
    var target;
    if (location.pathname.replace(/^\//, "") === this.pathname.replace(/^\//, "") || location.hostname === this.hostname) {
      target = $(this.hash);
      target = (target.length ? target : $("[name=" + this.hash.slice(1) + "]"));
      if (target.length) {
        $("html,body").animate({
          scrollTop: target.offset().top
        }, 800);
        return false;
      }
    }
  });
});

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
