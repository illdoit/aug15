//
//  TableViewController.h
//  Tree
//
//  Created by NYU User on 12/15/11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
@class Model;

@interface TableViewController: UITableViewController {
	Model *model;
	NSIndexPath *indexPath;	//indicates currently displayed tree
        //UIButton *button6;
}

- (id) initWithStyle: (UITableViewStyle) style
	model: (Model *) m
	indexPath: (NSIndexPath *) p;
@end
