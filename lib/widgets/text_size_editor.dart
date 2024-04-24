import 'package:flutter/material.dart';

class TextSizeEditor extends StatefulWidget {
  const TextSizeEditor({super.key});

  @override
  State<TextSizeEditor> createState() => _TextSizeEditorState();
}

class _TextSizeEditorState extends State<TextSizeEditor> {
  double _currentNum = 20;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('hi')),
      body: Center(
        child: Column(
          children: [
            Text(
              "텍스트 사이즈를 조절하세요",
              style: TextStyle(fontSize: _currentNum),
            ),
            Slider(
              value: _currentNum,
              min: 10,
              max: 30,
              onChanged: (double value) {
                setState(
                  () {
                    _currentNum = value;
                  },
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
