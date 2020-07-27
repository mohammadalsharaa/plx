import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:plx/classes/sys_drawer.dart';
import 'package:plx/classes/sys_snackbar.dart';

class Home extends StatefulWidget {
  Home({Key key, this.title}) : super(key: key);

  final String title;
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
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
            SnackBarPage(),
          ],
        ),
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // ignore: todo
          //TODO: FAB function
        },
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
