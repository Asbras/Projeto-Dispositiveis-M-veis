import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'view/login_view.dart';
import 'package:projeto/view/main_page.dart';

void main() {
  runApp(DevicePreview(enabled: true, builder: (context) => MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LoginView(),
      debugShowCheckedModeBanner: false,
      routes: {'/main': (context) => MainPage()},
    );
  }
}
