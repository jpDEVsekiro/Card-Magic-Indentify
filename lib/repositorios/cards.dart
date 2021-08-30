import 'package:dio/dio.dart';
import 'package:magic_card_founder/dictionary/APIs.dart';
import 'package:magic_card_founder/objects/card.dart';

class Cards {
  Future<CardMagic?> getCard(String collection, String number) async {
    Response response;
    try {
      response = await Dio().get(baseApi + cardsApi + "/$collection/$number");
    } on DioError catch (e) {
      response = e.response!;
    }
    if (response.statusCode == 200)
      return CardMagic.fromJson(response.data);
    else
      return null;
  }
}
