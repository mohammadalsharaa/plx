import 'package:flutter/material.dart';
import 'package:plx/pages/home.dart';

//StatefulWidget
class AppBar extends StatefulWidget implements PreferredSizeWidget {
  AppBar({Key key, this.title, this.actions}) : super(key: key);

  final Widget title;
  final List<Widget> actions;

  @override
  _AppBarState createState() => _AppBarState();
  noSuchMethod(Invocation invocation) => super.noSuchMethod(invocation);
}

class _AppBarState extends State<AppBar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(actions: <Widget>[
        customLeadingAction(),
      ]),
    );
  }

  customLeadingAction() {
    MediaQuery.of(context).size.width > 800.0
        ? Row(
            children: <Widget>[
              IconButton(
                icon: Icon(Icons.home),
                onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Home()),
                ),
              ),
              SizedBox(
                width: 10.0,
              ),
              IconButton(
                icon: Icon(Icons.search),
                onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Home()),
                ),
              ),
              SizedBox(
                width: 10.0,
              ),
              IconButton(
                icon: Icon(Icons.more_vert),
                onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Home()),
                ),
              ),
            ],
          )
        : IconButton(
            icon: Icon(Icons.more_vert),
            onPressed: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Home()),
            ),
          );
  }
}
