// THESE are used in pages.js file

// Repeat string template over several data points
// template loops over and shows a lot of data

const makeVenueList = templater((o)=>`
 <div class="venue-list-item"> 
 <div class="display-flex venue-jump" data-id="${o.id}">
      <div class="flex-none venue-list-item-image">
         <img src="${o.img}" alt="Venue image">
      </div>
      <div class="flex-stretch venue-list-item-body padding-md">
         <div class="venue-list-item-name"> ${o.name}</div>
         <div class="venue-list-item-type"><strong>Venue type</strong> ${o.type}</div>
         <div class="venue-list-item-genre"><strong>Genre</strong> ${o.genre}</div>
         <div class="venue-list-item-hours"><strong>Hours</strong> Hours</div>
      </div>
   </div>   
   </div>
	`);






// Template made over one data point
// has one object, shows just one object

const makeUserProfile = (o) => `
<div class="user-profile-image">
   <img src="${o.img}" alt="">
</div>
<div>
   <h2>${o.name}</h2>
   <h3>&commat;${o.username}</h3>
   <div><a href="#page-user-settings">Settings</a></div>
</div>`;




// const makeVenueList = templater((o)=>`
// <div class="venuelist-item">
// ${o.name}
// </div>
// 	`);
