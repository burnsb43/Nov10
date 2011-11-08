//
//  MainView.m
//  Nov10
//
//  Created by Barbara Burns on 11/6/11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import "MainView.h"
#import "LittleView0.h"
#import "LittleView1.h"
#import "LittleView2.h"
#import "LittleView3.h"

@implementation MainView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
        views = [NSArray arrayWithObjects:
                 [[LittleView0 alloc] initWithFrame: self.bounds],
                 [[LittleView1 alloc] initWithFrame: self.bounds],
                 [[LittleView2 alloc] initWithFrame: self.bounds],
                 [[LittleView3 alloc] initWithFrame: self.bounds],
                 nil
                 ];
        
        index = 0;     // LittleView0 is the one that's initially visible
        [self addSubview: [views objectAtIndex: index]];

        pointBegan = CGPointZero;
        pointMoved = CGPointZero;
        
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
    
     
    NSUInteger newIndex = 1 + index;
    
    if (newIndex == 4) {
        newIndex = 0;
    }
    
    
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
- (void) touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event {
    
    // assumes a swipe has just ended, can make it more complicated to distinguish between direction of swipe
    // and then UIViewAnimationOptionTransitionCurlRight or other
    

    NSUInteger newIndex = 1 + index;
    
    if (newIndex == 4) {
        newIndex = 0;
    }
    
    
    
     [UIView transitionFromView:[views objectAtIndex: index]
                         toView:[views objectAtIndex: newIndex]
                       duration:2.25
                        options:UIViewAnimationOptionTransitionCurlUp
                     completion:NULL
      ];
    
    index = newIndex;
}
*/
/*
 //   This code is for determining direction without gesture recognizer

- (void) touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    UITouch *touch = [touches anyObject];
    pointBegan = [touch locationInView: self];
    timeBegan = touch.timestamp;
    
}

- (void) touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event {
    UITouch *touch = [touches anyObject];
    pointMoved = [touch locationInView: self];
    timeMoved = touch.timestamp;
    
    CGFloat horizontal = pointMoved.x - pointBegan.x;
    CGFloat vertical = pointMoved.y - pointBegan.y;
    CGFloat distance = hypotf(horizontal, vertical);
    CGFloat angle = atan2f(-vertical, horizontal) * 180 / M_PI;
//    CGFloat duration = timeMoved - timeBegan;
  
   
    
    NSUInteger newIndex = 1 + index;
    
    if (newIndex == 4) {
        newIndex = 0;
    }
    
    
    if (distance > 50) {
        
    // swipe from left
    if (angle <= -135) {
        [UIView transitionFromView: [views objectAtIndex: index] 
                            toView: [views objectAtIndex: newIndex] 
                            duration:1 
                            options:UIViewAnimationOptionTransitionFlipFromLeft 
                            completion:NULL
         ];
            
    }else
    
    // Swipe down
    if (angle <= -45) {
        [UIView transitionFromView: [views objectAtIndex: index] 
                            toView: [views objectAtIndex: newIndex] 
                            duration:1 
                            options:UIViewAnimationOptionTransitionCurlDown
                        completion:NULL
         ];
       
    }else
    
    // swipe from right
    if (angle <= 45) {
        [UIView transitionFromView: [views objectAtIndex: index] 
                            toView: [views objectAtIndex: newIndex] 
                          duration:1 
                           options:UIViewAnimationOptionTransitionFlipFromRight
                        completion:NULL
         ];
        
    }else
    
    // swipe up
    if (angle <=  135) {
        [UIView transitionFromView: [views objectAtIndex: index] 
                            toView: [views objectAtIndex: newIndex] 
                          duration:1 
                           options:UIViewAnimationOptionTransitionCurlUp
                        completion:NULL
         ];
        
    } 
    }
    
    index = newIndex;
}
   
 */
/* 
 // Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
    }
*/ 

@end
