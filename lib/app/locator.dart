import 'package:get_it/get_it.dart';
import 'package:swivt/src/data/api/requests.dart';

final locator = GetIt.instance;

void setupLocator() {
  locator.registerLazySingleton(() => Request());
}
