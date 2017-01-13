//
//  Device.m
//  DeviceName
//
//  Created by Wisemen on 13/01/2017.
//
//

#import "DeviceName.h"

@implementation DeviceName
@synthesize callbackId;


-(void) GetDevice:(CDVInvokedUrlCommand *)command

{
    
    self.callbackId = command.callbackId;
    
    
    NSString *DeviceName ;
    NSString * uuid;
    
    
    UIDevice *deviceInfo = [UIDevice currentDevice];
    
    DeviceName = deviceInfo.name;
   
    // uuid = [[[UIDevice currentDevice] identifierForVendor] UUIDString];
    
    
    
    //DeviceName = [DeviceName stringByAppendingString:@","];
    
   // DeviceName = [DeviceName stringByAppendingString:uuid
                 // ];
    
    
    CDVPluginResult* result = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsString:DeviceName];
    [self.commandDelegate sendPluginResult:result callbackId:self.callbackId];
    
    
}

@end
