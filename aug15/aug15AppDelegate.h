//
//  aug15AppDelegate.h
//  aug15
//
//  Created by Sir Andrew on 8/15/13.
//  Copyright (c) 2013 edu.nyu.spcs. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MediaPlayer/MediaPlayer.h>

@class TableViewController;

@interface aug15AppDelegate : UIResponder <UIApplicationDelegate>{
	UIWindow *_window;
    MPMoviePlayerController *controller;
    TableViewController *view;

}

@end


