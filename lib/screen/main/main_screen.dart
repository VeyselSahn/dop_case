import 'package:dop_case/screen/main/components/city_tile_widget.dart';
import 'package:dop_case/screen/main/components/main_bar_widget.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const MainBarWidget(),
          const SizedBox(
            height: 10,
          ),
          Expanded(
              child: ListView.builder(
            itemCount: 17,
            itemBuilder: (context, index) => const CityTileWidget(),
          )),
          const SizedBox(
            height: 30,
          )
        ],
      ),
    );
  }
}
