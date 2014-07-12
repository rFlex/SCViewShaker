//
//  SCViewController.m
//  SCViewShakerExample
//
//  Created by Simon CORSIN on 12/07/14.
//
//

#import "SCViewController.h"
#import "UIView+Shake.h"

@interface SCViewController ()

@end

@implementation SCViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
}

- (BOOL)prefersStatusBarHidden {
    return YES;
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    
    [self.label1 beginShakingWithOptions:SCShakeOptionsDirectionRotate | SCShakeOptionsForceInterpolationExpDown | SCShakeOptionsAtEndRestart | SCShakeOptionsAutoreverse force:0.15 duration:1 iterationDuration:0.03 completionHandler:nil];
    
    [self.label2 beginShakingWithOptions:SCShakeOptionsDirectionHorizontal | SCShakeOptionsForceInterpolationNone | SCShakeOptionsAtEndContinue force:0.05 duration:1 iterationDuration:0.03 completionHandler:nil];
    
    [self.label3 beginShakingWithOptions:SCShakeOptionsDirectionHorizontalAndVertical | SCShakeOptionsForceInterpolationRandom | SCShakeOptionsAtEndContinue force:0.3 duration:1 iterationDuration:0.02 completionHandler:nil];
    
    [self.label4 beginShakingWithOptions:SCShakeOptionsDirectionRotate | SCShakeOptionsForceInterpolationExpDown | SCShakeOptionsAtEndRestart force:0.15 duration:0.75 iterationDuration:0.03 completionHandler:nil];
}

- (void)viewDidDisappear:(BOOL)animated {
    [super viewDidDisappear:animated];
    
    [self.label1 endShaking];
    [self.label2 endShaking];
    [self.label3 endShaking];
    [self.label4 endShaking];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
