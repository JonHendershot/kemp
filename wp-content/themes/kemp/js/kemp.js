/*
(function menuColor($){
	var scope = $('.menu-scope'),
		triggerClass = $('.color-trigger'),
		headerHeight = $('.home-header').outerHeight(),
		hintHeight = $('.scroll-hint-container').outerHeight();
		
	if( scope.length ) {
		
		$(window).scroll(function(){
			var scopeTop = scope.offset().top,
				scopeBottom = scopeTop + scope.height(),
				hintBottom = $('.scroll-hint-container').offset().top,
				hintclip = headerHeight - hintBottom - 1,
				scopeMid = scopeTop + ( 0.5 * scope.height() ), // used to determine which side element is entering
				offset = $(window).scrollTop() + 76; // how far we've scrolled
				
				
			triggerClass.each(function(){
				
			
				var	trigger = $(this),
					triggerTop = trigger.offset().top,
					triggerKey = trigger.attr('data-color-key');
				
				if( triggerTop > scopeTop ){
					var next = trigger.prev(),
						nextSet = next.attr('data-color-key');
				} else {
					var next = trigger.next(),
						nextSet = next.attr('data-color-key');
				}
				
				if(scopeBottom > triggerTop && triggerTop > scopeTop && nextSet != 'hidden'){
					
					trigger.removeClass('out').addClass('in'); // element has entered scope
					
					if( offset >= triggerTop ){
						var c = 76 - (offset - triggerTop);
						if( triggerKey == 'black' ){
							$('.nav-bar.nav-black').css({clip:'rect('+ c +'px,auto,auto,0'});
							$('.nav-bar.nav-white').css({clip:'rect(0,auto,'+ c + 'px,0'});
						}else if( triggerKey == 'white' ){
							$('.nav-bar.nav-white').css({clip:'rect('+ c +'px,auto,auto,0'});
							$('.nav-bar.nav-black').css({clip:'rect(0,auto,'+ c + 'px,0'});
						}
						
					}
					
				}else if(nextSet == 'hidden'){
					if( offset >= triggerTop ){
						var c = 76 - (offset - triggerTop);
						if( triggerKey == 'black' ){
							$('.nav-bar.nav-black').css({clip:'rect('+ c +'px,auto,auto,0'});
							$('.nav-bar.nav-white').css({clip:'rect(76px,auto,auto,0'});
						}else if( triggerKey == 'white' ){
							$('.nav-bar.nav-white').css({clip:'rect('+ c +'px,auto,auto,0'});
							$('.nav-bar.nav-black').css({clip:'rect(76px,auto,auto,0'});
						}
						
					}
				}else {
					if( ! trigger.hasClass('out') && offset > $('.home-header').outerHeight() ){
										
						if(triggerTop < scopeBottom){
							if( triggerKey == 'black' ){
								$('.nav-bar.nav-black').css({clip:'rect(6px,auto,auto,0'});
								$('.nav-bar.nav-white').css({clip:'rect(0,auto,6px,0'});
							}else {
								$('.nav-bar.nav-white').css({clip:'rect(6px,auto,auto,0'});
								$('.nav-bar.nav-black').css({clip:'rect(0,auto,6px,0'});
							}
							
						} else {
							if( triggerKey == 'black' ){
								$('.nav-bar.nav-white').css({clip:'rect(8px,auto,auto,0'});
								$('.nav-bar.nav-black').css({clip:'rect(0,auto,8px,0'});
							}else {
								$('.nav-bar.nav-black').css({clip:'rect(8px,auto,auto,0'});
								$('.nav-bar.nav-white').css({clip:'rect(0,auto,8px,0'});
							}
							
						}
		
					}else if( offset <= $('.home-header').outerHeight() ){
						$('.nav-bar').css({clip:'rect(76px,auto,auto,0'});
					}
					trigger.removeClass('in').addClass('out'); // element has left scope
					
				}
			});
			
			if( hintclip < 25 && hintclip > -25 ) {
				
				$('.scroll-hint-container').css({'clip':'rect(0px,auto,' + hintclip + 'px,0)'});
			}
			if( hintclip < 0 && ! $('.scroll-hint-container').hasClass('hidden') ){
				$('.scroll-hint-container').css({'clip':'rect(0px,auto,0px,0)'}).addClass('hidden');
			}
			if( hintclip > 10 &&  $('.scroll-hint-container').hasClass('hidden') ){
				$('.scroll-hint-container').css({'clip':'rect(0px,auto,10px,0)'}).removeClass('hidden');
			}
		});
		
		

	}
}(jQuery));
*/
(function menuTrigger($){

	$('.menu-trigger').click(function(){
		var distance = $('.menu-container').outerWidth();
		if( ! $(this).hasClass('open') ){
			$('.menu-trigger').addClass('open');
			$('.menu-container').addClass('visible');
			$('.site-content,.toolbox').css({'-webkit-transform':'translate3d(-' + distance + 'px,0,0)'});
			$('body').addClass('frozen');

		} else {
			$('.menu-trigger').removeClass('open');
			$('.menu-container').removeClass('visible');
			$('.site-content,.toolbox').css({'-webkit-transform':'none'});
			$('body').removeClass('frozen');


		}
	});
	
	if( ! $('body.home').length ){ // remove this condition when menu on main is fixed
			$('.menu-trigger').hover(function(){
				$('.menu-trigger').addClass('prep');
			}, function(){
				$('.menu-trigger').removeClass('prep');
			});
	}

	
}(jQuery));
(function lightbox($){
	windowHeight = $(window).height();
	
	// open lightbox
	$('.grid-item.lightbox-trigger').click(function(){
		
		var item = $(this);
		
		if(item.hasClass('photo')){ // image lightbox
			
			var itemInfo = item.data('light'),
				src = itemInfo.url,
				title = itemInfo.title,
				subtitle = itemInfo.subtitle,
				itemNumber = parseInt(itemInfo.item_number),
				nextItem = itemNumber + 1,
				prevItem = itemNumber - 1;
				
				detectAr(src);
				
				$('.next-arrow').attr('data-item',nextItem);
				$('.prev-arrow').attr('data-item',prevItem);
				$('.lightbox-img').attr('src',src);
				$('.lightbox').addClass('visible');
				$('.lightbox .image-meta h2').text(title);
				$('.lightbox .image-meta p').text(subtitle);
				
				if( ! $('.grid-item.item-' + nextItem).length){
					var nextUrl = $('.grid-item').first().data('light').url,
						prevUrl = $('.grid-item.item-' + prevItem).data('light').url;	
				} else if(prevItem === 0){
					var nextUrl = $('.grid-item.item-' + nextItem).data('light').url,
						prevUrl = $('.grid-item').last().data('light').url;
				} else {
					var nextUrl = $('.grid-item.item-' + nextItem).data('light').url,
						prevUrl = $('.grid-item.item-' + prevItem).data('light').url;
				}
				
				preload(nextUrl,prevUrl);
	
			
		} else{ // video iframe lightbox
			var	srcPrep = '//www.youtube.com/embed/',
				itemData = item.attr('data-embed'),
				src = itemData.split('=')[1],
				srcAppend = '?autoplay=1&showinfo=0',
				frameSrc = srcPrep + src + srcAppend,
				title = item.attr('data-title');	

			$('.lightbox iframe').attr('src', frameSrc);
			$('.lightbox').addClass('visible');	
			document.getElementsByClassName("box-title")[0].innerHTML = title;
		}
		
	});
	
	// display next images with click of arrows
	$('.lightbox-content .arrow').click(function(){
		
		var imageID = $(this).attr('data-item');
		nextImg(imageID);
				
	});
	
	// Handle key events while lightbox is open
	$(document).keydown(function(e){
		
		// only execute if lightbox is open
		if( $('.lightbox.image-container').hasClass('visible') ){
			var rightArrow = 39,
				leftArrow = 37,
				esc = 27,
				pressed = e.which;
		
			if( pressed === esc ){
				// Close the Lightbox
				$('.lightbox').removeClass('visible'); // close lightbox
				$('.lightbox-img').attr('src',''); // remove image from image container
				$('.lightbox .image-meta h2, .lightbox .image-meta p').text(''); // reset metadata
				
			} else {
				// Switch the Image
				if(pressed === 39){ // right arrow pressed
					var imgID = $('.lightbox-content .next-arrow').attr('data-item');
				} else if(pressed === 37){ // left arrow pressed
					var imgID = $('.lightbox-content .prev-arrow').attr('data-item');
				}
				
				nextImg(imgID);
				console.log(imgID);
				
			}


		}
				
	});
	
	$('.close-lb').click(function(){
		$('.lightbox').removeClass('visible');
		$('.lightbox-img').attr('src',''); // remove image from image container
		$('.lightbox .image-meta h2, .lightbox .image-meta p').text(''); // remove metadata
	});
	$('.clsh').click(function(){ // hide controls on mobile
		
			if($('.lightbox-content').hasClass('hidecontrols')){
				$('.lightbox-content').removeClass('hidecontrols');
			}else {
				$('.lightbox-content').addClass('hidecontrols');
			}
		
		
	});
	
}(jQuery));
(function toolBox($){
	if($('.toolbox').length){
		$(document).ready(function(){
			$('.toolbox').removeClass('hide');
		});	
	}	
}(jQuery));
(function showMenu($){
	if( $('body.home').length ){
		var headerHeight = $('.home-header').outerHeight();
		
		$(window).scroll(function(){
			if( $(window).scrollTop() > headerHeight && ! $('.nav-bar.nav-white').hasClass('showing')){
				$('.nav-bar.nav-white').addClass('showing').removeClass('bury');
				$('.close-menu').removeClass('showing');
			}else if( $(window).scrollTop() < headerHeight ){
				$('.nav-bar.showing').removeClass('showing').addClass('bury');
				$('.close-menu').addClass('showing');
			}
		});
	}
}(jQuery));
(function testimonial($){
	if($('.testimonials-wrapper').length){
		function autofader(){
			setTimeout(function(){
				var currentID = parseInt($('.testimonial.active').attr('data-id')),
					nextID = currentID + 1,
					firstTest = $('.testimonial').first(),
					lastTest = $('.testimonial').last().attr('data-id'),
					nextTest = $('.testimonial.test-' + nextID);
					
					$('.tab.active, .testimonial.test-' + currentID).removeClass('active');
	
					if(nextTest.length){
						nextTest.addClass('active');
						$('.tab-' + nextID).addClass('active');
					} else {
						firstTest.addClass('active');
						$('.tab-1').addClass('active');
					}
					console.log(nextID);
					
					autofader();
			}, 15000);
		}
		
		autofader();
	}
}(jQuery));
function preload() {
	var images = new Array();
	for (i = 0; i < preload.arguments.length; i++) {
		images[i] = new Image()
		images[i].src = preload.arguments[i]
	}
}
function detectAr(url){
	var img = new Image();

	
	
	img.onload = function(){
		// Setup Variables 
		var	w   = img.width,
			h   = img.height,
			ar  = w/h;
					
		// Change lightbox class based on aspect ratio
		if( ar > 1 ){ // image is wider than it is tall
			document.getElementById('lightbox-image').className = '';
			document.getElementById('lightbox-image').className = 'lightbox-img wide';
		}else { // image is taller than it is wide
			document.getElementById('lightbox-image').className = '';
			document.getElementById('lightbox-image').className = 'lightbox-img tall';
		}
		
	}
	img.src = url;
}

function nextImg(nextImgID){
	
	// Initial variables
	var $ = jQuery,
		nextItem = $('.grid-item.item-' + nextImgID),
		firstItem = $('.grid-item.item-1'),
		lastItemID = $('.grid-item').last().data('light').item_number,
		lastItem = $('.grid-item.item-' + lastItemID);
	
	// Check if the image with the provided ID exists and apply the data variable accordingly
	if(nextItem.length){ // next item exists in DOM - get the data variable
		var itemInfo = nextItem.data('light');
	} else if(nextImgID > 1) { // we are on the last image in the DOM - get the data of the first image
		var itemInfo = firstItem.data('light');
	} else if(nextImgID == 1 || nextImgID == 0) { // we are on the first image in the DOM - get the data of the last image
		var itemInfo = lastItem.data('light');
	}
	
	

	// Setup variables with derived item data
	var src = itemInfo.url, // url of next image to be displayed
		title = itemInfo.title, // title of next image to be displayed
		subtitle = itemInfo.subtitle, // subtitle of next image to be displayed
		itemNumber = parseInt(itemInfo.item_number), // id number of next image to be displayed
		nextItemNum = itemNumber + 1, // id number of item after next image to be displayed
		prevItemNum = itemNumber - 1; // id number of item before next image to be displayed
	
	
	// Detect the aspect ratio of the image and apply styled class to lightbox accordingly
	detectAr(src); 	
	
	
	// Apply changes to lightbox
	$('.next-arrow').attr('data-item',nextItemNum);
	$('.prev-arrow').attr('data-item',prevItemNum);
	$('.lightbox-img').attr('src',src);
	$('.lightbox').addClass('visible');
	$('.lightbox .image-meta h2').text(title);
	$('.lightbox .image-meta p').text(subtitle);
	
	
	// Get url of the next and previous images based on derived information
	if( ! nextItem.length){
		var nextUrl = $('.grid-item').first().data('light').url,
			prevUrl = $('.grid-item.item-' + prevItemNum).data('light').url;	
	} else if(prevItemNum === 0){
		var nextUrl = $('.grid-item.item-' + nextItemNum).data('light').url,
			prevUrl = $('.grid-item').last().data('light').url;
	} else {
		var nextUrl = $('.grid-item.item-' + nextItemNum).data('light').url,
			prevUrl = $('.grid-item.item-' + prevItemNum).data('light').url;
	}
		
	// Preload the next and previous images in the DOM to ensure immediate switch over on next action 
	preload(nextUrl,prevUrl);
	
	
	
/*
	
	ORIIGNAL CODE

	var itemID = $(this).attr('data-item'),
			nextItem = $('.grid-item.item-' + itemID),
			firstItem = $('.grid-item.item-1'),
			lastItemID = $('.grid-item').last().data('light').item_number,
			lastItem = $('.grid-item.item-' + lastItemID);

		if(nextItem.length){
			var itemInfo = nextItem.data('light');
		} else if(itemID > 1) {
			var itemInfo = firstItem.data('light');
		} else if(itemID == 1 || itemID == 0) {
			var itemInfo = lastItem.data('light');
		}
		var src = itemInfo.url,
			title = itemInfo.title,
			subtitle = itemInfo.subtitle,
			itemNumber = parseInt(itemInfo.item_number),
			nextItemNum = itemNumber + 1,
			prevItemNum = itemNumber - 1;
		
		detectAr(src);
			
		$('.next-arrow').attr('data-item',nextItemNum);
		$('.prev-arrow').attr('data-item',prevItemNum);
		$('.lightbox-img').attr('src',src);
		$('.lightbox').addClass('visible');
		$('.lightbox .image-meta h2').text(title);
		$('.lightbox .image-meta p').text(subtitle);
		
		if( ! nextItem.length){
			var nextUrl = $('.grid-item').first().data('light').url,
				prevUrl = $('.grid-item.item-' + prevItemNum).data('light').url;	
		} else if(prevItemNum === 0){
			var nextUrl = $('.grid-item.item-' + nextItemNum).data('light').url,
				prevUrl = $('.grid-item').last().data('light').url;
		} else {
			var nextUrl = $('.grid-item.item-' + nextItemNum).data('light').url,
				prevUrl = $('.grid-item.item-' + prevItemNum).data('light').url;
		}
	
		preload(nextUrl,prevUrl);
*/	
		

}



