import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Color color1 = Colors.red;
  Color color2 = Colors.amber;
  late Color targetColor;

  bool isAccepted = false;

  @override
  // void initState() {
  //   super.initState();
  //   targetColor =
  //       Colors.grey; // Initialize targetColor with a default value here
  // }

  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text("latihan Dragable")),
        body: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Draggable<Color>(
                    data: color1,
                    child: SizedBox(
                      width: 50,
                      height: 50,
                      child: Material(
                        color: color1,
                        shape: StadiumBorder(),
                        elevation: 3,
                      ),
                    ),
                    childWhenDragging: SizedBox(
                      width: 50,
                      height: 50,
                      child: Material(
                        color: Colors.black26,
                        shape: StadiumBorder(),
                        elevation: 0,
                      ),
                    ),
                    feedback: SizedBox(
                      width: 50,
                      height: 50,
                      child: Material(
                        color: color1.withOpacity(0.5),
                        shape: StadiumBorder(),
                        elevation: 3,
                      ),
                    ),
                  ),
                  Draggable<Color>(
                    data: color2,
                    child: SizedBox(
                      width: 50,
                      height: 50,
                      child: Material(
                        color: color2,
                        shape: StadiumBorder(),
                        elevation: 3,
                      ),
                    ),
                    childWhenDragging: SizedBox(
                      width: 50,
                      height: 50,
                      child: Material(
                        color: Colors.black26,
                        shape: StadiumBorder(),
                        elevation: 0,
                      ),
                    ),
                    feedback: SizedBox(
                      width: 50,
                      height: 50,
                      child: Material(
                        color: color2.withOpacity(0.7),
                        shape: StadiumBorder(),
                        elevation: 3,
                      ),
                    ),
                  ),
                ],
              ),
              DragTarget(
                onWillAccept: (value) => true,
                onAccept: (Color value) {
                  isAccepted = true;
                  targetColor = value;
                },
                builder: (context, candidates, rejected) {
                  return (isAccepted)
                      ? SizedBox(
                          width: 100,
                          height: 100,
                          child: Material(
                            color: targetColor,
                            shape: StadiumBorder(),
                            elevation: 3,
                          ),
                        )
                      : SizedBox(
                          width: 100,
                          height: 100,
                          child: Material(
                            color: Colors.black26,
                            shape: StadiumBorder(),
                            elevation: 3,
                          ));
                },
              )
            ]),
      ),
    );
  }
}
