import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:gdt_action_plugin/gdt_action_plugin.dart';

void main() {
  const MethodChannel channel = MethodChannel('gdt_action_plugin');

  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getPlatformVersion', () async {
    expect(await GdtActionPlugin.platformVersion, '42');
  });
}
