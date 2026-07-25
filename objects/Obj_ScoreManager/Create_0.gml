topScores = []

get_request_id = 0
get_url = "https://fauxclomeorkixhebrux.supabase.co/rest/v1/leaderboard?select=*&order=playerScore.desc&limit=10"

insert_score_request = 0
post_url = "https://fauxclomeorkixhebrux.supabase.co/rest/v1/leaderboard?select=*"

getScores = function() {
	var _headers = ds_map_create();
	ds_map_add(_headers, "Authorization", "Bearer sb_publishable_saHrD5-zGeD8M1kBu5TwEQ_mmjhFCs4");
	ds_map_add(_headers, "apikey", "sb_publishable_saHrD5-zGeD8M1kBu5TwEQ_mmjhFCs4");

	var _request_id = http_request(get_url, "GET", _headers, "")

	ds_map_destroy(_headers);

	// Store the id so you can match the response later
	get_request_id = _request_id;
}
submitScore = function(pName, pScore) {
	var _headers = ds_map_create();
	ds_map_add(_headers, "Authorization", "Bearer sb_publishable_saHrD5-zGeD8M1kBu5TwEQ_mmjhFCs4");
	ds_map_add(_headers, "apikey", "sb_publishable_saHrD5-zGeD8M1kBu5TwEQ_mmjhFCs4");
	ds_map_add(_headers, "Content-Type", "application/json");
	ds_map_add(_headers, "Prefer", "return=representation");
	
	
	var _body = { playerName: pName, playerScore: $"{pScore}" };
	var _body_json = json_stringify(_body);

	var _request_id = http_request(post_url, "POST", _headers, _body_json)

	ds_map_destroy(_headers);

	insert_score_request = _request_id;
}
getScores()


playerScore = 0
addPlayerScore = function(add) {
	playerScore += add
}
