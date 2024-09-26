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
          elevation: 0,
          title: const Text(
            "Umak.",
            style: TextStyle(
              fontFamily: "Poppins-ExtraBold",
              fontWeight: FontWeight.w800,
              fontSize: 26,
              color: Color(0xFF04055F),
            ),
          ),
          actions: <Widget>[
            Row(
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Container(
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                            color: const Color(0xE1E1E1E1), width: 2)),
                    child: CircleAvatar(
                        radius: 15,
                        backgroundColor: Colors.white,
                        child: Icon(
                          Icons.notifications_rounded,
                          color: const Color(0x7B7B7B7B),
                        )),
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Container(
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                            color: const Color(0xE1E1E1E1), width: 2)),
                    child: CircleAvatar(
                        radius: 15,
                        backgroundColor: Colors.white,
                        child: Icon(
                          Icons.settings,
                          color: Color.fromARGB(122, 75, 60, 60),
                        )),
                  ),
                ),
              ],
            ), //7B7B7B
          ],
        ),
        body: Column(
          children: <Widget>[
            Flexible(
                //search bar section
                child: Row(
              children: <Widget>[
                Flexible(
                    child: Padding(
                  padding: const EdgeInsets.all(41.0),
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 1.0),
                    width: MediaQuery.of(context).size.width * 0.9,
                    decoration: BoxDecoration(
                        color: Colors.transparent,
                        borderRadius: BorderRadius.circular(100),
                        border: Border.all(color: const Color(0xE1E1E1E1))),
                    child: Row(
                      children: [
                        Icon(
                          Icons.search_rounded,
                          color: const Color(0x7B7B7B7B),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Expanded(
                            child: TextField(
                          decoration: InputDecoration(
                              border: InputBorder.none, hintText: 'Search'),
                        ))
                      ],
                    ),
                  ),
                ))
              ],
            )), //flexible
          ],
        ),
      ),
    );
  }
}
