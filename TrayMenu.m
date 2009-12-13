
#import "TrayMenu.h"
#import "Controller.h"

@implementation TrayMenu

- (id)initWithController:(Controller *)ctrl
{
	[super init];
	myController = ctrl;
	return self;
}
	

- (void) actionQuit:(id)sender {
	[NSApp terminate:sender];
}

- (NSMenu *) createMenu {
	NSZone *menuZone = [NSMenu menuZone];
	NSMenu *menu = [[NSMenu allocWithZone:menuZone] init];
	NSMenuItem *menuItem;
	
	// Add Quit Action
	menuItem = [menu addItemWithTitle:@"Quit"
							   action:@selector(actionQuit:)
						keyEquivalent:@""];
	[menuItem setTarget:self];
	
	return menu;
}

- (void) applicationDidFinishLaunching:(NSNotification *)notification {
	NSMenu *menu = [self createMenu];
	
	_statusItem = [[[NSStatusBar systemStatusBar]
					statusItemWithLength:NSSquareStatusItemLength] retain];
	[_statusItem setMenu:menu];
	[_statusItem setHighlightMode:YES];
	[_statusItem setToolTip:@"Stamps"];
	[_statusItem setImage:[NSImage imageNamed:@"stamp.png"]];
	
	[menu release];
}

@end