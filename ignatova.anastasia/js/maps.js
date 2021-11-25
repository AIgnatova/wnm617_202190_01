const  makeMap = (target, center={ lat:37.768088, lng:-122.441741 }) => {
	let mapEl = $(target);

	if(!mapEl.data("map")) {
		mapEl.data("map",
			new google.maps.Map(mapEl[0], {
    			center:center,
    			zoom: 12,
    			disableDefaultUI:true
	
  			})
  		);
  	}
	return mapEl;
} 

const makeMarkers = (mapEl,mapLocs) => {
 	let map = mapEl.data("map");


 	mapLocs.forEach(o=>{
 		new google.maps.Marker({
 			position: o,
 			map,
 		});

 	})


}








 	// new google.maps.Marker({
  //   position: { lat:37.768088, lng:-122.441741 },
  //   map,
  // });