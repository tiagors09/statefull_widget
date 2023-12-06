import 'package:flutter/material.dart';

import 'custom_switch.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() {
    return HomePageState();
  }
}

class HomePageState extends State<HomePage> {
  int counter = 0;
  bool isDarkTheme = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              counter++;
            });
          },
          backgroundColor: Colors.amber,
          child: const Icon(Icons.add),
        ),
        appBar: AppBar(
          title: const Text('Contador'),
          actions: const [CustomSwitch()],
          backgroundColor: Colors.amber,
        ),
        body: ListView(
          scrollDirection: Axis.vertical,
          children: const [
            CustomText(),
            CustomText(),
            CustomText(),
            CustomText(),
            CustomText(),
            CustomText(),
            CustomText(),
            CustomText(),
            CustomText(),
            CustomText(),
            CustomText(),
            CustomText(),
            CustomText(),
            CustomText(),
            CustomText(),
            CustomText(),
            CustomText(),
            CustomText(),
            CustomText(),
            CustomText(),
            CustomText(),
            CustomText(),
            CustomText(),
            CustomText(),
            CustomText(),
            CustomText(),
            CustomText(),
            CustomText(),
            CustomText(),
            CustomText(),
            CustomText(),
            CustomText(),
          ],
        ));
  }
}

class CustomText extends StatelessWidget {
  const CustomText({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(10),
      child: Text('data'),
    );
  }
}
