import 'package:flutter/material.dart';
import 'package:plx/classes/quote_list.dart';

class QuoteCard extends StatelessWidget {
  final Quote quote;
  QuoteCard({this.quote});

  @override
  Widget build(BuildContext context) {
    return Card(
        margin: const EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0),
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              IconButton(
                icon: quote.ava,
                onPressed: () => Navigator.of(context).pushNamed(quote.url),
              ),
              Text(
                quote.val,
                style: TextStyle(
                  //fontSize: 18.0,
                  color: Theme.of(context).appBarTheme.color,
                ),
              ),
              SizedBox(height: 6.0),
              Text(
                quote.des,
                style: TextStyle(
                    //fontSize: 14.0,
                    //color: Colors.grey[800],
                    ),
              ),
              SizedBox(width: 100.0),
              Icon(Icons.help_outline),
              Icon(Icons.arrow_forward_ios),
            ],
          ),
        ));
  }
}
