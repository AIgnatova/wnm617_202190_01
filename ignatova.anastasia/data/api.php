<?php

function makeConn() {
	include "auth.php";
	try {
		$conn = new PDO(...Auth());
		$conn->setAttribute(PDO::ATTR_ERRMODE,PDO::ERRMODE_EXCEPTION);
		return $conn;
  } catch(PDOException $e) {
		die('{"error":"'.$e->getMessage().'"}');
}
}

/* $r = PDO result */
function fetchAll($r) {
	$a = [];
	while($row = $r->fetch(\PDO::FETCH_OBJ)) $a[] = $row;
	return $a;
}

/*
$c = connections
$ps = prepared statement
$p = parameters
*/
function makeQuery($c,$ps,$p,$makeResults=true) {
	try {
		if(count($p)) {
			$stmt = $c->prepare($ps);
			$stmt->execute($p);
		} else {
			$stmt = $c->query($ps);
		}

		$r = $makeResults ? fetchAll($stmt) : [];

		return [
			// "statement"=>$ps,
			// "params"=>$p,
			"result"=>$r
		];
	} catch(PDOException $e) {
		return ["error"=>"Query Failed: ".$e->getMessage()];
	}
}


function makeStatement($data) {
try{
	$c = makeConn();
	$t = @$data->type;
	$p = @$data->params; 

	switch($t) {
		// case "users_all":
		// 	return makeQuery($c, "SELECT * FROM `track_users`",$p);
		// case "venues_all":
		// 	return makeQuery($c, "SELECT * FROM `track_venues`",$p);
		// case "locations_all":
		// 	return makeQuery($c, "SELECT * FROM `track_locations`",$p);


		case "user_by_id":
			return makeQuery($c, "SELECT id,name,username,email,img,date_create FROM `track_users` WHERE `id`=?",$p);
		case "venue_by_id":
			return makeQuery($c, "SELECT * FROM `track_venues` WHERE `id`=?",$p);
		case "location_by_id":
			return makeQuery($c, "SELECT * FROM `track_locations` WHERE `id`=?",$p);

		
		case "venues_by_user_id":
			return makeQuery($c, "SELECT * FROM `track_venues` WHERE `user_id`=?",$p);
		case "locations_by_venue_id":
			return makeQuery($c, "SELECT * FROM `track_locations` WHERE `venue_id`=?",$p);


		case "check_signin":
			return makeQuery($c, "SELECT id FROM `track_users` WHERE `username`=? AND `password`=md5(?)",$p);

case "recent_venue_locations":
            return makeQuery($c,"SELECT *
               FROM `track_venues` a
               JOIN (
                  SELECT lg.*
                  FROM `track_locations` lg
                  WHERE lg.id = (
                     SELECT lt.id
                     FROM `track_locations` lt
                     WHERE lt.venue_id = lg.venue_id
                     ORDER BY lt.date_create DESC
                     LIMIT 1
                  )
               ) l
               ON a.id = l.venue_id
               WHERE a.user_id = ?
               ORDER BY l.venue_id, l.date_create DESC
               ",$p);

         default: return ["error"=>"No Matched Type"];
      }

   } catch(Exception $e) {
      return ["error"=>"Bad Data"];
   }
}




// 			pass with Javascript
// 			case "recent_venue_locations":
// 			return makeQuery($c,"SELECT * 
// 				FROM `track_venues` a
// 				JOIN `track_locations` l
// 				ON a.id = l.venue_id
// 				WHERE a.user_id = ?
// 				",$p);

//          default: return ["error"=>"No Matched Type"];
//       }


$data = json_decode(file_get_contents("php://input"));

die(
	json_encode(
		makeStatement($data),
		JSON_NUMERIC_CHECK
	)
);