import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


final headerStyle = TextStyle(
  color: Colors.black,
  fontWeight: FontWeight.w800,
  letterSpacing: 0.5,
  fontSize: 18,
  height: 2,
);


class MyBody extends StatelessWidget {
  Widget build(BuildContext context) {
    return new Container(
        width: double.infinity,
        height: double.infinity,
        alignment: Alignment.topLeft,
        color: Colors.white,
        padding: const EdgeInsets.all(10.0),
        child: Column( children: [
          MyTasksHeader(),
          MyTasksList(),
          MyTasksDoneHeader(),
          MyCompletedTasks(),
        ])
    );
  }
}

class MyTasksHeader extends StatelessWidget {
  Widget build(BuildContext context) {
    return Row(children: [
      Container( child: Text('Meine Aufgaben heute', style: headerStyle),
        padding: EdgeInsets.only( bottom: 2.0),
        decoration: BoxDecoration(
            border: Border(bottom: BorderSide(
              color: Colors.black,
              width: 1.0,
            ))
        ),
      ),
      Icon(CupertinoIcons.clock, color: Colors.red[400], size: 34)
    ]);
  }
}

class MyTasksDoneHeader extends StatelessWidget {
  Widget build(BuildContext context) {
    return Row(children: [
      Container( child: Text('Abgeschlossen Aufgaben', style: headerStyle),
        padding: EdgeInsets.only( bottom: 2.0),
        decoration: BoxDecoration(
            border: Border(bottom: BorderSide(
              color: Colors.black,
              width: 1.0,
            ))
        ),
      ),
      Icon(Icons.check, color: Colors.green[500], size: 34)
    ]);
  }
}

class MyCompletedTasks extends StatelessWidget {
  Widget build(BuildContext context) {
    return Column(children: [ Card(
      child: ListTile(
        title: Text('Abgeschlossen Anwendung des Flutters'),
        trailing: Icon(Icons.more_vert),
      ),
    ),
      Card(
        child: ListTile(
          title: Text('Lesen mehr über Flutter'),
          trailing: Icon(Icons.more_vert),
        ),
      )
    ]);
  }
}

class MyTasksList extends StatelessWidget {
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      padding: const EdgeInsets.only(top: 8.0),
      children: <Widget>[
        const Text("- Ich muss einkaufen gehen"),
        const Text('- Ich muss etwas neues lesen'),
        const Text('- Spazieren gehen'),
      ],
    );
  }
}

void main() {
  runApp(new MaterialApp(
      debugShowCheckedModeBanner: false, // скрываем надпись debug
      home: Scaffold(
        appBar: AppBar(title: new Text('My flutter to do app')),
        body: MyBody(),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: const Icon(CupertinoIcons.plus),
          backgroundColor: Colors.green,
        ),
      )));
}
