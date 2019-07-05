import 'package:jokes/core/enums/viewstates.dart';
import 'package:jokes/core/services/api.dart';
import 'package:jokes/core/viewmodel/base_model.dart';
import '../../locator.dart';

class JokeViewModel extends BaseModel {
  API _api = locator<API>();
  String Joke;
  Future fetchJoke() async {
    setState(ViewState.Busy);
    Joke = await _api.fetch_dadjoke();
    setState(ViewState.Idle);
  }
}