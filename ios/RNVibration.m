
#import "RNVibration.h"
#import <AudioToolbox/AudioToolbox.h>
#import <AudioToolbox/AudioServices.h>
void AudioServicesStopSystemSound(SystemSoundID inSystemSoundID);
void AudioServicesPlaySystemSoundWithVibration(SystemSoundID inSystemSoundID,id arg,NSDictionary* vibratePattern);

@implementation RNVibration

RCT_EXPORT_MODULE()

RCT_EXPORT_METHOD(vibrate:(NSUInteger *)vibrationMS)
{
    
    
    
    NSMutableDictionary* dict = [NSMutableDictionary dictionary];
    NSMutableArray* arr = [NSMutableArray array ];
    
    [arr addObject:[NSNumber numberWithBool:YES]];
    [arr addObject:[NSNumber numberWithInt:vibrationMS]];
    
    [dict setObject:arr forKey:@"VibePattern"];
    [dict setObject:[NSNumber numberWithInt:1] forKey:@"Intensity"];
    
    
    AudioServicesPlaySystemSoundWithVibration(4095,nil,dict);
    
    
    
    
    
    // 'Peek' feedback (weak boom)
    NSUInteger peek = (1519);
    
    // 'Pop' feedback (strong boom)
    NSUInteger pop = (1520);
    
    // 'Cancelled' feedback (three sequential weak booms)
    NSUInteger cancelled = (1521);
    
    // 'Try Again' feedback (week boom then strong boom)
    NSUInteger tryAgain = (1102);
    
    // 'Failed' feedback (three sequential strong booms)
    NSUInteger failed = (1107);
    
    
    AudioServicesPlaySystemSound(peek);
    AudioServicesPlaySystemSound(pop);
    AudioServicesPlaySystemSound(cancelled);
    AudioServicesPlaySystemSound(tryAgain);
    AudioServicesPlaySystemSound(failed);
    
    
}

@end
