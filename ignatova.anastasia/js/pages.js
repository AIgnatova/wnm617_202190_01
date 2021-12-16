// THESE are pages that are in app.js file under *Event Delegation

const resultQuery = async (options) => {
	// Destructuring
	let {result,error} = await query(options);
	if (error) {
		throw (error);
		return;
	}
	return result;
}

// LIST PAGE
const ListPage = async() => {
	let venues = await resultQuery({
		type:'venues_by_user_id',
		params:[sessionStorage.userId]
   	});

	makeVenueListSet(venues);
}

// MAP PAGE
const RecentPage = async() => {
	let result = await resultQuery({
		type:'recent_venue_locations',
		params:[sessionStorage.userId]
	});
	
	let venues = result.reduce((r,o)=>{
		o.icon = o.img;
		if(o.lat && o.lng) r.push(o);
		return r;
	},[]);

// looping through an array, to get to one new item (could be an array)

	let mapEl = await makeMap("#page-recent .map");
	makeMarkers(mapEl,venues);

let {infoWindow,map,markers} = mapEl.data();
	markers.forEach((o,i)=>{
      o.addListener("click",function(){

         /* InfoWindow Example */
         infoWindow.open(map,o);
         infoWindow.setContent(makeVenuePopup(venues[i]))
      
// Activate Example
         // $("#recent-drawer")
         // .addClass("active")
         // .find(".modal-body")
         // .html(makeVenuePopup(venues[i]))
    /* Simple Example */
         // sessionStorage.venueId = venues[i].venue_id;
         // $.mobile.navigate("#page-venue-profile")

     })
  });
 }


// USER PROFILE
const UserProfilePage = async() => {
	let result = await resultQuery({
		type:'user_by_id',
		params:[sessionStorage.userId]
	});

	let [user] = result;
	$("#page-user-profile [data-role='main']").html(makeUserProfile(user));
}




const UserEditPage = async() => {
	let user_result = await resultQuery({
		type:'user_by_id',
		params:[sessionStorage.userId]
	});

	let [user] = user_result;
	
$("#user-edit-form .fill-parent").html(
      makeUserFormInputs(user,"user-edit")
   );
} 




// VENUE PROFILE
const VenueProfilePage = async() => {

let venue_result = await resultQuery({
      type:'venue_by_id',
      params:[sessionStorage.venueId]
   });

   let [venue] = venue_result;
   $(".venue-profile-topimg").attr("src",venue.img);
   $(".venue-profile-bottom .description").html(makeVenueProfile(venue));

   let locations_result = await resultQuery({
      type:'locations_by_venue_id',
      params:[sessionStorage.venueId]
   });
   let mapEl = await makeMap("#page-venue-profile .map");
   makeMarkers(mapEl,locations_result);
}


const VenueEditPage = async() => {
	let venue_result = await resultQuery({
		type:'venue_by_id',
		params:[sessionStorage.venueId]
	});

	let [venue] = venue_result;
	
$("#venue-edit-form .fill-parent").html(
      makeVenueFormInputs(venue,"venue-edit")
   );
} 

const VenueAddPage = async() => {
	$("#venue-add-form .fill-parent").html(
      makeVenueFormInputs({
         name:'',
         type:'',
         genre:'',
         phone:'',
         description:''
      },"venue-add")
   );
}

const LocationSetLocationPage = async() => {
   let mapEl = await makeMap("#page-location-set-location .map");
   makeMarkers(mapEl,[]);

   mapEl.data("map").addListener("click",function(e){
      $("#location-lat").val(e.latLng.lat())
      $("#location-lng").val(e.latLng.lng())
      makeMarkers(mapEl,[e.latLng]);
   })
}

const LocationChooseVenuePage = async() => {
   let result = await resultQuery({
      type:'venues_by_user_id',
      params:[sessionStorage.userId]
   });

console.log(result)

   $(".location-venue-choice-select").html(
      makeVenueChoiceSelect({
         venues:result,
         name:'location-venue-choice-select'
      })
   );
   $("#location-venue-choice").val(result[0].id);
}





















