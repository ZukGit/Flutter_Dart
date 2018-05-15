import 'package:flutter/material.dart';
import 'dart:async';
import 'dart:math';
import 'package:shared_preferences/shared_preferences.dart';
import 'test003_4.dart';
//void main() {
//  runApp(new MaterialApp(
//      title: 'Zukgit_Test003',
//      theme: new ThemeData(
//          primaryColor: Colors.limeAccent, accentColor: Colors.deepOrange),
//      home: new Zukgit3()));
//}

class Zukgit3 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new Zukgit3State();
  }
}

class Zukgit3State extends State<Zukgit3> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.blueAccent,
      ),
      body: new Center(
          child: new Text(
            "hello to test003_3",
            style: new TextStyle(fontSize: 35.0),
          )),
      floatingActionButton: new IconButton(icon: new Icon( Icons.call_missed_outgoing), onPressed: _navigationNext),
    );
  }


  _navigationNext() {
    Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext) => new Zukgit4()
    ));
  }

}
