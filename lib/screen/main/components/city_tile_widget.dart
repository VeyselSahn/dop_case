// ignore_for_file: non_constant_identifier_names

import 'package:dop_case/component/component_shelf.dart';
import 'package:dop_case/core/core_shelf.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

Widget TileListViewWidget() {
  //thats for future builder function
  var mainProvider = GlobalVars.context.read<MainProvider>();
  return FutureBuilder(
      future: mainProvider.fetchTiles(),
      builder: (context, snapshot) {
        if (!snapshot.hasData) {
          return const SizedBox(
            height: 0,
          );
        }
        // thats for listview , have to be watch
        var mainproviderWatch = context.watch<MainProvider>();
        return Expanded(
            child: ListView.builder(
          physics: const BouncingScrollPhysics(),
          itemCount: mainproviderWatch.getList.length,
          itemBuilder: (context, index) => CityTileWidget(model: mainproviderWatch.getList.elementAt(index)),
        ));
      });
}

class CityTileWidget extends StatelessWidget {
  final TimeZoneTileModel model;
  const CityTileWidget({Key? key, required this.model}) : super(key: key);

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
                        model.tileText!,
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
                onTap: () async {
                  await GlobalVars.navigatorService
                      .navigateToPage(path: NavigationConstants.secondary, data: model.timezonePath!);
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
