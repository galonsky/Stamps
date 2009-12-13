//
//  PreferenceController.h
//  Stamps
//
//  Created by Alex Galonsky on 12/13/09.
//  Copyright 2009 __MyCompanyName__. All rights reserved.
//

#import <Cocoa/Cocoa.h>


@interface PreferenceController : NSWindowController {
	IBOutlet NSTextField *serverField;
	IBOutlet NSTextField *userNameField;
	IBOutlet NSTextField *passwordField;
	IBOutlet NSTextField *portField;
	NSString *server;
	NSString *userName;
	int port;
	NSString *password;
}

- (void) updateServer;
- (void) updateUserName;
- (void) updatePassword;
- (void) updatePort;
- (IBAction) save:(id)sender;
- (IBAction) cancel:(id)sender;

@end
