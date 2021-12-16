const  makeMap = async (target="", center={ lat:37.768088, lng:-122.441741 }) => {
	await checkData(()=>window.google);
	let mapEl = $(target);

	if(!mapEl.data("map")) {
		mapEl.data({
			"map" : new google.maps.Map(mapEl[0], {
    			center:center,
    			zoom: 13,
    			disableDefaultUI:true,
    			styles:mapStyles
	
  			}),
  			"infoWindow": new google.maps.InfoWindow({content:''})
  		});
  	}
	return mapEl;
} 

const makeMarkers = (mapEl,mapLocs) => {
 	// let map = mapEl.data("map");
 	// let markers = mapEl.data("markers");
 	// desctructured first line (below);

	let {map, markers} = mapEl.data(); 
 	if(markers) markers.forEach(o=>o.setMap(null));

 	markers = [];

 	mapLocs.forEach(o=>{
 		let m = new google.maps.Marker({
 			position: o,
 			map,
 			icon: {
 				url:o.icon,
 				scaledSize: {
 					width:40,
 					height:40
	 				}
 			}
 		});
 		markers.push(m);
 	});

 	mapEl.data("markers",markers);
 	setMapBounds(mapEl, mapLocs);

}

const setMapBounds = (mapEl,mapLocs) => {
   let {map,markers} = mapEl.data();
   let zoom = 12;

   if(mapLocs.length==0) {
      if(window.location.protocol!=='https:') return;
      else {
         navigator.geolocation.getCurrentPosition(p=>{
            let pos = {
               lat:p.coords.latitude,
               lng:p.coords.longitude
            };
            map.setCenter(pos);
            map.setZoom(zoom);
         },(...args)=>{
            console.log(args)
         },{
            enableHighAccuracy:false,
            timeout:5000,
            maximumAge:0
         });
      }
   } else if(mapLocs.length==1) {
      map.setCenter(mapLocs[0]);
      map.setZoom(zoom);
   } else {
      let bounds = new google.maps.LatLngBounds(null);
      mapLocs.forEach(o=>{
         bounds.extend(o);
      });
      map.fitBounds(bounds);
   }
}

// 	let bounds = new google.maps.LatLngBounds(null);
// 	mapLocs.forEach(o=>{
// 		bounds.extend(o);
// 		map.fitBounds(bounds);
// 	})
// }




// link to map styles source https://snazzymaps.com/style/287213/%E5%AF%A6%E7%BF%92

const mapStyles = [
    {
        "featureType": "administrative",
        "elementType": "labels.text.fill",
        "stylers": [
            {
                "color": "#444444"
            },
            {
                "visibility": "off"
            }
        ]
    },
    {
        "featureType": "landscape",
        "elementType": "all",
        "stylers": [
            {
                "color": "#f2f2f2"
            }
        ]
    },
    {
        "featureType": "poi",
        "elementType": "all",
        "stylers": [
            {
                "visibility": "off"
            }
        ]
    },
    {
        "featureType": "poi.park",
        "elementType": "geometry.fill",
        "stylers": [
            {
                "visibility": "on"
            },
            {
                "color": "#85dba1"
            },
            {
                "lightness": "11"
            },
            {
                "weight": "3.45"
            }
        ]
    },
    {
        "featureType": "poi.school",
        "elementType": "geometry.fill",
        "stylers": [
            {
                "visibility": "on"
            },
            {
                "color": "#e2c4e4"
            },
            {
                "saturation": "5"
            },
            {
                "lightness": "34"
            }
        ]
    },
    {
        "featureType": "road",
        "elementType": "all",
        "stylers": [
            {
                "saturation": -100
            },
            {
                "lightness": 45
            }
        ]
    },
    {
        "featureType": "road.highway",
        "elementType": "all",
        "stylers": [
            {
                "visibility": "simplified"
            }
        ]
    },
    {
        "featureType": "road.highway",
        "elementType": "geometry.fill",
        "stylers": [
            {
                "visibility": "on"
            },
            {
                "color": "#e0d2b9"
            }
        ]
    },
    {
        "featureType": "road.arterial",
        "elementType": "labels.icon",
        "stylers": [
            {
                "visibility": "off"
            }
        ]
    },
    {
        "featureType": "transit",
        "elementType": "all",
        "stylers": [
            {
                "visibility": "off"
            }
        ]
    },
    {
        "featureType": "transit",
        "elementType": "geometry.fill",
        "stylers": [
            {
                "visibility": "on"
            },
            {
                "color": "#e88989"
            }
        ]
    },
    {
        "featureType": "transit.line",
        "elementType": "geometry.fill",
        "stylers": [
            {
                "visibility": "on"
            },
            {
                "color": "#9bbae2"
            },
            {
                "lightness": "2"
            },
            {
                "gamma": "0.67"
            },
            {
                "weight": "2.09"
            }
        ]
    },
    {
        "featureType": "transit.station",
        "elementType": "geometry.fill",
        "stylers": [
            {
                "visibility": "off"
            },
            {
                "color": "#963636"
            }
        ]
    },
    {
        "featureType": "transit.station.rail",
        "elementType": "geometry.fill",
        "stylers": [
            {
                "visibility": "on"
            },
            {
                "color": "#c32525"
            }
        ]
    },
    {
        "featureType": "water",
        "elementType": "all",
        "stylers": [
            {
                "color": "#9bbed5"
            },
            {
                "visibility": "on"
            }
        ]
    }
]


















 	// new google.maps.Marker({
  //   position: { lat:37.768088, lng:-122.441741 },
  //   map,
  // });