//
//  BigView.m
//  Nov10a
//
//  Created by Barbara Burns on 11/8/11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import "BigView.h"
#import "LittleView0.h"
#import "LittleView1.h"
 

@implementation BigView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
        
        views = [NSArray arrayWithObjects: 
                 [[LittleView0 alloc] initWithFrame: self.bounds],
                 [[LittleView1 alloc] initWithFrame: self.bounds],
                 nil
                 ];
        
        index = 0;  //LitteView0 is the one that's initially visible
        [self addSubview: [views objectAtIndex: index]];
        
        
        UISwipeGestureRecognizer *recognizer = [[UISwipeGestureRecognizer alloc]
                                                initWithTarget: self action: @selector(swipe:)
                                                ];
		recognizer.direction = UISwipeGestureRecognizerDirectionRight;
		[self addGestureRecognizer: recognizer];
        
		recognizer = [[UISwipeGestureRecognizer alloc]
                      initWithTarget: self action: @selector(swipe:)
                      ];
		recognizer.direction = UISwipeGestureRecognizerDirectionLeft;
		[self addGestureRecognizer: recognizer];
        
		recognizer = [[UISwipeGestureRecognizer alloc]
                      initWithTarget: self action: @selector(swipe:)
                      ];
		recognizer.direction = UISwipeGestureRecognizerDirectionUp;
		[self addGestureRecognizer: recognizer];
        
		recognizer = [[UISwipeGestureRecognizer alloc]
                      initWithTarget: self action: @selector(swipe:)
                      ];
		recognizer.direction = UISwipeGestureRecognizerDirectionDown;
		[self addGestureRecognizer: recognizer];
        
        
              
                  
    }
    return self;
}


- (void) swipe: (UISwipeGestureRecognizer *) recognizer {
//	CGPoint p = [recognizer locationInView: self];   // unused variable?
    
    NSUInteger newIndex = 1 - index;    // toggle the index

    
    
	//NSString *direction = @"unknown";
	if (recognizer.direction == UISwipeGestureRecognizerDirectionRight) {

        [UIView transitionFromView:[views objectAtIndex:index] 
                            toView:[views objectAtIndex: newIndex]
                          duration:2.25 
                            options: UIViewAnimationOptionTransitionFlipFromRight 
                            //options:UIViewAnimationOptionTransitionCurlUp       
                        completion:NULL
         ];
         
	} else if (recognizer.direction == UISwipeGestureRecognizerDirectionLeft) {
		[UIView transitionFromView:[views objectAtIndex:index] 
                            toView:[views objectAtIndex: newIndex]
                          duration:2.25 
                           options: UIViewAnimationOptionTransitionFlipFromLeft 
         //options:UIViewAnimationOptionTransitionCurlUp       
                        completion:NULL
         ];
	} else if (recognizer.direction == UISwipeGestureRecognizerDirectionUp) {
		[UIView transitionFromView:[views objectAtIndex:index] 
                            toView:[views objectAtIndex: newIndex]
                          duration:2.25 
                           options: UIViewAnimationOptionTransitionCurlUp     
                        //options:UIViewAnimationOptionTransitionCurlUp       
                        completion:NULL
         ];	} else if (recognizer.direction == UISwipeGestureRecognizerDirectionDown) {
            [UIView transitionFromView:[views objectAtIndex:index] 
                                toView:[views objectAtIndex: newIndex]
                              duration:2.25 
                              
                            options:UIViewAnimationOptionTransitionCurlDown      
                            completion:NULL
             ];	}
    
    index = newIndex;
}


/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

@end
