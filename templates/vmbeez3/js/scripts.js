jQuery(function($){
	
	/* my */
	$('.dropdown').on('shown.bs.dropdown', function(e) {
		var menu = e.target.parentNode.querySelector('.dropdown-menu');
		if(menu) {
		menu.style.maxHeight = 
		  'calc(100vh - ' + menu.getBoundingClientRect().top + 'px)';
		}
	});
	
	jQuery( document ).ready(function( $ ) {
  	// Code that uses jQuery's $ can follow here.
		$('.brand').click(function()  {
			$('.brandsbox').css( "display", "none" );
			$('.brandsample').css( "display", "block" );
		});
		$('.brandsample').click(function()  {
			$('.brandsample').css( "display", "none" );
			$('.brandsample-good').css( "display", "block" );
		});

		$('.akb').click(function()  {
			$('.brandsbox').css( "display", "none" );
			$('.akb-sample').css( "display", "block" );
			$('.brandsample-good').css( "display", "none" );
		});
		$('.akb-sample').click(function()  {
			$('.brandsbox').css( "display", "none" );
			$('.akb-sample').css( "display", "none" );
			$('.brandsample-good').css( "display", "block" );
		});
	});
  
  
	/*
  	$('#dropdownMenu1').bind( 'click', sayHello );
 	$('#dropdownMenu2').bind( 'click', sayHello );
	$('#dropdownMenu3').bind( 'click', sayHello );
	function sayHello() {
		if ( $(this).find('.open1.dropdown')  ) {
			$('.middle-text').hide(); 
			$('#top-menu').removeClass().addClass('navbar'); 
			console.log('opened');
		}
		else {
			$('.middle-text').show();
			$('#top-menu').removeClass().addClass('navbar navbar-fixed-top'); 
			console.log('closed');
		}
	}
	
	$('#dropdownMenu1').on( 'click', sayHello2 );
 	$('#dropdownMenu2').on( 'click', sayHello2 );
	$('#dropdownMenu3').on( 'click', sayHello2 );
	function sayHello2() {
			$('.middle-text').show();
			$('#top-menu').removeClass().addClass('navbar navbar-fixed-top'); 
			console.log('closed');
	}
	*/
	
});