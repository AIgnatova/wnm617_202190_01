// THESE are pages that are in app.js file under *Event Delegation

// LIST PAGE
const ListPage = async() => {
	// console.log("shooosh");

	// Destructuring
	let {result,error} = await query({
		type:'venues_by_user_id',
		params:[sessionStorage.userId]
   	});

	if (error) {
		console.log(error);
		return;
	}

	console.log(result);

	$("#page-list .venue-list").html(makeVenueList(result));
}


// MAP PAGE
const RecentPage = async() => {
	let {result,error} = await query({type:'recent_venue_locations',params:[sessionStorage.userId]});
	
	if (error) {
		console.log(error);
		return;
}

	console.log(result)

	let mapEl = makeMap("#page-recent .map");
	makeMarkers(mapEl,result);

}



// USER PROFILE
const UserProfilePage = async() => {
	let {result,error} = await query({type:'user_by_id',params:[sessionStorage.userId]});

	if (error) {
		console.log(error);
		return;
	}
	let [user] = result;
	$("#page-user-profile [data-role='main']").html(makeUserProfile(user));
}



// VENUE PROFILE
const VenueProfilePage = async() => {
	let {result,error} = await query({type:'venue_by_id',params:[sessionStorage.venueId]});

	if (error) {
		console.log(error);
		return;
	}

	makeMap("#page-venue-profile .map");

	let [venue] = result;
	$(".venue-profile-top img").attr("src", venue.img);

}




























