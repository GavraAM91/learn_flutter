import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("TextStyling"),
        ),
        body: Center(
          child: Text("ini adalah teks",
              style: TextStyle(
                  fontFamily: "OpenJakartaSans-Regular",
                  fontSize: 30,
                  fontStyle: FontStyle.italic,
                  decoration: TextDecoration.underline,
                  decorationColor: Colors.red[100],
                  decorationThickness: 5,
                  decorationStyle: TextDecorationStyle.wavy)),
        ),
      ),
    );
  }
}
