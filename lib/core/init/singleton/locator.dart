import 'package:dop_case/core/init/navigation/navigation_service.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

class Locator {
  static final instance = Locator();
  void setupLocator() {
    getIt.registerLazySingleton(() => NavigationService());
  }
}
