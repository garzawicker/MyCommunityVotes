log "test 2"

denver = [39.7334624,-104.9924559]



map = L.map('map').setView(denver, 13);

console.dir map

`
L.tileLayer('http://{s}.tile.cloudmade.com/BC9A493B41014CAABB98F0471D759707/997/256/{z}/{x}/{y}.png', {
			maxZoom: 18,
			attribution: 'Map data &copy; <a href="http://openstreetmap.org">OpenStreetMap</a> contributors, <a href="http://creativecommons.org/licenses/by-sa/2.0/">CC-BY-SA</a>, Imagery © <a href="http://cloudmade.com">CloudMade</a>'
		}).addTo(map);


		L.marker(denver).addTo(map)
			.bindPopup("<b>Welcome to community votes!</b><br />I am a popup.").openPopup();

		L.circle(denver, 500, {
			color: 'red',
			fillColor: '#f03',
			fillOpacity: 0.5
		}).addTo(map).bindPopup("I am a circle.");

		// L.polygon([
		// 	[51.509, -0.08],
		// 	[51.503, -0.06],
		// 	[51.51, -0.047]
		// ]).addTo(map).bindPopup("I am a polygon !!!.");


		var popup = L.popup();

		function onMapClick(e) {
			popup
				.setLatLng(e.latlng)
				.setContent("You clicked the map at " + e.latlng.toString())
				.openOn(map);
		}

		map.on('click', onMapClick);

`
# var set;

# d3.csv("/", function(err, data){
# 	set = data;
# })



