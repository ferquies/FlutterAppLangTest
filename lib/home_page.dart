import 'package:flutter/material.dart';
import 'package:flutter_app/lang/Lang.dart';

class MyHomePage extends StatelessWidget {
  MyHomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(Lang.of(context).get("home_title")),
      ),
      body: new Center(
        child: new Text(Lang.of(context).get("hello_world")),
      ),
    );
  }
}
