(function menuColor($){
	var scope = $('.menu-scope'),
		triggerClass = $('.color-trigger');
		
	
	if( scope.length ) {
/*
		var min = null,
			controller = 'none',
			distance = $(window).scrollTop();
		triggerClass.each(function(){
			var trigPosition = Math.abs( $(this).offset().top - distance );
			console.log(trigPosition);
			
			if( min === null || trigPosition < min ){ min = trigPosition; controller = $(this).attr('data-color-key'); }
		});					
		
		console.log('Min: ' + min + ' Color Key: ' + controller);
		if(controller == 'hidden'){
			$('.nav-bar.nav-black').css({clip:'rect(76px,auto,auto,0'});
			$('.nav-bar.nav-white').css({clip:'rect(76px,auto,auto,0'});
		}else if( controller == 'white' ){
			$('.nav-bar.nav-black').css({clip:'rect(6px,auto,auto,0'});
			$('.nav-bar.nav-white').css({clip:'rect(76px,auto,auto,0'});
		}else if( controller == 'black' ){
			$('header .nav-bar.nav-black').css({clip:'rect(76px,auto,auto,0'});
			$('header .nav-bar.nav-white').css({clip:'rect(6px,auto,auto,0'});
		}
*/
		
		$(window).scroll(function(){
			var scopeTop = scope.offset().top,
				scopeBottom = scopeTop + scope.height(),
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
		});
		
		

	}
}(jQuery));
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
	
	
	$('.menu-trigger').hover(function(){
		$('.menu-trigger').addClass('prep');
	}, function(){
		$('.menu-trigger').removeClass('prep');
	});
	
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
			nextItem = itemNumber + 1,
			prevItem = itemNumber - 1;
		$('.next-arrow').attr('data-item',nextItem);
		$('.prev-arrow').attr('data-item',prevItem);
		$('.lightbox-img').attr('src',src);
		$('.lightbox').addClass('visible');
		$('.lightbox .image-meta h2').text(title);
		$('.lightbox .image-meta p').text(subtitle);
				
	});
	
	$('.close-lb').click(function(){
		$('.lightbox').removeClass('visible');
		$('.lightbox-img').attr('src',''); // remove image from image container
		$('.lightbox .image-meta h2, .lightbox .image-meta p').text(''); // remove metadata
	});
	/*
$('.lightbox').click(function(){
		if( ! $(this).hasClass('arrow') ){
			$('.lightbox').removeClass('visible');
			$('.lightbox iframe, .lightbox-img').attr('src',''); // stop iframe playback on close
		}
		
	});
*/
}(jQuery));
