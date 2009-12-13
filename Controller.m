
#import "Controller.h"
#import <Cocoa/Cocoa.h>
#import "TrayMenu.h"
#include <math.h>
#include <unistd.h>
#include <CoreFoundation/CoreFoundation.h>
#import <Foundation/Foundation.h>
#import "PreferenceController.h";

@implementation Controller

- (void) start
{
	NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];	
    [NSApplication sharedApplication];

	//add traymenu
    TrayMenu *menu = [[TrayMenu alloc] initWithController:self];
    [NSApp setDelegate:menu];
    [NSApp run];
	
	[pool release];
}

+ (void)initialize
{
//	NSMutableDictionary *defaultValues = [NSMutableDictionary dictionary];
//	[defaultValues setObject:@"" forKey:@"server"];
//	[defaultValues setObject:@"" forKey:@"username"];
//	[defaultValues setObject:@"" forKey:@"password"];
//	[defaultValues setObject:[NSNumber numberWithInt:993] forKey:@"port"];
//	
//	[[NSUserDefaults standardUserDefaults] registerDefaults:defaultValues];
}

- (void) showPrefs
{
	if(!preferenceController)
	{
		preferenceController = [[PreferenceController alloc] init];
	}
	[preferenceController showWindow:self];
}

@end
