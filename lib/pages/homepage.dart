import 'package:flutter/material.dart';
import 'package:light_dark_mode/components/box.dart';
import 'package:light_dark_mode/components/button.dart';
import 'package:light_dark_mode/providers/themeprovider.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    // ignore: avoid_print
    print('build');
    final themeData = Provider.of<ThemeProvider>(context, listen: false);
    return Scaffold(
        backgroundColor: Theme.of(context).colorScheme.background,
        body: Center(
          child: Stack(alignment: Alignment.center, children: [
            MyBox(
              color: Theme.of(context).colorScheme.primary,
            ),
            Consumer<ThemeProvider>(builder: (context, value, child) {
              return MyButton(
                onTap: () {
                  themeData.togglethemes();
                },
                color: Theme.of(context).colorScheme.secondary,
              );
            })
          ]),
        ));
  }
}
