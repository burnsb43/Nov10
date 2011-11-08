////
//  MainView.h
//  Nov10
//
//  Created by Barbara Burns on 11/6/11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MainView : UIView {
    // holds the 4 subviews we transition between
    NSArray *views;
    
    // index in views of the currently displayed little view: 0,1,2,3
    NSUInteger index;
    
    CGPoint pointBegan; // beginning and current points of touch
    CGPoint pointMoved;
    
    NSTimeInterval timeBegan;
    NSTimeInterval timeMoved;

}

@end
