//
//  FTPLocalTableController.h
//  Edhita
//
//  Created by t on 10/09/28.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "EdhitaAppDelegate.h"
#import "FTPRemoteTableController.h"

@interface FTPLocalTableController : UITableViewController {
	NSString *path_;
	NSMutableArray *items_;
	NSArray *images_;
	FTPRemoteTableController *remoteController_;
}

@property (nonatomic, retain) FTPRemoteTableController *remoteController;
@property (nonatomic, retain) NSMutableArray *items;

- (void)refresh;

@end
