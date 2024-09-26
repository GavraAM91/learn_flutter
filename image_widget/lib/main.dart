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
            backgroundColor: Colors.lightBlueAccent[200],
            title: const Text(
              "Latihan image",
            )),
        body: Center(
          child: Container(
            // color: Colors.black,
            width: 200,
            height: 200,
            padding: const EdgeInsets.all(3),
            child: const Image(
              image: AssetImage("images/knights.jpg"),
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }
}
      // errorBuilder: (BuildContext context, Object exception,
              //     StackTrace? stackTrace) {
              //   return const Text('Failed to load image');
              // },