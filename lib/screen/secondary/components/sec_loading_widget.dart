import 'package:dop_case/screen/secondary/components/sec_bar_widget.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

import '../../../core/core_shelf.dart';
import 'clock_box_widget.dart';

Widget secLoadingWidget(BuildContext context) {
  return Column(
    children: [
      const SecBarWidget(),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Shimmer.fromColors(
              baseColor: Theme.of(context).extension<CustomColors>()!.boxColor!,
              highlightColor: Theme.of(context).scaffoldBackgroundColor,
              child: const ClockBoxWidget(text: ''),
            ),
            Text(
              ':',
              style: Theme.of(context).textTheme.displayLarge,
            ),
            Shimmer.fromColors(
              baseColor: Theme.of(context).extension<CustomColors>()!.boxColor!,
              highlightColor: Theme.of(context).scaffoldBackgroundColor,
              child: const ClockBoxWidget(text: ''),
            ),
          ],
        ),
      ),
    ],
  );
}
