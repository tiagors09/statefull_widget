import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:statefull_widget/app_controller.dart';

class CustomSwitch extends StatefulWidget {
  const CustomSwitch({super.key});

  @override
  State<CustomSwitch> createState() {
    return CustomSwitchState();
  }
}

class CustomSwitchState extends State<CustomSwitch> {
  @override
  Widget build(BuildContext context) {
    return Switch(
        value: AppController.instance.isDarkTheme,
        onChanged: (value) {
          setState(() {
            AppController.instance.changeTheme(value);
          });
        });
  }
}
