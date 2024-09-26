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
        appBar: AppBar(title: Text("flexible Widget")),
        body: Column(
          children: <Widget>[
            Flexible(
              child: Row(
                children: <Widget>[
                  Flexible(
                      flex: 1,
                      child: Container(
                          margin: EdgeInsets.all(5), color: Colors.red[100])),
                  Flexible(
                      flex: 1,
                      child: Container(
                          margin: EdgeInsets.all(5), color: Colors.red[200])),
                  Flexible(
                      flex: 1,
                      child: Container(
                          margin: EdgeInsets.all(5), color: Colors.red[300])),
                ],
              ),
            ),
            Flexible(flex: 2, child: Container(color: Colors.amber[100])),
            Flexible(flex: 1, child: Container(color: Colors.blue[100])),
          ],
        ),
      ),
    );
  }
}
