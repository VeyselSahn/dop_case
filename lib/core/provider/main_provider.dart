// ignore_for_file: no_leading_underscores_for_local_identifiers

import 'dart:developer';

import 'package:dop_case/core/init/singleton/global_vars.dart';
import 'package:dop_case/core/model/timezone_tile_model.dart';
import 'package:flutter/cupertino.dart';

class MainProvider extends ChangeNotifier {
  //for bar side

  //for list side
  List<TimeZoneTileModel> tileList = [];

  void fillTileList(List<TimeZoneTileModel> tiles) {
    tileList = tiles;
    notifyListeners();
  }

  Future<bool> fetchTiles() async {
    var _res = await GlobalVars.apiService.fetchData(GlobalVars.apiConstants.timezone);
    if (_res.data is List) {
      var _tiles = List<TimeZoneTileModel>.from(_res.data.map((e) => TimeZoneTileModel.fromJson(e)).toList());
      log(_tiles.runtimeType.toString());
      fillTileList(_tiles);
    }
    return true;
  }

  //which list will use
  // this will easier and cleaner than writing directly in widget
  List<TimeZoneTileModel> get getList => searchList.isEmpty ? tileList : searchList;

  // search form
  final TextEditingController controller = TextEditingController();
  List<TimeZoneTileModel> searchList = [];

  void search() async {
    searchList.clear();
    for (var tile in tileList) {
      if (tile.tileText?.toLowerCase().contains(controller.text.toLowerCase()) ?? false) {
        searchList.contains(tile) ? null : searchList.add(tile);
        notifyListeners();
      }
    }
    notifyListeners();
  }
}
