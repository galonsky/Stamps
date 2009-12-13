

#import <Cocoa/Cocoa.h>
@class PreferenceController;

@interface Controller : NSObject {
	PreferenceController *preferenceController;
}

- (void) start;
- (void) showPrefs;
@end
