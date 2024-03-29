import 'dart:async';

import 'package:flutter/services.dart';

class GalleryKit {
  static const MethodChannel _channel = const MethodChannel('gallery_kit');

  static Future<String> get platformVersion async {
    final String version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }
}
