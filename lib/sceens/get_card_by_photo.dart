import 'dart:io';

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:magic_card_founder/objects/card.dart';

import 'back_end_sceen/get_card_photo_back.dart';
import 'card_page.dart';

class GetCardByPhoto extends StatefulWidget {
  @override
  _GetCardByPhotoState createState() => _GetCardByPhotoState();
}

class _GetCardByPhotoState extends State<GetCardByPhoto> {
  GetCardPhotoBack back = GetCardPhotoBack();
  String image = "";
  Future<void> _navigatorCardPage() async {
    if (back.collection.length == 3 && back.number.length == 3) {
      CardMagic? card = await back.GetCard();
      if (card != null)
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (buildContext) => CardPage(
                      card: card,
                    )));
      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: AutoSizeText("Image by photo")),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 400,
              width: 400,
              child: (image == "") ? Container() : Image.file(File(image)),
            ),
            InkWell(
              child: Container(
                margin: EdgeInsets.all(20),
                width: 150,
                height: 40,
                color: Colors.green,
                child: AutoSizeText("Imagem da camera"),
              ),
              onTap: () async {
                image = await back.getPhotoCamera();
                print(back.collection);
                print(back.number);
                setState(() {});
                _navigatorCardPage();
              },
            ),
            InkWell(
              child: Container(
                width: 150,
                height: 40,
                color: Colors.green,
                child: AutoSizeText("Imagem da galeria"),
              ),
              onTap: () async {
                image = await back.getPhotoGallery();
                print(back.collection);
                print(back.number);
                setState(() {});
                _navigatorCardPage();
              },
            )
          ],
        ),
      ),
    );
  }
}
