$(()=>{
	$(".accordion dt").on("click", function(e){
		// console.log("honk")
		// method chaining

		$(this).next().slideDown()
		.siblings("dd").slideUp();


		// $(this).next().show();
		// $(this).next().toggle();
		// $(this).next().slideToggle();
		// $(this).next().slideDown().siblings("dd").slideUp();
	


	});
});


// lexical this - object that is calling the action