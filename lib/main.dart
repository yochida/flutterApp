import 'dart:ui';

import 'package:flutter/material.dart';

main() {
  runApp(QuoteApp());
}

class QuoteApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Quote',
      home: StatefulHomePage(),
    );
  }
}

class Quote {
  final String text;
  final String author;

  Quote(this.text, this.author);
}

class StatefulHomePage extends StatefulWidget {
  @override
  _StatefulHomePageState createState() => _StatefulHomePageState();
}

class _StatefulHomePageState extends State<StatefulHomePage> {
  List<Quote> quotes;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Quote'),
      ),
      body: quotes == null
          ? Container(
              child: Row(
                children: [
                  Column(
                    children: [
                      Container(
                        child: Text('data xxxxxxxxxxxxxxxx'),
                      )
                    ],
                  )
                ],
              ),
            )
          : ListView(
              children: [
                QuoteCard(
                    'ห้างทองแม่นงเยาว์ ทองแท้จากเยาวราช สด-ผ่อน ออมทอง 0%',
                    'https://www.mitihoon.com/wp-content/uploads/2020/08/Gold-bullion-bullion-Gold-bar-shut.jpg'),
                QuoteCard(
                    'ห้างทองแม่นงเยาว์ ทองแท้จากเยาวราช สด-ผ่อน ออมทอง 0%',
                    'https://static.bangkokpost.com/media/content/dcx/2019/09/30/3349064.jpg'),
                QuoteCard(
                    'ห้างทองแม่นงเยาว์ ทองแท้จากเยาวราช สด-ผ่อน ออมทอง 0%',
                    'https://www.thaifrx.com/wp-content/uploads/2019/03/gold-coins-PS7FSL4-scaled.jpg'),
              ],
            ),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Quote'),
      ),
      body: ListView(
        children: [
          QuoteCard('ห้างทองแม่นงเยาว์ ทองแท้จากเยาวราช สด-ผ่อน ออมทอง 0%',
              'https://www.mitihoon.com/wp-content/uploads/2020/08/Gold-bullion-bullion-Gold-bar-shut.jpg'),
          QuoteCard('ห้างทองแม่นงเยาว์ ทองแท้จากเยาวราช สด-ผ่อน ออมทอง 0%',
              'https://static.bangkokpost.com/media/content/dcx/2019/09/30/3349064.jpg'),
          QuoteCard('ห้างทองแม่นงเยาว์ ทองแท้จากเยาวราช สด-ผ่อน ออมทอง 0%',
              'https://www.thaifrx.com/wp-content/uploads/2019/03/gold-coins-PS7FSL4-scaled.jpg'),
        ],
      ),
    );
  }
}

class QuoteCard extends StatelessWidget {
  final String _text;
  final String _image;

  const QuoteCard(
    this._text,
    this._image, {
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(8),
      elevation: 10,
      child: Column(
        children: [
          Container(
            height: 300,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4),
                image: DecorationImage(
                    fit: BoxFit.cover, image: NetworkImage(_image))),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text('"$_text"', style: TextStyle(fontSize: 20)),
          ),
          Container(
            alignment: Alignment(1, 0),
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'MY GOLD',
              style: TextStyle(fontStyle: FontStyle.italic),
            ),
          ),
        ],
      ),
    );
  }
}
