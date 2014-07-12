//
//  UIView+Shake.h
//  Mitch
//
//  Created by Simon CORSIN on 11/07/14.
//  Copyright (c) 2014 Mindie. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef enum : NSUInteger {
    SCShakeOptionsDirectionRotate = 0,
    SCShakeOptionsDirectionHorizontal = 1,
    SCShakeOptionsDirectionVertical = 2,
    SCShakeOptionsDirectionHorizontalAndVertical = 3,
    SCShakeOptionsForceInterpolationNone = 4,
    SCShakeOptionsForceInterpolationLinearUp = 8,
    SCShakeOptionsForceInterpolationLinearDown = 16,
    SCShakeOptionsForceInterpolationExpUp = 32,
    SCShakeOptionsForceInterpolationExpDown = 64,
    SCShakeOptionsForceInterpolationRandom = 128,
    SCShakeOptionsAtEndRestart = 256,
    SCShakeOptionsAtEndComplete = 512,
    SCShakeOptionsAtEndContinue = 1024,
    SCShakeOptionsAutoreverse = 2048
    
} SCShakeOptions;

typedef void(^ShakeCompletionHandler)();

@interface UIView (Shake)

@property (readonly, nonatomic) BOOL isShaking;

- (void)beginShakingWithOptions:(SCShakeOptions)shakeOptions force:(CGFloat)force duration:(CGFloat)duration iterationDuration:(CGFloat)iterationDuration completionHandler:(ShakeCompletionHandler)completionHandler;

- (void)endShaking;

@end
