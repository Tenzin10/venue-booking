var init_venue_availability;

init_venue_availability = function(){
	/*$('#venue_availability-form').on('ajax:before', function(event, data, status){
		show_spinner();
	});
		$('#venue-availability-form').on('ajax:after', function(event, data, status){
		hide_spinner();
	}); */
	$('#venue-availability-form').on('ajax:success', function(event, data, status){
		$('#venue-availability').replaceWith(data);
		
		init_venue_availability();
	});
/*
	$('#venue-availability-form').on('ajax:error', function(event, xhr, status, error){
		hide_spinner();
		$('#venue-availability-results').replaceWith(' ');
		$('#venue-availability-errors').replaceWith('Its already booked at this time');
	}); */
} 


$(document).ready(function(){
	init_venue_availability();
})