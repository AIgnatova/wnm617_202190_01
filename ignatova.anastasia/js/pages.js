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

	console.log(result,error);

	$("#page-list .venue-list").html(makeVenueList(result));
}

// MAP PAGE
const RecentPage = async() => {
	console.log("sheesh");
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
	console.log("eeek");
}