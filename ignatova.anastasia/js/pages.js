


const ListPage = async() => {
	// console.log("shooosh");
	let d = await query({type:'venues_by_user_id',params:[sessionsStorage.userId]});

	console.log(d);

	$("#page-list .venue-list").html(makeVenueList(d.result));
}
const RecentPage = async() => {
	console.log("sheesh");
}
const UserProfilePage = async() => {
	console.log("ooof");
}
const VenueProfilePage = async() => {
	console.log("eeek");
}