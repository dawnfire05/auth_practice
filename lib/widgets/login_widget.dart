import 'package:flutter/material.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final idFormController = TextEditingController();
  final pwFormController = TextEditingController();
  late FocusNode myFocusNode;
  GlobalKey globalKey = GlobalKey();

  @override
  void dispose() {
    idFormController.dispose();
    pwFormController.dispose();
    super.dispose();
  }

  @override
  void initState() {
    myFocusNode = FocusNode();
    super.initState();
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
            Form(
              key: globalKey,
              child: Column(
                children: [
                  TextFormField(
                    decoration: const InputDecoration(hintText: "아이디"),
                    controller: idFormController,
                    autofocus: true,
                  ),
                  TextFormField(
                    decoration: const InputDecoration(hintText: "비밀번호"),
                    controller: pwFormController,
                    focusNode: myFocusNode,
                  ),
                  TextFormField(
                    decoration: const InputDecoration(hintText: "전화번호"),
                  )
                ],
              ),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDialog(
            context: context,
            builder: (context) {
              return AlertDialog(
                content: Text(
                  "id : ${idFormController.text}\npw: ${pwFormController.text}",
                ),
              );
            },
          );
        },
        tooltip: 'Show me the input!',
        child: const Icon(Icons.text_fields),
      ),
    );
  }
}
