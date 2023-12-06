import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  Widget bodyScaffold() {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: Padding(
        padding: const EdgeInsets.all(30),
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          SizedBox(
            width: 250,
            height: 250,
            child: Image.asset('assets/placeholder.png'),
          ),
          Card(
              child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              children: [
                TextField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: const InputDecoration(
                      labelText: 'Email', border: OutlineInputBorder()),
                  controller: emailController,
                ),
                TextField(
                  controller: passwordController,
                  obscureText: true,
                  decoration: const InputDecoration(
                      labelText: 'Password', border: OutlineInputBorder()),
                )
              ],
            ),
          )),
          ElevatedButton(
              style: const ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(Colors.amber)),
              onPressed: () {
                String email = emailController.text;
                String password = passwordController.text;
                if (email.isNotEmpty &&
                    email == 'tiagorodriguessousa9@gmail.com' &&
                    password.isNotEmpty &&
                    password == '123') {
                  Navigator.of(context).pushReplacementNamed('/home');
                } else {
                  print('Bosta');
                }
              },
              child: const Text('Login'))
        ]),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Image.asset(
            'assets/landscape.png',
            fit: BoxFit.cover,
          ),
        ),
        bodyScaffold(),
      ],
    ));
  }
}
