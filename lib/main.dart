import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
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
      ),
    );
  }
}
