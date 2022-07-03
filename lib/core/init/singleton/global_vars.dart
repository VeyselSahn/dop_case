import 'package:dop_case/component/component_shelf.dart';
import 'package:dop_case/core/core_shelf.dart';

class GlobalVars {
  static var navigatorService = getIt<NavigationService>();
  static var context = getIt<NavigationService>().navigatorKey.currentState!.context;
  static var apiService = getIt<ApiService>();

  //const
  static var apiConstants = getIt<ApiConstant>();
}
