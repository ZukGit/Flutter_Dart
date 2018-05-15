import 'package:flutter/material.dart';
import 'dart:async';
import 'dart:math';
import 'package:shared_preferences/shared_preferences.dart';
import 'test003_6.dart';
//void main() {
//  runApp(new MaterialApp(
//      title: 'Zukgit_Test003',
//      theme: new ThemeData(
//          primaryColor: Colors.limeAccent, accentColor: Colors.deepOrange),
//      home: new Zukgit5()));
//}

class Zukgit5 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new Zukgit5State();
  }
}

class Zukgit5State extends State<Zukgit5> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.redAccent,
      ),
      body: new Center(
          child: new Text(
        "hello to test003_5",
        style: new TextStyle(fontSize: 35.0),
      )),
      floatingActionButton:
          new IconButton(icon: new Icon(Icons.call_missed_outgoing),onPressed: _navigationNext,),
    );
  }

  _navigationNext() {
    Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext) => new Zukgit6()
    ));
  }

}
