//
//  GradientView.m
//  Gradient_Demo
//
//  Created by TheAppGuruz-New-6 on 05/04/14.
//  Copyright (c) 2014 TheAppGuruz-New-6. All rights reserved.
//

#import "GradientView.h"

@implementation GradientView
@synthesize flag,code;
- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}

// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    if(flag)
    {
        NSMutableArray *marrColors=[[NSMutableArray alloc]initWithObjects:(id)[UIColor orangeColor].CGColor,(id)[UIColor whiteColor].CGColor,(id)[UIColor greenColor].CGColor,nil];
        CGContextRef ref = UIGraphicsGetCurrentContext();
        CFArrayRef colors =(__bridge_retained CFArrayRef)([NSArray arrayWithArray:marrColors]);
        CGColorSpaceRef colorSpc = CGColorSpaceCreateDeviceRGB();
        CGGradientRef gradient = CGGradientCreateWithColors(colorSpc, colors, Nil);
        if(code==1)
            CGContextDrawLinearGradient(ref, gradient , CGPointMake(0.0, 0.0), CGPointMake(0,self.frame.size.height), kCGGradientDrawsAfterEndLocation);
        else
            CGContextDrawRadialGradient(ref, gradient, CGPointMake(self.frame.size.width/2,self.frame.size.height/2), 0, CGPointMake(self.frame.size.width/2,self.frame.size.height/2), 330, 0);
        CGColorSpaceRelease(colorSpc);
        CGGradientRelease(gradient);
    }
}


@end
