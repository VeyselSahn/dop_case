import 'package:dop_case/component/component_shelf.dart';
import 'package:dop_case/core/core_shelf.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

class Locator {
  static final instance = Locator();
  void setupLocator() {
    getIt.registerLazySingleton(() => NavigationService());
    getIt.registerLazySingleton(
      () => ApiService(),
    );

    //constant
    getIt.registerSingleton(ApiConstant());
  }
}
