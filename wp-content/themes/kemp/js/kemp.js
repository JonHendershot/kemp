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