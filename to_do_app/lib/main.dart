import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';

import 'home_view.dart';

void main() {
  runApp(DevicePreview(enabled: false, builder: (context) => const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      useInheritedMediaQuery: true,
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      title: 'My Tasks',
      theme: ThemeData(
          primaryColor: const Color.fromRGBO(26, 102, 255, 1),
          appBarTheme: const AppBarTheme(
              backgroundColor: Color.fromRGBO(26, 102, 255, 1), elevation: 0)),
      home: const HomeView(),
    );
  }
}
