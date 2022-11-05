import 'package:flutter/material.dart';
import 'bottom_sheet.dart';
import 'check_box.dart';
import 'app_bar.dart';
import 'dropdown.dart';
import 'expansion_panel.dart';

import 'expansion_tile.dart';
import 'pageview.dart';
import 'popup.dart';
import 'pop_menu.dart';
import 'tabbar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter widgets',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Appbar(),
      routes: {
        '1': (context) => const Appbar(),
        '2': (context) => const CheckBoxx(),
        '3': (context) => const Drop(),
        '4': (context) => const Expansion(),
        '5': (context) => const BottomSheets(),
        '6': (context) => const ExpansionTiles(),
        '7': (context) => const Pageviews(),
        '8': (context) => const Pop(),
        '9': (context) => const Popup(),
        '10': (context) => const Tabs(),
      },
    );
  }
}
