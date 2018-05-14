import 'package:flutter/material.dart';
import 'dart:async';
import 'dart:math';

void main() {
  runApp(new MaterialApp(
      title: 'Zukgit_Test002',
      theme: new ThemeData(
          primaryColor: Colors.limeAccent, accentColor: Colors.deepOrange),
      home: new Zukgit()));
}

class Zukgit extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new ZukgitState();
  }
}

class ZukgitState extends State<Zukgit> {
  var value = 0;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      backgroundColor: Colors.cyanAccent,
      appBar: new AppBar(
          centerTitle: true,
          title: new Text(
            'zukgit002c',
            textAlign: TextAlign.center,
          )),
      body: new Center(
          child: new Container(
        color: Colors.green,
        margin: EdgeInsets.only(top: 100.0, left: 0.0, right: 0.0), // 边距
        padding: EdgeInsets.only(top: 300.0), // 内距
        child: new Column(
          children: <Widget>[
            new Text(
              "hello-World----zukgit002",
              style: new TextStyle(fontSize: 35.5),
            ),
            new Text(
              "value=$value",
              style: new TextStyle(fontSize: 35.5),
            ),
          ],
        ),
      )),
      floatingActionButton: new IconButton(
          icon: new Icon(Icons.settings_backup_restore),
          onPressed: () {
            setState(() {
              value = 0;
            });
          }),
    );
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }
}
