//
//  LittleView2.m
//  Nov10
//
//  Created by Barbara Burns on 11/6/11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import "LittleView2.h"

@implementation LittleView2

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
        self.backgroundColor = [UIColor blackColor];
        
        //Trailing blank to avoid cutting off last letter
        //because italic leans to the right.
        NSString *text = @"    STAR  TREK - Where no one has gone before . . .  ";
        
        
        
        CGRect b = self.bounds;
        UIFont *font = [UIFont italicSystemFontOfSize:  b.size.height / 2];
        CGSize size = [text sizeWithFont: font];
        
        CGRect f = CGRectMake(
                              b.size.width,
                              b.size.width /2,
                              size.width,
                              size.height
                              );
 
        label = [[UILabel alloc] initWithFrame: f];
        label.font = font;
        label.backgroundColor = [UIColor clearColor];
        label.textColor = [UIColor whiteColor];
        label.text = text;
        [self addSubview: label];
    }
    return self;
}


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.

- (void) drawRect: (CGRect) rect
{
    // Drawing code
    [UIView animateWithDuration: 40
                          delay: 2
                        options: UIViewAnimationOptionCurveLinear
                     animations: ^{
                         //Move the label far enough to the left
                         //so that it's out of the View.
                         label.center = CGPointMake(
                                                    -label.bounds.size.width / 2,
                                                    self.bounds.size.height / 2
                                                    );
                     }
                     completion: NULL
     ];
}



@end
