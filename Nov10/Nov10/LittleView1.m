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
        // Initialization code
        // self.backgroundColor = [UIColor blueColor];
        textView = [[UITextView alloc] initWithFrame: self.bounds];
        textView.backgroundColor = [UIColor whiteColor];
        textView.textColor = [UIColor blackColor];
        textView.font = [UIFont fontWithName: @"Papyrus" size: 16.75];
        textView.editable = NO; // Don't pop up a keyboard.
        
        textView.text = 
     
        @"\tIt was the best of times, \n"
        @"\tit was the worst of times,\n"
        @"\tit was the age of wisdom,  \n"
        @"\tit was the age of foolishness,\n"
        @"\tit was the epoch of belief,\n"
        @"\tit was the epoch of incredulity, \n"
        
        @"\tit was the season of Light,\n"
        @"\tit was the season of Darkness,\n"
        @"\tit was the spring of hope,\n"
        @"\tit was the winter of despair,\n"
        @"\twe had everything before us,\n"
        @"\twe had nothing before us,\n"
        @"\twe were all going direct to Heaven,\n"
        @"\twe were all going direct the other way,\n"
        @"—in short, the period was like the present.\n\n"  ;
        
        textView.text = [textView.text stringByAppendingFormat:
                         @"\t\tTale of Two Cities" ]; 
        
        [self addSubview: textView];
        
    }
    return self;
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
