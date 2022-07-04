import 'package:dop_case/core/core_shelf.dart';
import 'package:dop_case/screen/secondary/components/clock_box_widget.dart';
import 'package:dop_case/screen/secondary/components/sec_bar_widget.dart';
import 'package:dop_case/screen/secondary/components/sec_loading_widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SecondaryScreen extends StatelessWidget {
  final String locationPath;
  const SecondaryScreen({Key? key, required this.locationPath}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var secProvider = context.read<SecProvider>();
    return Scaffold(
      body: FutureBuilder(
          future: secProvider.fetchLocationTime(locationPath),
          builder: (context, snapshot) {
            if (!snapshot.hasData) {
              return secLoadingWidget(context);
            }
            return Column(
              children: [
                const SecBarWidget(),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ClockBoxWidget(text: secProvider.locationTimeModel.hour!),
                      Text(
                        ':',
                        style: Theme.of(context).textTheme.displayLarge,
                      ),
                      ClockBoxWidget(text: secProvider.locationTimeModel.minute!)
                    ],
                  ),
                ),
                Text(
                  secProvider.locationTimeModel.location!,
                  style: Theme.of(context).textTheme.displayMedium,
                ),
                const SizedBox(height: 5),
                Text(
                  secProvider.locationTimeModel.region!,
                  style: Theme.of(context).textTheme.displaySmall,
                ),
                const SizedBox(height: 10),
                Text(
                  '${secProvider.locationTimeModel.dayText!}, ${secProvider.locationTimeModel.offset!}',
                  style: Theme.of(context).textTheme.bodySmall,
                ),
                const SizedBox(height: 3),
                Text(
                  '${secProvider.locationTimeModel.monthText!} ${secProvider.locationTimeModel.dayNumber!}, ${secProvider.locationTimeModel.year!}',
                  style: Theme.of(context).textTheme.bodySmall,
                ),
              ],
            );
          }),
    );
  }
}
