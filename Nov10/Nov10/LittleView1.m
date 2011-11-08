//
//  LittleView1.m
//  Nov10
//
//  Created by Barbara Burns on 11/7/11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import "LittleView1.h"

@implementation LittleView1

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
            self.backgroundColor = [UIColor blueColor];
    }
    return self;
}

 
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
    UIFont *font = [UIFont systemFontOfSize: 20];
    [@"This is the 2nd Screen!" drawAtPoint: CGPointZero withFont: font];
}
 

@end
