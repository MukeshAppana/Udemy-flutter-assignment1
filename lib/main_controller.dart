import 'package:flutter/material.dart';
import './main_output.dart';

class TextControl extends StatefulWidget {
  const TextControl({super.key});

  @override
  State<StatefulWidget> createState() {
    return _TextControlState();
  }
}

class _TextControlState extends State<TextControl> {
  String _textMain = "Udemy flutter course";

  void _changeText() {
    setState(() {
      _textMain = "The text changed sucessfully";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ElevatedButton(
            onPressed: _changeText,
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.brown),
                foregroundColor: MaterialStateProperty.all(Colors.white)),
            child: const Text("Change text"),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: TextOutput(_textMain),
          ),
        ],
      ),
    );
  }
}
