#import "TencentGdtPlugin.h"
#import "GDTAction.h"
@implementation TencentGdtPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  FlutterMethodChannel* channel = [FlutterMethodChannel
      methodChannelWithName:@"tencent_gdt_plugin"
            binaryMessenger:[registrar messenger]];
  TencentGdtPlugin* instance = [[TencentGdtPlugin alloc] init];
  [registrar addMethodCallDelegate:instance channel:channel];
}

- (void)handleMethodCall:(FlutterMethodCall*)call result:(FlutterResult)result {
  if ([@"getPlatformVersion" isEqualToString:call.method]) {
      [GDTAction init:@"1110195487" secretKey:@"8193d3b1a26687a89d0316541cf05c14"];
    result([@"iOS " stringByAppendingString:[[UIDevice currentDevice] systemVersion]]);
  } else {
    result(FlutterMethodNotImplemented);
  }
}

@end
