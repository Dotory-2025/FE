import 'dart:typed_data';
import 'package:flutter/services.dart' show rootBundle;
import 'package:gallery_saver_plus/gallery_saver.dart';

class ImageUtils {
  Future<Uint8List> loadAssetPngAsBytes(String assetPath) async {
    final byteData = await rootBundle.load(assetPath);
    return byteData.buffer.asUint8List();
  }

  Future<String> saveNetworkImage(String imageUrl) async {
    final bool? success = await GallerySaver.saveImage(imageUrl);
    return success == true ? '이미지를 저장했습니다.' : '이미지 저장을 실패했습니다.';
  }
}