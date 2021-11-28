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
	let result = await resultQuery({
		type:'venues_by_user_id',
		params:[sessionStorage.userId]
   	});

	// console.log(result);

	$("#page-list .venue-list").html(makeVenueList(result));
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
		// console.log(result)

	let mapEl = await makeMap("#page-recent .map");
	makeMarkers(mapEl,venues);

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



// VENUE PROFILE
const VenueProfilePage = async() => {
	let venue_result = await resultQuery({
		type:'venue_by_id',
		params:[sessionStorage.venueId]
	});

	let [venue] = venue_result;
	$(".venue-profile-top img").attr("src", venue.img);

	let locations_result = await resultQuery({
		type:'locations_by_venue_id',
		params:[sessionStorage.venueId]
	});
	let mapEl = await makeMap("#page-venue-profile .map");
	makeMarkers(mapEl,locations_result);

}




























