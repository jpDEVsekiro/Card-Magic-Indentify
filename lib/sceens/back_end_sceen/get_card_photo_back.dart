import 'package:google_ml_kit/google_ml_kit.dart';
import 'package:image_picker/image_picker.dart';
import 'package:magic_card_founder/objects/card.dart';
import 'package:magic_card_founder/repositorios/cards.dart';

class GetCardPhotoBack {
  final ImagePicker _picker = ImagePicker();
  TextDetector _textDetector = GoogleMlKit.vision.textDetector();
  String collection = "", number = "";
  bool cardView = false;
  Cards api = Cards();

  Future<String> getPhotoCamera() async {
    final XFile? photo = await _picker.pickImage(source: ImageSource.camera);
    if (!(photo == null)) {
      await textDetector(photo.path);
      return photo.path;
    } else
      return "";
  }

  Future<CardMagic?> GetCard() async {
    return await api.getCard(collection, number);
  }

  Future<String> getPhotoGallery() async {
    final XFile? image = await _picker.pickImage(source: ImageSource.gallery);
    if (!(image == null)) {
      await textDetector(image.path);
      return image.path;
    } else
      return "";
  }

  Future<void> textDetector(String path) async {
    final inputImage = InputImage.fromFilePath(path);
    final recognisedText = await _textDetector.processImage(inputImage);
    print('Found ${recognisedText.blocks.length} textBlocks');
    print(recognisedText.text);
    if (recognisedText.text.toLowerCase().contains("rna")) {
      collection = "rna";
    } else if (recognisedText.text.toLowerCase().contains("grn")) {
      collection = "grn";
    } else if (recognisedText.text.toLowerCase().contains("m21")) {
      collection = "m21";
    }
    if (recognisedText.text.toLowerCase().contains("/")) {
      recognisedText.text.toLowerCase().lastIndexOf("/");
      number = recognisedText.text.substring(
          recognisedText.text.toLowerCase().lastIndexOf("/") - 3,
          recognisedText.text.toLowerCase().lastIndexOf("/"));
    }
    print(collection + " " + number);
    //textDetector(path);
  }
}
