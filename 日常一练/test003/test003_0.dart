import 'package:flutter/material.dart';
import 'dart:async';
import 'dart:math';
import 'package:shared_preferences/shared_preferences.dart';
import 'test003_1.dart';
void main() {
  runApp(new MaterialApp(
      title: 'Zukgit_Test003',
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
  SharedPreferences prefs;
  var _spValue = "";
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _initSP();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      backgroundColor: Colors.cyanAccent,
      appBar: new AppBar(
          centerTitle: true,
          title: new Text(
            'zukgit003_0',
            textAlign: TextAlign.center,
          )),
      body: new Center(
          child: new Container(
        margin: EdgeInsets.only(top: 100.0, left: 0.0, right: 0.0), // 边距
        padding: EdgeInsets.only(top: 300.0), // 内距
        child: new Column(
          children: <Widget>[
            new Text(
              "zukgit003_0",
              style: new TextStyle(fontSize: 35.5),
            ),
            new RaisedButton(
                onPressed: _showSP, child: new Text('SP_Value = $_spValue'))
          ],
        ),
      )),
      floatingActionButton: new IconButton(
        icon: new Icon(Icons.navigate_next),
        onPressed: _navigationNext,
      ),
    );
  }

  _navigationNext() {
    Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext) => new Zukgit1()
    ));
  }

//  _navigationNext() {
//    Navigator.push(context, new MaterialPageRoute<void>(
//      builder: (BuildContext context) {
//        return new Scaffold(
//          appBar: new AppBar(title: new Text('My Page')),
//          body: new Center(
//            child: new FlatButton(
//              child: new Text('POP'),
//              onPressed: () {
//                Navigator.pop(context);
//              },
//            ),
//          ),
//        );
//      },
//    ));
// }
  _initSP() async {
    prefs = await SharedPreferences.getInstance();
    prefs.setString('userId', "zukgit");
    String userId = (prefs.getString('userId') ?? "");
    print('userId $userId .');
    prefs.setString('hello', "Hello -" + userId);
  }

  _showSP() {
    setState(() {
      _spValue = (prefs.getString('hello') ?? "");
    });
  }

  @override
  void dispose() {
    super.dispose();
  }


}


