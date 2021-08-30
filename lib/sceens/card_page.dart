import 'package:flutter/material.dart';
import 'package:magic_card_founder/objects/card.dart';

class CardPage extends StatefulWidget {
  final CardMagic card;

  const CardPage({Key? key, required this.card}) : super(key: key);
  @override
  _CardPageState createState() => _CardPageState();
}

class _CardPageState extends State<CardPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [Image.network(widget.card.imageUris.png)],
        ),
      ),
    );
  }
}
