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
        drawer: Drawer(
          child: Column(children: [
            UserAccountsDrawerHeader(
                currentAccountPicture: ClipRRect(
                  child: Image.network(
                      'https://www.usatoday.com/gcdn/-mm-/5367a8ddcfb9c1f4d81b7884d83903b596f09e0d/c=15-0-465-600/local/-/media/USATODAY/GenericImages/2014/03/16//1394994103000-AP-Music-Tyler-The-Creator-Arrest.jpg'),
                  borderRadius: BorderRadius.circular(40),
                ),
                accountName: Text('Tiago'),
                accountEmail: Text('tiagorodriguessousa9@gmail.com')),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Inicio'),
              subtitle: Text('Texto de inicio'),
              onTap: () {
                print('Home');
              },
            ),
            ListTile(
              leading: Icon(Icons.exit_to_app),
              title: Text('Sair'),
              subtitle: Text('Sair do app'),
              onTap: () {
                Navigator.of(context).pushReplacementNamed('/');
              },
            )
          ]),
        ),
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
