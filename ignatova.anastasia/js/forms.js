
const venueAddForm = async () => {
   let name = $("#venue-add-name").val();
   let type = $("#venue-add-type").val();
   let genre = $("#venue-add-genre").val();
   let phone = $("#venue-add-phone").val();
   let description = $("#venue-add-description").val();

   let r = await query({
      type:'insert_venue',
      params:[sessionStorage.userId,name,type,genre,phone,description]
   });

   if(r.error) throw(r.error);

   sessionStorage.venueId = r.id;
   history.go(-1);
   // $.mobile.navigate("#page-venue-profile")
}

// EDIT VENUE 

const venueEditForm = async () => {
   let name = $("#venue-edit-name").val();
   let type = $("#venue-edit-type").val();
   let genre = $("#venue-edit-genre").val();
   let phone = $("#venue-edit-phone").val();
   let description = $("#venue-edit-description").val();

   let r = await query({
      type:'update_venue',
      params:[name,type,genre,phone,description,sessionStorage.venueId]
   });

   if(r.error) throw(r.error);
   
	history.go(-1);
   // sessionStorage.venueId = r.id;
   
   // $.mobile.navigate("#page-venue-profile")
}

// EDIT USER

const userEditForm = async () => {
   let name = $("#user-edit-name").val();
   let username = $("#user-edit-username").val();
   let email = $("#user-edit-email").val();

   let r = await query({
      type:'update_user',
      params:[name,username,email,sessionStorage.userId]
   });

   if(r.error) throw(r.error);

   history.go(-2);
}

// PASSWORD

const userEditPasswordForm = async () => {
   let password = $("#user-password-initial").val();
   let confirm = $("#user-password-confirm").val();

   if(password!==confirm) throw ("Passwords don't match")

   let r = await query({
      type:'update_user_password',
      params:[password,sessionStorage.userId]
   });

   if(r.error) throw(r.error);

   history.go(-2);
}


// LOCATION

const locationAddForm = async () => {
   let venue = $("#location-venue-choice").val();
   let lat = $("#location-lat").val();
   let lng = $("#location-lng").val();
   let description = $("#location-description").val();

   let r = await query({
      type:'insert_location',
      params:[venue,lat,lng,description]
   });

   if(r.error) throw(r.error);

   history.go($("#location-navigateback").val());
}



const checkSearchForm = async (s) => {
   let venues = await query({
      type:'search_venues',
      params:[s,sessionStorage.userId]
   });

   if(venues.error) throw(venues.error);

   makeVenueListSet(venues.result);
}

const checkFilter = async (f,v) => {
   let venues = await query({
      type:'filter_venues',
      params:[f,v,sessionStorage.userId]
   });

   if(venues.error) throw(venues.error);

   makeVenueListSet(venues.result);
}






















