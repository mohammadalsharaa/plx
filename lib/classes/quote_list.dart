import 'package:flutter/material.dart';
import 'quote_card.dart';

List<Quote> quotes = [
  Quote(
      //ava: 'home',
      ava: Icon(Icons.home),
      avacol: 'homehomehomehome',
      val: 'Home',
      des: 'home',
      url: '/home'),
  Quote(
      //ava: 'settings',
      ava: Icon(Icons.settings),
      avacol: 'homehomehomehome',
      val: 'Settings',
      des: 'settings',
      url: '/settings'),
  Quote(
      //ava: 'help',
      ava: Icon(Icons.help_outline),
      avacol: 'homehomehomehome',
      val: 'Support',
      des: 'support',
      url: '/supports'),
];

class Quote {
  Icon ava;
  String avacol;
  String val;
  String des;
  String url;


  Quote({this.ava, this.avacol, this.val, this.des, this.url});
}

class QuoteList extends StatefulWidget {
  @override
  _QuoteListState createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: quotes.map((quote) => QuoteCard(quote: quote)).toList(),
      ),
    );
  }
}
