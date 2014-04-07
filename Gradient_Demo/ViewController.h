//
//  ViewController.h
//  Gradient_Demo
//
//  Created by TheAppGuruz-New-6 on 05/04/14.
//  Copyright (c) 2014 TheAppGuruz-New-6. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "GradientView.h"
@interface ViewController : UIViewController
- (IBAction)btnGenerateGradientClicked:(id)sender;

@property (weak, nonatomic) IBOutlet GradientView *vwGradient;
- (IBAction)btnRadialGradientClicked:(id)sender;

@end
