import 'package:flutter/material.dart';

class MyBody extends StatelessWidget {
  Widget build(BuildContext context) {
    return new Center(
        child: new Column(children: [
          new Text('Hello World!'),
          new FlatButton(
            onPressed: () {},
            child: new Text('open site two'),
            color: Colors.red,
            textColor: Colors.white,
          )
        ]));
  }
}

void main() {
  runApp(new MaterialApp(
      debugShowCheckedModeBanner: false, // скрываем надпись debug
      home: new Scaffold(
        appBar: new AppBar(title: new Text('Flutter.su')),
        body: new MyBody(),
      )));
}
