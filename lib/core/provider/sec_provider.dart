// ignore_for_file: no_leading_underscores_for_local_identifiers

import 'package:dop_case/core/core_shelf.dart';
import 'package:flutter/cupertino.dart';

class SecProvider extends ChangeNotifier {
  late TimeModel locationTimeModel;
  void fillModel(TimeModel model) {
    locationTimeModel = model;
    notifyListeners();
  }

  Future<bool> fetchLocationTime(String path) async {
    var _res = await GlobalVars.apiService.fetchData('${GlobalVars.apiConstants.timezone}/$path');
    if (_res.data != null) {
      var _lmodel = await TimeModel().fromJson(_res.data);
      fillModel(_lmodel);
    }
    return true;
  }
}
