import 'dart:async';

import 'package:flutter/services.dart';

class TencentGdtPlugin {
  static const MethodChannel _channel =
      const MethodChannel('tencent_gdt_plugin');

  static Future<String> get platformVersion async {
    final String version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }
}
