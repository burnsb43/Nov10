//
//  Nov10AppDelegate.h
//  Nov10
//
//  Created by Barbara Burns on 11/8/11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
@class MainView;

@interface Nov10AppDelegate : UIResponder <UIApplicationDelegate>{
    MainView *mainView;
    UIWindow *_window;
}

@property (strong, nonatomic) UIWindow *window;

@end
