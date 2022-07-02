import 'package:dop_case/core/core_shelf.dart';
import 'package:flutter/material.dart';

class SecBarWidget extends StatelessWidget {
  const SecBarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: context.deviceHeight * .15,
      width: context.deviceWidth,
      decoration: BoxDecoration(
        color: Theme.of(context).backgroundColor,
        borderRadius: const BorderRadius.only(bottomLeft: Radius.circular(32), bottomRight: Radius.circular(32)),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: context.deviceHeight * .04),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            InkWell(
              onTap: () => Navigator.pop(context),
              child: const Icon(
                Icons.arrow_back,
                color: Colors.white,
              ),
            ),
            Image.asset('worldtime_title'.imgPngPath),
            const SizedBox()
          ],
        ),
      ),
    );
  }
}
