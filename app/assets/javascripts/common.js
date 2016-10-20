$(function() {

	jQuery("a.JSscrollto").click(function () {
		$('.menu__link').removeClass('menu__link-active');
		$(this).addClass('menu__link-active');
		elementClick = jQuery(this).attr("href");
		destination = jQuery(elementClick).offset().top-80;
		if ($(window).width()<380) {$('.nav').hide();}; 
		jQuery("html:not(:animated),body:not(:animated)").animate({scrollTop: destination}, 1100);
		return false;
	});


	$(window).scroll(function(){
		if ($(this).scrollTop() > 300) {
			$(".page-header__nav-inviz").fadeIn("fast");		
		} else {
			$(".page-header__nav-inviz").fadeOut("fast");
			
		};
	});
});
