import 'package:flutter/material.dart';
import 'package:screen_navigation/second_page.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("main ppage"),
      ),
      body: Center(
          child: ElevatedButton(
        child: Text("Go to second page"),
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return SecondPage();
          }));
        },
      )),
    );
  }
}
