import 'dart:async';

import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  Widget landscapeLayout() {
    return Scaffold(
      appBar: AppBar(),
      body: Row(
        children: <Widget>[
          Expanded(
              child: Container(
            color: Colors.yellow,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  "First Element",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 30,
                ),
                Text(
                  "Second Element",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 30,
                ),
                Text(
                  "Third Element",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 30,
                ),
                Text(
                  "Forth Element",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 30,
                ),
                Text(
                  "Fifth Element",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          )),
          Expanded(child: Container(color: Colors.red)),
        ],
      ),
    );
  }

  Widget portraitLayout(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: Drawer(
        child: Container(
          color: Color.fromARGB(255, 158, 158, 158).withOpacity(0.90),
          child: ListView(
            // padding: EdgeInsets.zero,
            children: [
              ListTile(
                title: const Text('First Element'),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: const Text('Second Element'),
                onTap: () {},
              ),
              ListTile(
                title: const Text('Third Element'),
                onTap: () {},
              ),
              ListTile(
                title: const Text('Forth Element'),
                onTap: () {},
              ),
              ListTile(
                title: const Text('Fifth Element'),
                onTap: () {},
              ),
            ],
          ),
        ),
      ),
      body: Container(color: Colors.red),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: OrientationBuilder(
        builder: (context, orientation) {
          if (orientation == Orientation.portrait) {
            return portraitLayout(context);
          } else {
            return landscapeLayout();
          }
        },
      ),
    );
  }
}
