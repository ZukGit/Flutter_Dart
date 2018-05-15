import 'package:flutter/material.dart';
import 'dart:async';
import 'dart:math';
import 'package:shared_preferences/shared_preferences.dart';
import 'test003_3.dart';
//void main() {
//  runApp(new MaterialApp(
//      title: 'Zukgit_Test003',
//      theme: new ThemeData(
//          primaryColor: Colors.limeAccent, accentColor: Colors.deepOrange),
//      home: new Zukgit2()));
//}

class Zukgit2 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new Zukgit2State();
  }
}

class Zukgit2State extends State<Zukgit2> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.cyan,
      ),
      body: new Center(
          child: new Text(
            "hello to test003_2",
            style: new TextStyle(fontSize: 35.0),
          )),
      floatingActionButton: new IconButton(icon: new Icon( Icons.call_missed_outgoing), onPressed: _navigationNext),
    );
  }


  _navigationNext() {
    Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext) => new Zukgit3()
    ));
  }

}
