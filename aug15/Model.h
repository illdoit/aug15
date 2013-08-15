//
//  Model.h
//  Tree
//
//  Created by NYU User on 12/15/11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Model: NSObject {
	NSArray *tree;
    NSArray *tree2;
}

//Each item in the Model is identified by an NSIndexPath.
//These methoods take an NSIndexPath and return informatioon about that item.

- (NSString *) name: (NSIndexPath *) indexPath;
- (NSUInteger) numberOfRows: (NSIndexPath *) indexPath;
- (NSString *) text: (NSIndexPath *) indexPath row: (NSUInteger) row;
@end
