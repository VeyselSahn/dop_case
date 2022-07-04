import 'package:dop_case/core/core_shelf.dart';
import 'package:flutter/material.dart';

class ClockBoxWidget extends StatelessWidget {
  final String text;
  const ClockBoxWidget({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: context.deviceWidth * .4,
      width: context.deviceWidth * .4,
      decoration: BoxDecoration(
          color: Theme.of(context).extension<CustomColors>()!.boxColor, borderRadius: BorderRadius.circular(14)),
      child: Center(
        child: Text(
          text,
          style: Theme.of(context).textTheme.displayLarge,
        ),
      ),
    );
  }
}
