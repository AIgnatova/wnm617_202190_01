// DOCUMENT READY
$(()=>{

   // query({
   //    type:'user_by_id',
   //    params:[3]
   // }).then(d=>{
   //    console.log(d)
   // })


	checkUserId();

	// Event Delegation
	$(document) 

     .on("pagecontainerbeforeshow",function(event, ui){
      // page routing
      // when we're navigating to this page - run this function
      
       switch(ui.toPage[0].id) {
         case "page-recent": RecentPage(); break;
         case "page-list": ListPage(); break;
         case "page-user-profile": UserProfilePage(); break;
         case "page-user-edit": UserEditPage(); break;
         case "page-venue-profile": VenueProfilePage(); break;
         case "page-venue-edit": VenueEditPage(); break;
         case "page-venue-add": VenueAddPage(); break;
         case "page-location-choose-venue": LocationChooseVenuePage(); break;
         case "page-location-set-location": LocationSetLocationPage(); break;

         
      }
   })



	// FORM SUBMITS
	.on("submit", "#signin-form",function(e) {
		e.preventDefault();
		checkSigninForm();
	})

	.on("submit", "#list-add-form",function(e) {
		e.preventDefault();
		// checkSigninForm();
	})


.on("submit", "#venue-add-form",function(e) {
      e.preventDefault();
      venueAddForm();
      // console.log("sheesh");
   })

.on("submit", "#venue-edit-form",function(e) {
      e.preventDefault();
      venueEditForm();
      // console.log("sheesh");
   })





// FORM ANCHOR CLICKS
  .on("click",".js-submituseredit",function(e) {
      e.preventDefault();
      userEditForm();
   })
   .on("click",".js-submituserpassword",function(e) {
      e.preventDefault();
      userEditPasswordForm();
   })

    .on("click",".js-submitlocationform",function(e){
      e.preventDefault();
      locationAddForm();
   })





   // ON CHANGE

   .on("change","#location-venue-choice-select",function(e){
      $("#location-venue-choice").val(this.value)
   })




// ANCHOR CLICKS
   .on("click",".js-logout",function(e) {
      e.preventDefault();
      sessionStorage.removeItem("userId");
      checkUserId();
   })


// throw to show custom error

   .on("click",".venue-jump",function(e) {
      if(!$(this).data("id")) throw("No ID on element");
      sessionStorage.venueId = $(this).data("id");
      $.mobile.navigate("#page-venue-profile");
   })

  .on("click","[data-setnavigateback]",function(e){
      $("#location-navigateback").val($(this).data("setnavigateback"))
   })
   .on("click",".js-navigate-back",function(e){
      window.history.go(+$("#location-navigateback").val());
   })

    .on("click",".js-choosevenue",function(e){
      $("#location-venue-choice").val(sessionStorage.venueId);
   })










    .on("click",".venue-profile-middle li",function(e){
      let id = $(this).index();
      $(this).addClass("active")
         .siblings().removeClass("active");
      $(this).closest(".venue-profile-middle").next().children().eq(id).addClass("active")
         .siblings().removeClass("active");
   })





.on("click","[data-activate]",function(e){
      let target = $(this).data("activate");
      $(target).addClass("active");
   })
   .on("click","[data-deactivate]",function(e){
      let target = $(this).data("deactivate");
      $(target).removeClass("active");
   })
   .on("click","[data-toggle]",function(e){
      let target = $(this).data("toggle");
      $(target).toggleClass("active");
   })
   .on("click","[data-activateone]",function(e){
      let target = $(this).data("activateone");
      $(target).addClass("active").siblings().removeClass('active');
   })
   ;



   $("[data-template]").each(function(){
      let target = $(this).data("template");
      $(this).html($(target).html());
   })

   $({
      "#page-recent":".nav-icon-set li:nth-child(1)",
      "#page-list":".nav-icon-set li:nth-child(2)",
      "#page-user-profile":".nav-icon-set li:nth-child(3)",
   }[location.hash]).addClass("active");
});
