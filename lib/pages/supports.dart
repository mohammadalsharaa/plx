import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:plx/classes/sys_drawer.dart';

class Supports extends StatefulWidget {
  Supports({Key key, this.title}) : super(key: key);

  final String title;
  @override
  _SupportsState createState() => _SupportsState();
}

class _SupportsState extends State<Supports> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: SYSDRW(),

      appBar: AppBar(
        title: Text(widget.title),
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
          ],
        ),
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // ignore: todo
          //TODO: FAB Function.
        },
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
