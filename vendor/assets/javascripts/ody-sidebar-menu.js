$(function(){
	/* CALCULATES THE HEIGHT OF ODY MAIN MENU FOR RESPONSIVE COMPATIBILITY */
	function rs() {
		var NavUlHeight = $('.ody-menu').height() - $('.ody-user').height() - $('.ody-social').height();
		$('ul.ody-main-menu').css({'height': NavUlHeight});
	} setInterval(rs, 100);

	/* ON TRIGGER BTN CLICK SHOW MENU */
	var NavStart = 'false';
	$('#ody-trigger').click(function(){
		if(NavStart == 'false') {
			$('.ody-menu').animate({
				'right': '0px'
			}, 400);
			$('.ody-content').animate({
				'right': '280px'
			}, 400);

			NavStart = 'true';
		} else {
			$('.ody-menu').animate({
				'right': '-280px'
			}, 400);
			$('.ody-content').animate({
				'right': '0px'
			}, 400);

			NavStart = 'false';
		}
	});

	/* DETECT IF LI HAS CHILDREN */
	$('.ody-main-menu li').has('ul').children('a').append('<i class="fa fa-angle-down dropdown-trigger">');
	$('li').has('ul').children('a').addClass('dropdown');

	/* ON LI WITH CHILDREN CLICK CHILDREN SHOW - HIDE */
	$('#dropdown').click(function(dropdown) {
		dropdown.preventDefault();

		$(this).next('ul').slideToggle(400);
		$(this).toggleClass('active');
	});
	$('#dropdown2').click(function(dropdown) {
		dropdown.preventDefault();

		$(this).next('ul').slideToggle(400);
		$(this).toggleClass('active');
	});
	$('#dropdown3').click(function(dropdown) {
		dropdown.preventDefault();

		$(this).next('ul').slideToggle(400);
		$(this).toggleClass('active');
	});
	$('#dropdown4').click(function(dropdown) {
		dropdown.preventDefault();

		$(this).next('ul').slideToggle(400);
		$(this).toggleClass('active');
	});

	/* ENABLE SCROLL FOR MAIN MENU */
	$(".ody-main-menu").mCustomScrollbar({
	      updateOnContentResize: false,
	      contentTouchScroll: true,
	      autoExpandHorizontalScroll: true,
	      mouseWheel:{ preventDefault: true},
	      updateOnSelectorChange: ".ody-main-menu"
    });
});
