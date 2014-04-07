//
//  ViewController.m
//  Gradient_Demo
//
//  Created by TheAppGuruz-New-6 on 05/04/14.
//  Copyright (c) 2014 TheAppGuruz-New-6. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize vwGradient;
- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)btnGenerateGradientClicked:(id)sender
{
    vwGradient.flag=YES;
    vwGradient.code=1;
    [vwGradient setNeedsDisplay];
}
- (IBAction)btnRadialGradientClicked:(id)sender
{
    vwGradient.flag=YES;
    vwGradient.code=2;
    [vwGradient setNeedsDisplay];
}
@end
