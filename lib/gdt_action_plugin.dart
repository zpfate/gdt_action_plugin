import 'dart:async';

import 'package:flutter/services.dart';

class GdtActionPlugin {
  static const MethodChannel _channel =
      const MethodChannel('gdt_action_plugin');

  static Future<String> get platformVersion async {
    final String version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }
}
