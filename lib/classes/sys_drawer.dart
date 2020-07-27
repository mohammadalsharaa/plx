import 'package:flutter/material.dart';
import 'package:plx/classes/quote_list.dart';

class SYSDRW extends StatefulWidget {
  const SYSDRW({Key key}) : super(key: key);

  @override
  _SYSDRWState createState() => _SYSDRWState();
}

class _SYSDRWState extends State<SYSDRW> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.85, //20.0,
      child: Drawer(
        child: Container(
          color: Theme.of(context).appBarTheme.color,
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              DrawerHeader(
                child: Text(
                  'Drawer Header',
                  style: Theme.of(context).textTheme.headline6,
                ),
                decoration: BoxDecoration(
                  color: Theme.of(context).appBarTheme.color,
                ),
              ),
              QuoteList(),
            ],
          ),
        ),
      ),
    );
  }
}
