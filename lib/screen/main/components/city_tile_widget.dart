import 'package:dop_case/core/core_shelf.dart';
import 'package:flutter/material.dart';
import '../../secondary/secondary_screen.dart';

class CityTileWidget extends StatelessWidget {
  const CityTileWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: SizedBox(
        width: context.deviceWidth,
        child: Stack(
          alignment: AlignmentDirectional.center,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 33),
              child: Container(
                height: 60,
                width: context.deviceWidth,
                decoration:
                    BoxDecoration(color: Theme.of(context).backgroundColor, borderRadius: BorderRadius.circular(8)),
                child: Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Row(
                    children: [
                      Text(
                        'Istanbul, Türkiyee',
                        style: Theme.of(context).textTheme.headlineSmall,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              right: 10,
              child: InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const SecondaryScreen(),
                      ));
                },
                child: CircleAvatar(
                  backgroundColor: Theme.of(context).scaffoldBackgroundColor,
                  child: const Icon(Icons.navigate_next),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
