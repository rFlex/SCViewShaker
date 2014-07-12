SCViewShaker
============


## About
A highly configurable UIView category for shaking a view. You start shaking your views with a one liner :).

![](shake.gif)

## Usage

SCViewShaker works as a category on UIView. It provides the following new methods:
     
     - (void)beginShakingWithOptions:(SCShakeOptions)shakeOptions force:(CGFloat)force duration:(CGFloat)duration iterationDuration:(CGFloat)iterationDuration completionHandler:(ShakeCompletionHandler)completionHandler
     
     - (void)endShaking
     
     @property (readonly, nonatomic) BOOL isShaking

shakeOptions is an enum of options that can be activated by using the OR operator (like SCShakeOptionsDirectionRotate | SCShakeOptionsForceInterpolationNone)
force is the coefficient of force to apply on each shake iteration (typically between 0 and 1 even though nothing prevents you for setting a higher value if you want)
duration is the total duration of the shaking motion. This may be ignored depending of the options you set.
iterationDuration is how long each shake iteration will last. You may want to set a very low value (like 0.02) if you want a proper shake effect.
completionHandler, if not null, is the block that will be invoked when the shake finishes.


Simple example

    UIView *view = ...; // Grab a view from somewhere
    [view beginShakingWithOptions:SCShakeOptionsDirectionRotate | SCShakeOptionsForceInterpolationExpDown | SCShakeOptionsAtEndRestart | SCShakeOptionsAutoreverse force:0.15 duration:1 iterationDuration:0.03 completionHandler:nil];
    
    
