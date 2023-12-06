import 'package:flutter/material.dart';
import 'package:statefull_widget/app_controller.dart';
import 'package:statefull_widget/home_page.dart';
import 'package:statefull_widget/login.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: AppController.instance,
        builder: (context, child) {
          return MaterialApp(
              theme: ThemeData(
                  primarySwatch: Colors.red, brightness: defineTheme()),
              initialRoute: '/',
              routes: {
                '/': (context) => const Login(),
                '/home': (context) => const HomePage()
              });
        });
  }

  Brightness defineTheme() {
    return AppController.instance.isDarkTheme
        ? Brightness.dark
        : Brightness.light;
  }
}
