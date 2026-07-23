// Testing api
var _headers = ds_map_create();
ds_map_add(_headers, "Authorization", "Bearer sb_publishable_saHrD5-zGeD8M1kBu5TwEQ_mmjhFCs4");
ds_map_add(_headers, "apikey", "sb_publishable_saHrD5-zGeD8M1kBu5TwEQ_mmjhFCs4");

var _request_id = http_request("https://fauxclomeorkixhebrux.supabase.co/rest/v1/leaderboard?select=*", 
			 "GET", 
			 _headers, 
			 "")

ds_map_destroy(_headers);

// Store the id so you can match the response later
get_request_id = _request_id;