//
//  FlutterNativeBridgePlugin.m
//  Runner
//
//  Created by sinosun on 2020/9/18.
//

#import "FlutterNativeBridgePlugin.h"

@implementation FlutterNativeBridgePlugin
+(void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar> *)registrar{
    FlutterMethodChannel* channel = [FlutterMethodChannel
      methodChannelWithName:@"com.example.myApp"
      binaryMessenger:[registrar messenger]];
    FlutterNativeBridgePlugin *instance = [[FlutterNativeBridgePlugin alloc] init];
    [registrar addMethodCallDelegate:instance channel:channel];
}

-(void)handleMethodCall:(FlutterMethodCall *)call result:(FlutterResult)result{
    if ([@"getBatteryLevel" isEqualToString:call.method]) {
        int batteryLevel = [self getBatteryLevel];
        if (batteryLevel == -1) {
          result([FlutterError errorWithCode:@"UNAVAILABLE"
                                     message:@"Battery info unavailable"
                                     details:nil]);
        } else {
          result(@(batteryLevel));
        }
    }else if([call.method isEqualToString:@"getVersionName"]){
          result([self getVersionName]);
    } else {
        result(FlutterMethodNotImplemented);
    }
}

- (int)getBatteryLevel {
  UIDevice* device = UIDevice.currentDevice;
  device.batteryMonitoringEnabled = YES;
  if (device.batteryState == UIDeviceBatteryStateUnknown) {
    return -1;
  } else {
    return (int)(device.batteryLevel * 100);
  }
}

-(NSString *)getVersionName{
    UIDevice* device = UIDevice.currentDevice;
    return device.name;
}

@end
