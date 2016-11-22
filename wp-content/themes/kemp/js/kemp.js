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
	$('.lightbox-content .arrow').click(function(){
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
				
	});
	$('.close-lb').click(function(){
		$('.lightbox').removeClass('visible');
		$('.lightbox-img').attr('src',''); // remove image from image container
		$('.lightbox .image-meta h2, .lightbox .image-meta p').text(''); // remove metadata
	});
	$('.lightbox-content').click(function(){
		if( ! $(this).hasClass('.close-lb') && $(this).hasClass('.image-meta') && $(this).hasClass('.arrow') ){
			if($(this).hasClass('hidecontrols')){
				$(this).removeClass('hidecontrols');
			}else {
				$(this).addClass('hidecontrols');
			}
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


	function preload() {
		var images = new Array();
		for (i = 0; i < preload.arguments.length; i++) {
			images[i] = new Image()
			images[i].src = preload.arguments[i]
			console.log('image loaded');
		}
	}