import 'package:flutter/material.dart';
import 'package:statefull_widget/home_page.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Padding(
          padding: const EdgeInsets.all(30),
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
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
            ),
            ElevatedButton(
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
      ),
    );
  }
}
