// Async - HTTP event

if (async_load[? "id"] == get_request_id) {
    var _status = async_load[? "status"];
    
    if (_status == 0) {
        // Request finished
        var _http_status = async_load[? "http_status"];
        var _result_str = async_load[? "result"];
        
        if (_http_status == 200) {
            var _scores = json_parse(_result_str); // array of structs
            show_debug_message(_scores);
        } else {
            show_debug_message("Error: " + _result_str);
        }
    }
}