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
