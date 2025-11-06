import 'dart:typed_data';
import 'package:flutter/services.dart' show rootBundle;

class ImageUtils {
  Future<Uint8List> loadAssetPngAsBytes(String assetPath) async {
    final byteData = await rootBundle.load(assetPath);
    return byteData.buffer.asUint8List();
  }
}