import 'package:car_app_ui/pages/history_page.dart';
import 'package:flutter/material.dart';

import 'theme/theme_data.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: MyTheme.themeData,
      home: const HistoryPage(),
    );
  }
}
