// ORIGINAL DATA

[
  '{{repeat(5, 7)}}',
  {
    _id: '{{objectId()}}',
    index: '{{index()}}',
    guid: '{{guid()}}',
    isActive: '{{bool()}}',
    balance: '{{floating(1000, 4000, 2, "$0,0.00")}}',
    picture: 'http://placehold.it/32x32',
    age: '{{integer(20, 40)}}',
    eyeColor: '{{random("blue", "brown", "green")}}',
    name: '{{firstName()}} {{surname()}}',
    gender: '{{gender()}}',
    company: '{{company().toUpperCase()}}',
    email: '{{email()}}',
    phone: '+1 {{phone()}}',
    address: '{{integer(100, 999)}} {{street()}}, {{city()}}, {{state()}}, {{integer(100, 10000)}}',
    about: '{{lorem(1, "paragraphs")}}',
    registered: '{{date(new Date(2014, 0, 1), new Date(), "YYYY-MM-ddThh:mm:ss Z")}}',
    latitude: '{{floating(-90.000001, 90)}}',
    longitude: '{{floating(-180.000001, 180)}}',
    tags: [
      '{{repeat(7)}}',
      '{{lorem(1, "words")}}'
    ],
    friends: [
      '{{repeat(3)}}',
      {
        id: '{{index()}}',
        name: '{{firstName()}} {{surname()}}'
      }
    ],
    greeting: function (tags) {
      return 'Hello, ' + this.name + '! You have ' + tags.integer(1, 10) + ' unread messages.';
    },
    favoriteFruit: function (tags) {
      var fruits = ['apple', 'banana', 'strawberry'];
      return fruits[tags.integer(0, fruits.length - 1)];
    }
  }
]





// USER DATA

[
  '{{repeat(10)}}',
  {
    id: '{{index(1)}}',
    name: '{{firstName()}} {{surname()}}',
    username: function() {
      return 'user' + this.id;
    },
    email: function() {
      return this.username + '@gmail.com';
  },
    password: 'md5(pass)',
    img: function(tags) {
      return 'https://via.placeholder.com/400/'+
        tags.integer(700,999) + '/fff/?text=' + this.username;
  },
    date_create: '{{date(new Date(2020, 0, 1), new Date(), "YYYY-MM-dd hh:mm:ss")}}'
  }
]



// VENUE DATA

[
  '{{repeat(50)}}',
  {
    id: '{{index(1)}}',
    user_id: '{{integer(1,10)}}',
    name: '{{company()}}',
    type: '{{random("club","concert","outdoor")}}',
    
  genre: function(tags) {
      var genres = {
        club:["house","techno","edm"],
        concert:["rock","alternative","pop","rap"],
        outdoor:["festival","camp-out","gathering"]
      };
      var chosen_type = genres[this.type];
      var chosen_index = tags.integer(0,chosen_type.length-1);
      return chosen_type[chosen_index];
    },
      
 
    phone: '+1 {{phone()}}',
    description: '{{lorem(1, "paragraphs")}}',
    
  
    img: function(tags) {
      return 'https://via.placeholder.com/400/'+
        tags.integer(700,999) + '/fff/?text=' + this.name;
  },
    date_create: '{{date(new Date(2020, 0, 1), new Date(), "YYYY-MM-dd hh:mm:ss")}}'
  }
  
]     
 



// LOCATION

[
  '{{repeat(250)}}',
  {
    id: '{{index(1)}}',
    venue_id: '{{integer(1,10)}}',
    lat: '{{floating(37.802892, 37.705722)}}',
    lng: '{{floating(-122.513669, -122.359659)}}',
    
    description: '{{lorem(3,"sentences")}}',
    
    photo: 'https://via.placeholder.com/400/',
    icon: 'https://via.placeholder.com/400/?text=ICON',
    date_create: '{{date(new Date(2020, 0, 1), new Date(), "YYYY-MM-dd hh:mm:ss")}}'
  }
]



// ORIGINAL DATA

[
  '{{repeat(5, 7)}}',
  {
    _id: '{{objectId()}}',
    index: '{{index()}}',
    guid: '{{guid()}}',
    isActive: '{{bool()}}',
    balance: '{{floating(1000, 4000, 2, "$0,0.00")}}',
    picture: 'http://placehold.it/32x32',
    age: '{{integer(20, 40)}}',
    eyeColor: '{{random("blue", "brown", "green")}}',
    name: '{{firstName()}} {{surname()}}',
    gender: '{{gender()}}',
    company: '{{company().toUpperCase()}}',
    email: '{{email()}}',
    phone: '+1 {{phone()}}',
    address: '{{integer(100, 999)}} {{street()}}, {{city()}}, {{state()}}, {{integer(100, 10000)}}',
    about: '{{lorem(1, "paragraphs")}}',
    registered: '{{date(new Date(2014, 0, 1), new Date(), "YYYY-MM-ddThh:mm:ss Z")}}',
    latitude: '{{floating(-90.000001, 90)}}',
    longitude: '{{floating(-180.000001, 180)}}',
    tags: [
      '{{repeat(7)}}',
      '{{lorem(1, "words")}}'
    ],
    friends: [
      '{{repeat(3)}}',
      {
        id: '{{index()}}',
        name: '{{firstName()}} {{surname()}}'
      }
    ],
    greeting: function (tags) {
      return 'Hello, ' + this.name + '! You have ' + tags.integer(1, 10) + ' unread messages.';
    },
    favoriteFruit: function (tags) {
      var fruits = ['apple', 'banana', 'strawberry'];
      return fruits[tags.integer(0, fruits.length - 1)];
    }
  }
]





























[
  {
    "_id": "6179fb658a9a36b8b25414b6",
    "index": 0,
    "guid": "5158df83-8b7e-413f-ae47-0e891fb75d13",
    "isActive": false,
    "balance": "$3,634.71",
    "picture": "http://placehold.it/32x32",
    "age": 29,
    "eyeColor": "brown",
    "name": "Phyllis Ryan",
    "gender": "female",
    "company": "ISBOL",
    "email": "phyllisryan@isbol.com",
    "phone": "+1 (869) 476-3324",
    "address": "923 Ocean Avenue, Emory, Guam, 483",
    "about": "Do enim id qui incididunt veniam ullamco et pariatur ut ea qui exercitation. Excepteur sit voluptate commodo occaecat occaecat laboris aute. Occaecat sit pariatur commodo exercitation voluptate ea consectetur exercitation qui eu. Reprehenderit reprehenderit laboris incididunt nostrud dolore ipsum enim adipisicing magna. Amet cupidatat magna reprehenderit dolore in ipsum incididunt.\r\n",
    "registered": "2017-11-26T04:46:22 +08:00",
    "latitude": 67.293516,
    "longitude": -9.688103,
    "tags": [
      "aliqua",
      "ipsum",
      "ipsum",
      "qui",
      "non",
      "non",
      "magna"
    ],
    "friends": [
      {
        "id": 0,
        "name": "Hensley Ellis"
      },
      {
        "id": 1,
        "name": "Mckee Andrews"
      },
      {
        "id": 2,
        "name": "Lucia Walter"
      }
    ],
    "greeting": "Hello, Phyllis Ryan! You have 8 unread messages.",
    "favoriteFruit": "banana"
  },
  {
    "_id": "6179fb650eec1cc7e5815e1a",
    "index": 1,
    "guid": "a84e6dfd-4ee3-49dc-9e8a-317e301d9c7d",
    "isActive": true,
    "balance": "$3,517.57",
    "picture": "http://placehold.it/32x32",
    "age": 25,
    "eyeColor": "green",
    "name": "Stein Curtis",
    "gender": "male",
    "company": "ACCIDENCY",
    "email": "steincurtis@accidency.com",
    "phone": "+1 (987) 575-2960",
    "address": "683 Montague Terrace, Kansas, District Of Columbia, 209",
    "about": "Qui nisi minim aliquip culpa culpa qui. Mollit ea irure veniam Lorem. Sit velit qui dolore nulla ad do quis nisi tempor. Culpa cillum in mollit sit Lorem ea ad Lorem deserunt cupidatat aliquip ad eu. Excepteur magna magna eu amet commodo. Excepteur sint occaecat irure incididunt aliqua velit do adipisicing. Proident elit ut ea officia excepteur irure aute tempor occaecat elit culpa.\r\n",
    "registered": "2021-06-02T04:09:49 +07:00",
    "latitude": -43.198444,
    "longitude": -137.221699,
    "tags": [
      "adipisicing",
      "duis",
      "enim",
      "aliqua",
      "sit",
      "velit",
      "qui"
    ],
    "friends": [
      {
        "id": 0,
        "name": "Lessie Sears"
      },
      {
        "id": 1,
        "name": "Elnora Branch"
      },
      {
        "id": 2,
        "name": "Coleen Douglas"
      }
    ],
    "greeting": "Hello, Stein Curtis! You have 9 unread messages.",
    "favoriteFruit": "apple"
  },
  {
    "_id": "6179fb653297621bc4d0a11b",
    "index": 2,
    "guid": "4fde76b1-2125-45ff-a3e6-123cd15916e9",
    "isActive": true,
    "balance": "$1,253.39",
    "picture": "http://placehold.it/32x32",
    "age": 32,
    "eyeColor": "brown",
    "name": "Joan Guy",
    "gender": "female",
    "company": "HOTCAKES",
    "email": "joanguy@hotcakes.com",
    "phone": "+1 (992) 564-3576",
    "address": "473 Opal Court, Fredericktown, Texas, 8978",
    "about": "Dolor cupidatat sunt nisi officia irure labore eiusmod. Tempor ut Lorem mollit aliqua do duis quis laboris dolor consequat. Commodo et ea quis aliqua pariatur ullamco. Laborum consequat sit id laboris ut reprehenderit nulla excepteur esse exercitation. Exercitation ex nostrud est aliquip labore eu aliqua.\r\n",
    "registered": "2016-08-18T06:47:57 +07:00",
    "latitude": 87.75022,
    "longitude": 64.15166,
    "tags": [
      "anim",
      "aliqua",
      "commodo",
      "incididunt",
      "eu",
      "Lorem",
      "qui"
    ],
    "friends": [
      {
        "id": 0,
        "name": "Rhonda Cobb"
      },
      {
        "id": 1,
        "name": "Erika Guzman"
      },
      {
        "id": 2,
        "name": "Owen Juarez"
      }
    ],
    "greeting": "Hello, Joan Guy! You have 2 unread messages.",
    "favoriteFruit": "banana"
  },
  {
    "_id": "6179fb65a25d10ee9a9f0651",
    "index": 3,
    "guid": "2dbfe38c-e269-4aa6-9204-5c37b3b6c0c1",
    "isActive": true,
    "balance": "$2,753.01",
    "picture": "http://placehold.it/32x32",
    "age": 37,
    "eyeColor": "green",
    "name": "Parrish Olson",
    "gender": "male",
    "company": "REMOLD",
    "email": "parrisholson@remold.com",
    "phone": "+1 (931) 508-3921",
    "address": "362 Dover Street, Dana, Arkansas, 3468",
    "about": "Consequat est irure irure officia. Veniam ad veniam ipsum dolor Lorem Lorem aute nulla ullamco ad officia culpa aute elit. Voluptate ipsum sit amet non consequat id minim cupidatat sunt cillum ut velit. Esse veniam Lorem reprehenderit duis. Nostrud velit culpa officia in commodo nisi ipsum incididunt commodo dolor commodo cupidatat Lorem exercitation.\r\n",
    "registered": "2019-06-13T11:10:00 +07:00",
    "latitude": -61.170483,
    "longitude": -110.560714,
    "tags": [
      "duis",
      "in",
      "cupidatat",
      "consectetur",
      "voluptate",
      "aute",
      "aliqua"
    ],
    "friends": [
      {
        "id": 0,
        "name": "Tamera Woodard"
      },
      {
        "id": 1,
        "name": "Gay Reyes"
      },
      {
        "id": 2,
        "name": "Blake Miles"
      }
    ],
    "greeting": "Hello, Parrish Olson! You have 6 unread messages.",
    "favoriteFruit": "banana"
  },
  {
    "_id": "6179fb6585b24c711cfa98ac",
    "index": 4,
    "guid": "98f6b9cd-0069-43d5-8179-5dc556560f76",
    "isActive": false,
    "balance": "$3,263.94",
    "picture": "http://placehold.it/32x32",
    "age": 28,
    "eyeColor": "green",
    "name": "Cornelia Paul",
    "gender": "female",
    "company": "GENESYNK",
    "email": "corneliapaul@genesynk.com",
    "phone": "+1 (812) 566-3953",
    "address": "143 Crystal Street, Ola, Delaware, 6169",
    "about": "Ea esse ut veniam laborum. Et enim ex officia consectetur do commodo dolor. Nulla Lorem tempor voluptate culpa elit elit enim Lorem consequat enim excepteur deserunt cupidatat. Fugiat velit reprehenderit anim pariatur amet irure minim do esse exercitation et sint ad occaecat. Sint ea nisi esse labore labore ea aliqua voluptate duis laborum elit. Eiusmod tempor ut eiusmod sit nisi ut ut eu mollit sit deserunt voluptate aliquip. Deserunt velit duis nulla qui ex dolor nisi quis do magna reprehenderit aliquip qui.\r\n",
    "registered": "2020-07-06T09:26:35 +07:00",
    "latitude": -29.15346,
    "longitude": 104.670365,
    "tags": [
      "est",
      "enim",
      "Lorem",
      "ea",
      "anim",
      "veniam",
      "ex"
    ],
    "friends": [
      {
        "id": 0,
        "name": "Patrica Stuart"
      },
      {
        "id": 1,
        "name": "Olive Lee"
      },
      {
        "id": 2,
        "name": "Dotson Fields"
      }
    ],
    "greeting": "Hello, Cornelia Paul! You have 7 unread messages.",
    "favoriteFruit": "banana"
  }
]