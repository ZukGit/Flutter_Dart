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

  Timer _time;
  var value = 0;
  var r = 0;
  var g = 0;
  var b = 0;

  var buildValue = 0;

  @override
  Widget build(BuildContext context) {
    buildValue++;
    _time = Timer(new Duration(milliseconds: 50), () {
      setState(() {
        r = new Random().nextInt(255);
        g = new Random().nextInt(255);
        b = new Random().nextInt(255);
        value++;
      });});

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
        color: new Color.fromARGB(100, r, g, b),
        margin: EdgeInsets.only(top: 100.0, left: 0.0, right: 0.0), // 边距
        padding: EdgeInsets.only(top: 300.0), // 内距
        child: new Column(
          children: <Widget>[
            new Text(
              "hello-World----zukgit002",
              style: new TextStyle(fontSize: 35.5),
            ),
            new Text(
              "value=$value"+" buildValue:$buildValue",
              style: new TextStyle(fontSize: 35.5),
            ),
          ],
        ),
      )),
      floatingActionButton: new IconButton(
          icon: new Icon(Icons.settings_backup_restore),
          onPressed: () {
            setState(() {
              _time.cancel();
              value =0 ;
            });

          }),
    );
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _time.cancel();
  }
}

