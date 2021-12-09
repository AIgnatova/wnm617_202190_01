const query = (options) => {
   // Fetch is a promise
   return fetch('data/api.php',{
      method:'POST',
      body:JSON.stringify(options),
      headers:{"Content-Type":"application/json"}
   }).then(d=>d.json());
}

// Curried Function
const templater = f => a =>
   (Array.isArray(a)?a:[a])
   .reduce((r,o,i,a)=>r+f(o,i,a),'');

// explanation of the above
// function templater(func) {
//    return function(a) {
//       return (Array.isArray(a)?a:[a])
//          .reduce(function(reducer,obj,ind,arr){
//             return reducer + func(obj,ind,arr);
//          }
//       )
//    }
// }


// recursion (function that calls itself... good for seeing/understanding promises)
const checkData = (exterior_check) => new Promise((resolve,reject)=>{
   let timeout = 0;
   const interior_check = () => {
      timeout++; if(timeout>100) return reject();
      return exterior_check() ? resolve() : setTimeout(interior_check,10);
   }
   interior_check();
});