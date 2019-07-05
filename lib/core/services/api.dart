import 'package:http/http.dart';

class API{
  Future<String> fetch_dadjoke() async {
    String url = "https://icanhazdadjoke.com/";

    var response = await get(url);
    return response.body;
  }
}