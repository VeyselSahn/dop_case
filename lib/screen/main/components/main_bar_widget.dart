import 'package:dop_case/core/core_shelf.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MainBarWidget extends StatelessWidget {
  const MainBarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var mainProvider = context.read<MainProvider>();
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
              child: _buildTodayWidget(context, mainProvider),
            ),
          ),
          Positioned(
              top: context.deviceHeight * .3 - 25,
              right: 30,
              height: 50,
              left: 30,
              child: TextFormField(
                controller: mainProvider.controller,
                onChanged: (val) => mainProvider.search(),
                decoration: const InputDecoration(hintText: 'Arama', prefixIcon: Icon(Icons.search)),
              ))
        ],
      ),
    );
  }

  Widget _buildTodayWidget(BuildContext context, MainProvider mainProvider) {
    return FutureBuilder(
        future: mainProvider.fetchMyTime(),
        builder: (context, snapshot) {
          if (!snapshot.hasData) {
            return const SizedBox(
              height: 0,
            );
          }
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '${mainProvider.myTime.barStatusText!} Özgür',
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                  InkWell(
                    onTap: () => context.read<ThemeProvider>().changeTheme(),
                    child: CircleAvatar(
                      radius: 17,
                      backgroundColor: Theme.of(context).extension<CustomColors>()!.iconColor,
                      child: Image.asset(
                        context.read<ThemeProvider>().isDark() ? 'sun'.imgPngPath : 'moon'.imgPngPath,
                        height: 25,
                      ),
                    ),
                  )
                ],
              ),
              Text(
                '${mainProvider.myTime.hour!} : ${mainProvider.myTime.minute!}',
                style: Theme.of(context).textTheme.headlineLarge,
              ),
              Text(
                '${mainProvider.myTime.dayNumber!} ${mainProvider.myTime.monthText!} , ${mainProvider.myTime.dayText!}',
                style: Theme.of(context).textTheme.headlineMedium,
              )
            ],
          );
        });
  }
}
