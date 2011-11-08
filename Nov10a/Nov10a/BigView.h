//
//  BigView.h
//  Nov10a
//
//  Created by Barbara Burns on 11/8/11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BigView : UIView {
    // holds the two subviews we transition between
    NSArray *views;
    
    //index in views of currently displayed little view 0 or 1
    NSUInteger index;
}

@end
