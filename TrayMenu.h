

#import <Foundation/Foundation.h>
#import "Controller.h"


@interface TrayMenu : NSObject {
@private
	NSStatusItem *_statusItem;
	Controller *myController;
}
- (id)initWithController:(Controller *)ctrl;
@end