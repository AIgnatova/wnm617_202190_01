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

       switch(ui.toPage[0].id) {
         case "page-recent": RecentPage(); break;
         case "page-list": ListPage(); break;
         case "page-user-profile": UserProfilePage(); break;
         case "page-venue-profile": VenueProfilePage(); break;
      }
       // console.dir(ui.toPage[0])

      // Page Routing
      // switch(ui.toPage[0].id) {
      //    case "page-recent": RecentPage(); break;
      //    case "page-list": ListPage(); break;
      //    case "page-user-profile": UserProfilePage(); break;
      //    case "page-venue-profile": VenueProfilePage(); break;
      // }
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

// ANCHOR CLICKS
   .on("click",".js-logout",function(e) {
      e.preventDefault();
      sessionStorage.removeItem("userId");
      checkUserId();
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
      console.log(target)
      $(target).addClass("active").siblings().removeClass('active');
   });


 $("[data-template]").each(function(){
      let target = $(this).data("template");
      $(this).html($(target).html());
   })






});
