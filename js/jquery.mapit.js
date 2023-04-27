/**
 * MapIt
 *
 * @copyright	Copyright 2013, Dimitris Krestos
 * @license		Apache License, Version 2.0 (http://www.opensource.org/licenses/apache2.0.php)
 * @link			http://vdw.staytuned.gr
 * @version		v0.2.2
 */

/* Available options
 *
 * Map type: 	ROADMAP, SATELLITE, HYBRID, TERRAIN
 * Map styles: false, GRAYSCALE
 *
 */

	/* Sample html structure

	<div id='map_canvas'></div>

	*/


document.write('<scr'+'ipt type="text/javascript" src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCE0T8YQv3H3Q0ZJVvhyf8jO4YXfvUsnE4&sensor=false" ></scr'+'ipt>');

;(function($, window, undefined) {
	"use strict";

	$.fn.mapit = function(options) {

		var defaults = {
			latitude: 	 37.970996,
			longitude: 	 23.730542,
			zoom: 			 16,
			type: 			 'ROADMAP',
			scrollwheel: false,
			marker: {
				latitude: 	37.977996,
				longitude: 	23.733542,
				icon: 			'images/icons/map-marker.png',
				title: 			'Wedding Vendor',
				open: 			false,
				center: 		true
			},
			address: '<div class="infobox-wrap clearfix"><div class="infobox-figure"><div class="listing-topmap-section"><div class="listing-with-topmap-img"><img src="images/category-listing/category-list-2.jpg" class="img-responsive" alt="category-img"></div><div class="listing-topmap-dtl pad-bt-0"><a href="#"><h6 class="listing-topmap-dtl-heading">Venue Vendor Title</h6></a></div></div></div>',
			// styles: 'GRAYSCALE',
			locations: [
				[37.979252, 23.731353, 'images/icons/map-marker.png', 'listing', '<div class="infobox-wrap clearfix"><div class="infobox-figure"><div class="listing-topmap-section"><div class="listing-with-topmap-img"><img src="images/category-listing/category-list-1.jpg" class="img-responsive" alt="category-img"></div><div class="listing-topmap-dtl pad-bt-0"><h6 class="listing-topmap-dtl-heading"><a href="#">Venue Vendor Title</a></h6></div></div></div>', false, '0'],
				[37.976104, 23.745001, 'images/icons/map-marker-2.png', 'listing', '<div class="infobox-wrap clearfix"><div class="infobox-figure"><div class="listing-topmap-section"><div class="listing-with-topmap-img"><img src="images/category-listing/category-list-2.jpg" class="img-responsive" alt="category-img"></div><div class="listing-topmap-dtl pad-bt-0"><h6 class="listing-topmap-dtl-heading"><a href="#">Venue Vendor Title</a></h6></div></div></div>', false, '0'],
				[37.979408, 23.743982, 'images/icons/map-marker-3.png', 'listing', '<div class="infobox-wrap clearfix"><div class="infobox-figure"><div class="listing-topmap-section"><div class="listing-with-topmap-img"><img src="images/category-listing/category-list-3.jpg" class="img-responsive" alt="category-img"></div><div class="listing-topmap-dtl pad-bt-0"><h6 class="listing-topmap-dtl-heading"><a href="#">Venue Vendor Title</a></h6></div></div></div>', false, '0'],
				[37.973563, 23.732041, 'images/icons/map-marker.png', 'listing', '<div class="infobox-wrap clearfix"><div class="infobox-figure"><div class="listing-topmap-section"><div class="listing-with-topmap-img"><img src="images/category-listing/category-list-4.jpg" class="img-responsive" alt="category-img"></div><div class="listing-topmap-dtl pad-bt-0"><h6 class="listing-topmap-dtl-heading"><a href="#">Venue Vendor Title</a></h6></div></div></div>', false, '0'],
				[37.977436, 23.739695, 'images/icons/map-marker-2.png', 'listing', '<div class="infobox-wrap clearfix"><div class="infobox-figure"><div class="listing-topmap-section"><div class="listing-with-topmap-img"><img src="images/category-listing/category-list-5.jpg" class="img-responsive" alt="category-img"></div><div class="listing-topmap-dtl pad-bt-0"><h6 class="listing-topmap-dtl-heading"><a href="#">Venue Vendor Title</a></h6></div></div></div>', false, '0'],
				[37.979630, 23.736751, 'images/icons/map-marker-1-1.png', 'listing', '<div class="infobox-wrap clearfix"><div class="infobox-figure"><div class="listing-topmap-section"><div class="listing-with-topmap-img"><img src="images/category-listing/category-list-6.jpg" class="img-responsive" alt="category-img"></div><div class="listing-topmap-dtl pad-bt-0"><h6 class="listing-topmap-dtl-heading"><a href="#">Venue Vendor Title</a></h6></div></div></div>', false, '0'],
				[37.976104, 23.72341811, 'images/icons/map-marker-2.png', 'listing', '<div class="infobox-wrap clearfix"><div class="infobox-figure"><div class="listing-topmap-section"><div class="listing-with-topmap-img"><img src="images/category-listing/category-list-7.jpg" class="img-responsive" alt="category-img"></div><div class="listing-topmap-dtl pad-bt-0"><h6 class="listing-topmap-dtl-heading"><a href="#">Venue Vendor Title</a></h6></div></div></div>', false, '0'],
				[37.974630, 23.734751, 'images/icons/map-marker-3.png', 'listing', '<div class="infobox-wrap clearfix"><div class="infobox-figure"><div class="listing-topmap-section"><div class="listing-with-topmap-img"><img src="images/category-listing/category-list-8.jpg" class="img-responsive" alt="category-img"></div><div class="listing-topmap-dtl pad-bt-0"><h6 class="listing-topmap-dtl-heading"><a href="#">Venue Vendor Title</a></h6></div></div></div>', false, '0'],
				[37.979104, 23.72341811, 'images/icons/map-marker-1-1.png', 'listing', '<div class="infobox-wrap clearfix"><div class="infobox-figure"><div class="listing-topmap-section"><div class="listing-with-topmap-img"><img src="images/category-listing/category-list-9.jpg" class="img-responsive" alt="category-img"></div><div class="listing-topmap-dtl pad-bt-0"><h6 class="listing-topmap-dtl-heading"><a href="#">Venue Vendor Title</a></h6></div></div></div>', false, '0']
			],
			origins: [
				['37.936294', '23.947394'],
				['37.975669', '23.733868']
			]
		};

		var options = $.extend(defaults, options);

		$(this).each(function() {

			var $this = $(this);

				// Init Map
				var directionsDisplay = new google.maps.DirectionsRenderer();

				var mapOptions = {
					scrollwheel: options.scrollwheel,
					scaleControl: false,
					center: 			options.marker.center ? new google.maps.LatLng(options.marker.latitude, options.marker.longitude) : new google.maps.LatLng(options.latitude, options.longitude),
					zoom: 				options.zoom,
					mapTypeId: 		eval('google.maps.MapTypeId.' + options.type)
				};
				var map = new google.maps.Map(document.getElementById($this.attr('id')), mapOptions);
				directionsDisplay.setMap(map);

				// Styles
				if (options.styles) {
					var GRAYSCALE_style = [{featureType:"all",elementType:"all",stylers:[{saturation: -100}]}];
					var MIDNIGHT_style	= [{featureType:'water',stylers:[{color:'#021019'}]},{featureType:'landscape',stylers:[{color:'#08304b'}]},{featureType:'poi',elementType:'geometry',stylers:[{color:'#0c4152'},{lightness:5}]},{featureType:'road.highway',elementType:'geometry.fill',stylers:[{color:'#000000'}]},{featureType:'road.highway',elementType:'geometry.stroke',stylers:[{color:'#0b434f'},{lightness:25}]},{featureType:'road.arterial',elementType:'geometry.fill',stylers:[{color:'#000000'}]},{featureType:'road.arterial',elementType:'geometry.stroke',stylers:[{color:'#0b3d51'},{lightness:16}]},{featureType:'road.local',elementType:'geometry',stylers:[{color:'#000000'}]},{elementType:'labels.text.fill',stylers:[{color:'#ffffff'}]},{elementType:'labels.text.stroke',stylers:[{color:'#000000'},{lightness:13}]},{featureType:'transit',stylers:[{color:'#146474'}]},{featureType:'administrative',elementType:'geometry.fill',stylers:[{color:'#000000'}]},{featureType:'administrative',elementType:'geometry.stroke',stylers:[{color:'#144b53'},{lightness:14},{weight:1.4}]}]
					var BLUE_style			= [{featureType:'water',stylers:[{color:'#46bcec'},{visibility:'on'}]},{featureType:'landscape',stylers:[{color:'#f2f2f2'}]},{featureType:'road',stylers:[{saturation:-100},{lightness:45}]},{featureType:'road.highway',stylers:[{visibility:'simplified'}]},{featureType:'road.arterial',elementType:'labels.icon',stylers:[{visibility:'off'}]},{featureType:'administrative',elementType:'labels.text.fill',stylers:[{color:'#444444'}]},{featureType:'transit',stylers:[{visibility:'off'}]},{featureType:'poi',stylers:[{visibility:'off'}]}]
					var mapType = new google.maps.StyledMapType(eval(options.styles + '_style'), { name: options.styles });
					map.mapTypes.set(options.styles, mapType);
					map.setMapTypeId(options.styles);
				}

				// Home Marker
				var home = new google.maps.Marker({
					map: 			map,
					position: new google.maps.LatLng(options.marker.latitude, options.marker.longitude),
					icon: 		new google.maps.MarkerImage(options.marker.icon),
					title: 		options.marker.title
				});

				// Add info on the home marker
				var info = new google.maps.InfoWindow({
					content: options.address
				});

				// Open the info window immediately
				if (options.marker.open) {
					info.open(map, home);
				} else {
					google.maps.event.addListener(home, 'click', function() {
						info.open(map, home);
					});
				};

				// Create Markers (locations)
				var infowindow = new google.maps.InfoWindow();
				var marker, i;
				var markers = [];

				for (i = 0; i < options.locations.length; i++) {

					// Add Markers
					marker = new google.maps.Marker({
						position: new google.maps.LatLng(options.locations[i][0], options.locations[i][1]),
						map: 			map,
						icon: 		new google.maps.MarkerImage(options.locations[i][2] || options.marker.icon),
						title: 		options.locations[i][3]
					});

					// Create an array of the markers
					markers.push(marker);

					// Init info for each marker
					google.maps.event.addListener(marker, 'click', (function(marker, i) {
						return function() {
							infowindow.setContent(options.locations[i][4]);
							infowindow.open(map, marker);
						}
					})(marker, i));

				};

				// Directions
				var directionsService = new google.maps.DirectionsService();

				$this.on ('route', function(event, origin) {
					var request = {
						origin: 			new google.maps.LatLng(options.origins[origin][0], options.origins[origin][1]),
						destination: 	new google.maps.LatLng(options.marker.latitude, options.marker.longitude),
						travelMode: 	google.maps.TravelMode.DRIVING
					};
					directionsService.route(request, function(result, status) {
						if (status == google.maps.DirectionsStatus.OK) {
							directionsDisplay.setDirections(result);
						};
					});
				});

				// Hide Markers Once (helper)
				$this.on ('hide_all', function() {
					for (var i=0; i<options.locations.length; i++) {
						markers[i].setVisible(false);
					};
				});

				// Show Markers Per Category (helper)
				$this.on ('show', function(event, category) {
					$this.trigger('hide_all');
					$this.trigger('reset');

					// Set bounds
					var bounds = new google.maps.LatLngBounds();
					for (var i=0; i<options.locations.length; i++) {
						if (options.locations[i][6] == category) {
							markers[i].setVisible(true);
						};

						// Add markers to bounds
						bounds.extend(markers[i].position);
					};

					// Auto focus and center
					map.fitBounds(bounds);
				});

				// Hide Markers Per Category (helper)
				$this.on ('hide', function(event, category) {
					for (var i=0; i<options.locations.length; i++) {
						if (options.locations[i][6] == category) {
							markers[i].setVisible(false);
						};
					};
				});

				// Clear Markers (helper)
				$this.on ('clear', function() {
					if (markers) {
						for (var i = 0; i < markers.length; i++ ) {
							markers[i].setMap(null);
						};
					};
				});

				$this.on ('reset', function() {
					map.setCenter(new google.maps.LatLng(options.latitude, options.longitude), options.zoom);
				});

				// Hide all locations once
				//$this.trigger('hide_all');

		});

	};

	$(function () { $('[data-toggle="mapit"]').mapit(); });

})(jQuery);