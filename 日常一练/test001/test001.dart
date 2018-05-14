import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(home: new Zukgit()));
}

class Zukgit extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new ZukgitState();
  }
}

class ZukgitState extends State<Zukgit> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      backgroundColor: Colors.deepOrangeAccent,
        body: new Center(
      child: new Text(
        'Hello World-Zukgit',
        style: new TextStyle(fontSize: 35.0),
      ),
    ));
  }
}
