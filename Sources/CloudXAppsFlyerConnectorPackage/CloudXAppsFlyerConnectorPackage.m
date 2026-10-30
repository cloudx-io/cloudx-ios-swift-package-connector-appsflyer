#import <CloudXAppsFlyerConnector/CloudXAppsFlyerConnector.h>

@interface CloudXAppsFlyerConnectorPackageLoader : NSObject
@end

@implementation CloudXAppsFlyerConnectorPackageLoader

+ (void)load {
    CloudXAppsFlyerConnectorRegister();
}

@end
