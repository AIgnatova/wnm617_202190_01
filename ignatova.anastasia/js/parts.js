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
         <div class="venue-list-item-phone"><strong>Phone Number</strong> <br> ${o.phone}</div>
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
    <h2>${o.username}</h2>
    <h3>&commat;${o.name}</h3>
   
</div>
`;

const makeVenueProfile = (o) => `
<div>
   <h2>${o.name}</h2>
   <div><strong>Type of venue</strong> ${o.type}</div>
   <div><strong>Genre</strong> ${o.genre}</div>
   <div><strong>Phone Number</strong> ${o.phone}</div>
   <div><strong>Description</strong> <p>${o.description}</p></div>
</div>
`;








// 11.17 video 1 hour mark, venue_id related to recent venues in api.php
const makeVenuePopup = o =>`
	<div class="display-flex venue-jump data-id="${o.venue_id}">
	<div class="flex-none  venue-popup-image">
         <img src="${o.img}" alt="Venue image">
      </div>
      <div class="flex-stretch venue-popup-body padding-md">
         <div class="venue-popup-name"> ${o.name}</div>
         <div class="venue-popup-type"><strong>Venue type</strong> ${o.type}</div>
         <div class="venue-popup-genre"><strong>Genre</strong> ${o.genre}</div>
         <div class="venue-list-item-phone"><strong>Phone Number</strong> ${o.phone}</div>
      </div>
	</div>
`;

const FormControlInput = ({namespace,name,displayname,type,placeholder,value}) => `
<div class="form-control">
   <label for="${namespace}-${name}" class="form-label">${displayname}</label>
   <input type="${type}" id="${namespace}-${name}" class="form-input" data-role="none" placeholder="${placeholder}" value="${value}">
</div>
`;

const FormControlTextarea = ({namespace,name,displayname,placeholder,value}) => `
<div class="form-control">
   <label for="${namespace}-${name}" class="form-label">${displayname}</label>
   <textarea id="${namespace}-${name}" class="form-input" data-role="none" placeholder="${placeholder}">${value}</textarea>
</div>
`;

const makeVenueFormInputs = (o,namespace) => `
${FormControlInput({
   namespace:namespace,
   name:"name",
   displayname:"Name",
   type:"text",
   placeholder:"Add venue name",
   value:o.name
})}

${FormControlInput({
   namespace:namespace,
   name:"type",
   displayname:"Type",
   type:"text",
   placeholder:"Add venue type",
   value:o.type
})}

${FormControlInput({
   namespace:namespace,
   name:"genre",
   displayname:"Genre",
   type:"text",
   placeholder:"Add music genre",
   value:o.genre
})}

${FormControlInput({
   namespace:namespace,
   name:"phone",
   displayname:"Phone Number",
   type:"number",
   placeholder:"Add a phone number",
   value:o.phone
})}

${FormControlTextarea({
   namespace:namespace,
   name:"description",
   displayname:"Description",
   type:"text",
   placeholder:"Add venue description",
   value:o.description
})}
`
// USER 

const makeUserFormInputs = (o,namespace) => `
${FormControlInput({
   namespace:namespace,
   name:"username",
   displayname:"Username",
   type:"text",
   placeholder:"Update your username",
   value:o.name
})}

${FormControlInput({
   namespace:namespace,
   name:"name",
   displayname:"Name",
   type:"text",
   placeholder:"Update your name",
   value:o.username
})}



${FormControlInput({
   namespace:namespace,
   name:"email",
   displayname:"Email",
   type:"email",
   placeholder:"Update email address",
   value:o.email
})}

${FormControlInput({
   namespace:namespace,
   name:"phonenumber",
   displayname:"Phone number",
   type:"text",
   placeholder:"Add phone number",
   value:o.phonenumber
})}
`