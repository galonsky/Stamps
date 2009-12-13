
#import "Controller.h"
#import <Cocoa/Cocoa.h>
#import "TrayMenu.h"
#include <math.h>
#include <unistd.h>
#include <CoreFoundation/CoreFoundation.h>
#import <Foundation/Foundation.h> 

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

@end
