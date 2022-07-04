import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

import 'city_tile_widget.dart';

Expanded listLoadingWidget() {
  return Expanded(
    child: ListView.builder(
      itemCount: 6,
      itemBuilder: (context, index) => Shimmer.fromColors(
        period: const Duration(milliseconds: 3000),
        baseColor: Theme.of(context).backgroundColor,
        highlightColor: Theme.of(context).scaffoldBackgroundColor,
        child: const CityTileWidget(),
      ),
    ),
  );
}
