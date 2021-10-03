import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'quote.dart';
import 'quote_card.dart';
void main()=>runApp(MaterialApp(
  home: QuoteList(),
));

class QuoteList extends StatefulWidget {


  @override
  _QuoteListState createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {

  List<Quote> quotes =[
    Quote(author:'Nap',text: 'Be yourself everyone else is ready taken'),
    Quote(author:'Napo',text:'I have nothing to declare except my genius'),
    Quote(author:'Napo',text:'The truth is rarely pure and never simple')
  ];

  // Widget quoteTemplate(quote){
  //   return QuoteCard(quote: quote);
  // }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text('Awesome Quote'),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
      ),
      body: Column(
        children: quotes.map((quote) => QuoteCard(
            quote: quote,
            delete:(){
              setState(() {
                quotes.remove(quote);
              });
                }

        )).toList(),
      ),
    );
  }
}

