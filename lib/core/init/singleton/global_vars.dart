import 'package:dop_case/core/core_shelf.dart';
import 'package:dop_case/core/init/navigation/navigation_service.dart';

class GlobalVars {
  static var navigatorService = getIt<NavigationService>();
  static var context = getIt<NavigationService>().navigatorKey.currentContext!;
}
