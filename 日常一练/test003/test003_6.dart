import 'package:flutter/material.dart';
import 'dart:async';
import 'dart:math';
import 'package:shared_preferences/shared_preferences.dart';

//void main() {
//  runApp(new MaterialApp(
//      title: 'Zukgit_Test003',
//      theme: new ThemeData(
//          primaryColor: Colors.limeAccent, accentColor: Colors.deepOrange),
//      home: new Zukgit6()));
//}

class Zukgit6 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new Zukgit6State();
  }
}

class Zukgit6State extends State<Zukgit6> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.lightGreenAccent,
      ),
      body: new Center(
          child: new Text(
        "hello to test003_5",
        style: new TextStyle(fontSize: 35.0),
      )),
      floatingActionButton: new IconButton(
        icon: new Icon(Icons.call_missed_outgoing),
        onPressed: _navigationNext,
      ),
    );
  }

//  _navigationNext() {
//    Navigator.of(context).pushAndRemoveUntil(new MaterialPageRoute(builder: (BuildContext) {
//      return new Scaffold(
//        body: new Center(
//            child: new Text("finish Page Stack!",
//                style: new TextStyle(color: Colors.redAccent, fontSize: 35.0))),
//      );
//    },predicate(Route route){return route==null;}));
//  }

  void _navigationNext() {
    Navigator.pushAndRemoveUntil(
      context,
      new MaterialPageRoute(
          builder: (BuildContext context) => new Scaffold(
                body: new Center(
                  child: new Text(
                    "finish Page Stack!",
                    style: new TextStyle(color: Colors.redAccent,fontSize: 35.0),
                  ),
                ),
              )),
      ModalRoute.withName('/'),
    );
  }
}
