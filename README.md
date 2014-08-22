SCViewShaker
============


## About
A highly configurable UIView category for shaking a view. You start shaking your views with a one liner :). It supports a few different shaking styles (horizontal, vertical, rotate) and let you configure the duration, the speed and the shake strength.

![](shake.gif)

## Usage

SCViewShaker works as a category on UIView. It provides the following methods:
     
```objective-c
- (void)shake;

- (void)shakeWithOptions:(SCShakeOptions)shakeOptions force:(CGFloat)force duration:(CGFloat)duration iterationDuration:(CGFloat)iterationDuration completionHandler:(ShakeCompletionHandler)completionHandler
     
- (void)endShake
     
@property (readonly, nonatomic) BOOL isShaking
```

*shake* does a small shake on the view for a short amount of time. It was added as a convenience method.


*shakeWithOptions:force:duration:iterationDuration:completionHandler:* performs a new shake action with the complete control on how the shake will be done. It takes the follow parameters:

**shakeOptions** is an enum of options that can be activated by using the OR operator (like SCShakeOptionsDirectionRotate | SCShakeOptionsForceInterpolationNone).

**force** is the coefficient of force to apply on each shake iteration (typically between 0 and 1 even though nothing prevents you for setting a higher value if you want).

**duration** is the total duration of the shaking motion. This may be ignored depending of the options you set.
iterationDuration is how long each shake iteration will last. You may want to set a very low value (like 0.02) if you want a proper shake effect.

**completionHandler**, if not null, is the block that will be invoked when the shake finishes.

#### Simple example

```objective-c
UIView *view = ...; // Grab a view from somewhere
[view beginShakingWithOptions:SCShakeOptionsDirectionRotate | SCShakeOptionsForceInterpolationExpDown | SCShakeOptionsAtEndRestart | SCShakeOptionsAutoreverse force:0.15 duration:1 iterationDuration:0.03 completionHandler:nil];
```

## Options

#### Direction

The direction affects the visual effect of the shake effect. All value bounds shown here are based on a force of 1.

**SCShakeOptionsDirectionRotate**: The view will rotate from -90° to 90°.

**SCShakeOptionsDirectionHorizontal**: The view will move horizontally from -frameWidth to +frameWidth.

**SCShakeOptionsDirectionVertical**: The view will move vertically from -frameHeight to +frameHeight.

**SCShakeOptionsDirectionHorizontalAndVertical**: The view will randomly move horizontally or vertically.


#### Force interpolation

The force interpolation affects how the force changes in the time.

**SCShakeOptionsForceInterpolationNone**: The force will remain always the same as the one you provided.

**SCShakeOptionsForceInterpolationLinearUp**: The force will linearly changes from 0 to the one you provided.

**SCShakeOptionsForceInterpolationLinearDown**: The force will linearly changes from the one you provided to zero.

**SCShakeOptionsForceInterpolationExpUp**: The force will exponentialy changes from 0 to the one you provided.

**SCShakeOptionsForceInterpolationExpDown**: The force will exponentialy changes from the one you provided to zero.

**SCShakeOptionsForceInterpolationRandom**: The force will randomly change between 0 and the one you provided.

#### Action at end

The action at end defines what should happen when the shake completes

**SCShakeOptionsAtEndRestart**: The shake will be restarted automatically from the beginning.

**SCShakeOptionsAtEndComplete**: The shake will stop.

**SCShakeOptionsAtEndContinue**: The shake will contnue endlessly. The force won't change anymore when it reaches the duration.

#### Misc options

**SCShakeOptionsAutoreverse**: When the shake reaches the end, the shake will continue in the reverse order. Setting this value will double the effective **duration**.

## Podfile
If you are using cocoapods, you can use this project with the following Podfile

```ruby
pod "SCViewShaker", "~> 1.0"
```
