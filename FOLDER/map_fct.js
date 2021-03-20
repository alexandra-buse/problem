let map, infoWindow;
var current_position_marker;
var current_pos;
var service;
var infowindow;
let current_city;
var coordinates = [ ];
var nume = [ ];
var number_of_waypoints = 0;
var markersArray = [];
var longitude;
var latitude;
var records;

function clearOverlays() {
  for (var i = 0; i < markersArray.length; i++ ) {
    markersArray[i].setMap(null);
  }
  markersArray.length = 0;
}

function initMap() {
        map = new google.maps.Map(document.getElementById("map-container-google-4"), {
          center: { lat: -34.397, lng: 150.644 },
          zoom: 8,
        });
}


function strt() {
  infoWindow = new google.maps.InfoWindow();
  var locationButton = document.getElementById("locate_me_btn");
    // Try HTML5 geolocation.
		if (navigator.geolocation) {
      navigator.geolocation.getCurrentPosition(
        (position) => {
			current_pos = {
            lat: position.coords.latitude,
            lng: position.coords.longitude,
          };
		  if (current_position_marker) {
			current_position_marker.setPosition(current_pos);
		  } else { current_position_marker = new google.maps.Marker({
			position: current_pos,
			map,
			label: {
				color: 'black',
				fontWeight: 'bold',
				text: 'You are here!',
			},
			icon: {	 
				labelOrigin: new google.maps.Point(11, 40),
				url: 'http://maps.google.com/mapfiles/ms/icons/green-dot.png',
				size: new google.maps.Size(30, 50),
				origin: new google.maps.Point(0, 0),
				anchor: new google.maps.Point(11, 40),
			},
			title: "You are here!",
			animation: google.maps.Animation.DROP,
			
		  });}
		   
          map.setCenter(current_pos);	
		
		  latitude = current_pos.lat;	

		  
		  longitude = String(current_pos.lng) + "_"+ String(current_pos.lat);		// definesc parametrul q (folosit pt a trimite date catre php in request mai tarziu)	  
		  
		  console.log(longitude)
	  
		  var xmlhttp = new XMLHttpRequest();	//copy -paste
		  xmlhttp.onreadystatechange = function() { 	//copy -paste
		  if (this.readyState == 4 && this.status == 200) {	//copy -paste
			alert(xmlhttp.responseText);	//facem asta dupa ce avem un raspuns // aici bagi eventual ce vrei sa faca dupa ce au venit datele 
			//coordinates = JSON.parse("[" + xmlhttp.responseText + "]")
			records = xmlhttp.responseText.split('_');	
			coordinates[0] = JSON.parse("[" + records[0] + "]");
			coordinates[1] = JSON.parse("[" + records[1] + "]");
			nume[0] =  records[2].split(",");
			nume[1] =  records[3].split(",");
			
			clearOverlays()
			for (i = 0; i < coordinates[0].length; i++){
			console.log(i);
				//console.log(coordinates[0][i]);
				if (String(coordinates[0][i]) != latitude && coordinates[1][i] != String(current_pos.lng) ){
				var myLatLng = { lat: coordinates[0][i], lng: coordinates[1][i] };
				//console.log(myLatLng);	
			
					var marker = new google.maps.Marker({
						position: myLatLng,
						map
					});
					markersArray.push(marker);
					
					var content = "I am " + nume[0][i] + " " + nume[1][i];
					
					var infowindow = new google.maps.InfoWindow();

					google.maps.event.addListener(marker,'click', (function(marker,content,infowindow){ 
						return function() {
						infowindow.setContent(content);
						infowindow.open(map,marker);
					};
					})(marker,content,infowindow)); 
										
			}}
			

			
			
			//nume[1] =  JSON.parse("[" + records[3] + "]");
			//document.getElementById("txtHint").innerHTML = this.responseText;
			}
		};
		console.log(longitude)
		xmlhttp.open("GET","return.php?q="+longitude,true);	//copy -paste
		xmlhttp.send();  //copy -paste
		
        },
        () => {
          handleLocationError(true, infoWindow, map.getCenter());
        }
      );
	  
	
    } else {
      // Browser doesn't support Geolocation
      handleLocationError(false, infoWindow, map.getCenter());
    }
	
	}
		
		
		
		
		
	
	