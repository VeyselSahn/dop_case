import 'package:dop_case/screen/secondary/components/clock_box_widget.dart';
import 'package:dop_case/screen/secondary/components/sec_bar_widget.dart';
import 'package:flutter/material.dart';

class SecondaryScreen extends StatelessWidget {
  const SecondaryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SecBarWidget(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const ClockBoxWidget(text: '14'),
                Text(
                  ':',
                  style: Theme.of(context).textTheme.displayLarge,
                ),
                const ClockBoxWidget(text: '43')
              ],
            ),
          ),
          Text(
            'Istanbul',
            style: Theme.of(context).textTheme.displayMedium,
          ),
          const SizedBox(height: 5),
          Text(
            'Türkiye',
            style: Theme.of(context).textTheme.displaySmall,
          ),
          const SizedBox(height: 10),
          Text(
            'Çarşamba,  GMT +01:00',
            style: Theme.of(context).textTheme.bodySmall,
          ),
          const SizedBox(height: 3),
          Text(
            'Haziran 8, 2022',
            style: Theme.of(context).textTheme.bodySmall,
          ),
        ],
      ),
    );
  }
}
