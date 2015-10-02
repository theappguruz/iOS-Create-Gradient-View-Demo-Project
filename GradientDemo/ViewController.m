//
//  ViewController.m
//  GradientDemo
//
//  Created by TheAppGuruz-New-6 on 02/10/15.
//  Copyright © 2015 TheAppGuruz-New-6. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)btnRadialClicked:(id)sender
{
    self.vwGradient.flag=YES;
    self.vwGradient.code=2;
    [self.vwGradient setNeedsDisplay];

}
- (IBAction)btnLinearClicked:(id)sender
{
    self.vwGradient.flag=YES;
    self.vwGradient.code=1;
    [self.vwGradient setNeedsDisplay];}

@end
