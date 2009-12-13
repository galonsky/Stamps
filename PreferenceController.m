//
//  PreferenceController.m
//  Stamps
//
//  Created by Alex Galonsky on 12/13/09.
//  Copyright 2009 __MyCompanyName__. All rights reserved.
//

#import "PreferenceController.h"


@implementation PreferenceController

- (id)init
{
	if (![super initWithWindowNibName:@"Preferences"]) 
		return nil;
	
	return self;
}

- (void) updateServer
{
	server = [serverField stringValue];
}

- (void) updateUserName
{
	userName = [userNameField stringValue];
}

- (void) updatePassword
{
	password = [passwordField stringValue];
}

- (void) updatePort
{
	port = [portField intValue];
}

- (IBAction) save:(id) sender
{
	[self updateServer];
	[self updateUserName];
	[self updatePassword];
	[self updatePort];
	[self close];
}

- (IBAction) cancel:(id) sender
{
	[self close];
}


@end
