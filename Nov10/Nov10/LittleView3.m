//
//  LittleView3.m
//  Nov10
//
//  Created by Barbara Burns on 11/6/11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import "LittleView3.h"

@implementation LittleView3

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
        self.backgroundColor = [UIColor blackColor];
        startrek = [UIImage imageNamed: @"star_trek.jpg"];	
        if (startrek == nil) {
            NSLog(@"could not find the image");
            return nil;
        }
        
    }
    return self;
}

 
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
    - (void) drawRect: (CGRect) rect
    {
        // Drawing code
        [startrek drawAtPoint: CGPointZero];
        [UIView animateWithDuration: 5
                              delay: 0
                            options: UIViewAnimationOptionRepeat | UIViewAnimationOptionAutoreverse | UIViewAnimationOptionCurveEaseIn
         
                         animations: ^{
                             CGAffineTransform s = CGAffineTransformMakeScale(1.05,  .35);
                             CGAffineTransform r = CGAffineTransformMakeRotation(270 * M_PI / 180);
                              
                             self.transform = CGAffineTransformConcat(r, s);                     }
                         completion: NULL
         ];

            
    }
    
    
    @end