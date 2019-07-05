import 'package:get_it/get_it.dart';
import 'package:jokes/core/services/api.dart';
import 'package:jokes/core/viewmodel/jokeviewModel.dart';

GetIt locator = GetIt();

void setupLocator() {
  locator.registerLazySingleton(() => API());
  locator.registerLazySingleton(() => JokeViewModel());
  //locator.registerLazySingleton(() => AllCoins());
  //locator.registerFactory(() => AddCoinModel());
}
