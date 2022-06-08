import 'dart:convert';
import 'package:http/http.dart';
import 'data/event_model.dart';

class HttpService {
  //TODO: needs to be reconfigured
  final String postsURL = "https://jsonplaceholder.typicode.com/posts";

  Future<List<Event>> getAPIData() async {
    Response res = await get(Uri.parse(postsURL));

    if (res.statusCode == 200) {
      List<dynamic> body = jsonDecode(res.body);

      List<Event> events = body
          .map(
            (dynamic item) => Event.fromJson(item),
          )
          .toList();

      return events;
    } else {
      throw "Unable to retrieve events.";
    }
  }
}
