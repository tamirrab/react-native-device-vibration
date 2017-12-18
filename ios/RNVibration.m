
#import "RNVibration.h"
#import <AudioToolbox/AudioToolbox.h>

@implementation RNVibration

RCT_EXPORT_MODULE()

RCT_EXPORT_METHOD(vibrate)
{
    AudioServicesPlaySystemSound(kSystemSoundID_Vibrate);
}


@end
  
