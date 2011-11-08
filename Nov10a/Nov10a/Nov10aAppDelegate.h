//
//  Nov10aAppDelegate.h
//  Nov10a
//
//  Created by Barbara Burns on 11/8/11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h> 
@class BigView;
 


@interface Nov10aAppDelegate : UIResponder <UIApplicationDelegate>{
    BigView *bigView;
    UIWindow *_window;
 
   
}


@property (strong, nonatomic) UIWindow *window;

@end
