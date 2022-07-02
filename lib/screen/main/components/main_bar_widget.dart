import 'package:dop_case/core/core_shelf.dart';
import 'package:flutter/material.dart';

class MainBarWidget extends StatelessWidget {
  const MainBarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: context.deviceHeight * .3 + 25,
      child: Stack(
        children: [
          Container(
            height: context.deviceHeight * .3,
            width: context.deviceWidth,
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.only(bottomLeft: Radius.circular(32), bottomRight: Radius.circular(32)),
              color: Theme.of(context).backgroundColor,
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: _buildTodayWidget(context),
            ),
          ),
          Positioned(
              top: context.deviceHeight * .3 - 25,
              right: 30,
              height: 50,
              left: 30,
              child: TextFormField(
                decoration: const InputDecoration(hintText: 'Arama', prefixIcon: Icon(Icons.search)),
              ))
        ],
      ),
    );
  }

  Widget _buildTodayWidget(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Hoşgeldin Özgür',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            CircleAvatar(
              radius: 17,
              backgroundColor: Colors.white,
              child: Image.asset(
                'sun'.imgPngPath,
                height: 25,
              ),
            )
          ],
        ),
        Text(
          '09 : 54',
          style: Theme.of(context).textTheme.headlineLarge,
        ),
        Text(
          '8 Haziran , Çarşamba',
          style: Theme.of(context).textTheme.headlineMedium,
        )
      ],
    );
  }
}
