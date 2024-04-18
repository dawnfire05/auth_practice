import 'package:flutter/material.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final loginFormController = TextEditingController();

  @override
  void dispose() {
    loginFormController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "로그인",
              style: TextStyle(fontSize: 35),
            ),
            TextFormField(
              decoration: const InputDecoration(hintText: "아이디"),
            ),
            TextFormField(
              decoration: const InputDecoration(hintText: "비밀번호"),
            ),
          ],
        ),
      ),
    );
  }
}
