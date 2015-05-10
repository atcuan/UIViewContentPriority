//
//  UIView+UIViewContentPriority.m
//  CellSelfSizing
//
//  Created by Moch Xiao on 5/10/15.
//  Copyright (c) 2015 Moch Xiao. All rights reserved.
//

#import "UIView+UIViewContentPriority.h"

@implementation UIView (UIViewContentPriority)

#pragma mark - 

+ (void)uiv_setHorizontalContentHuggingPriorityOrderedAscendingForViews:(NSArray *)views {
    UIView *firstView = views.firstObject;
    UILayoutPriority layoutPriority = [firstView contentHuggingPriorityForAxis:UILayoutConstraintAxisHorizontal];
    for (UIView *view in views) {
        [view setContentHuggingPriority:layoutPriority forAxis:UILayoutConstraintAxisHorizontal];
        layoutPriority--;
    }
}

+ (void)uiv_setHorizontalContentHuggingPriorityOrderedSameForViews:(NSArray *)views {
    UIView *firstView = views.firstObject;
    UILayoutPriority layoutPriority = [firstView contentHuggingPriorityForAxis:UILayoutConstraintAxisHorizontal];
    for (UIView *view in views) {
        [view setContentHuggingPriority:layoutPriority forAxis:UILayoutConstraintAxisHorizontal];
    }
}

+ (void)uiv_setHorizontalContentHuggingPriorityOrderedDescendingForViews:(NSArray *)views {
    NSArray *reverseViews = [[views reverseObjectEnumerator] allObjects];
    [self uiv_setHorizontalContentHuggingPriorityOrderedAscendingForViews:reverseViews];
}

#pragma mark -

+ (void)uiv_setVerticalContentHuggingPriorityOrderedAscendingForViews:(NSArray *)views {
    UIView *firstView = views.firstObject;
    UILayoutPriority layoutPriority = [firstView contentHuggingPriorityForAxis:UILayoutConstraintAxisVertical];
    for (UIView *view in views) {
        [view setContentHuggingPriority:layoutPriority forAxis:UILayoutConstraintAxisVertical];
        layoutPriority--;
    }
}

+ (void)uiv_setVerticalContentHuggingPriorityOrderedSameForViews:(NSArray *)views {
    UIView *firstView = views.firstObject;
    UILayoutPriority layoutPriority = [firstView contentHuggingPriorityForAxis:UILayoutConstraintAxisVertical];
    for (UIView *view in views) {
        [view setContentHuggingPriority:layoutPriority forAxis:UILayoutConstraintAxisVertical];
    }
}

+ (void)uiv_setVerticalContentHuggingPriorityOrderedDescendingForViews:(NSArray *)views {
    NSArray *reverseViews = [[views reverseObjectEnumerator] allObjects];
    [self uiv_setVerticalContentHuggingPriorityOrderedAscendingForViews:reverseViews];
}

#pragma mark -

+ (void)uiv_setHorizontalContentCompressionResistancePriorityOrderedAscendingForViews:(NSArray *)views {
    UIView *firstView = views.firstObject;
    UILayoutPriority layoutPriority = [firstView contentCompressionResistancePriorityForAxis:UILayoutConstraintAxisHorizontal];
    for (UIView *view in views) {
        [view setContentHuggingPriority:layoutPriority forAxis:UILayoutConstraintAxisHorizontal];
        layoutPriority--;
    }
}

+ (void)uiv_setHorizontalContentCompressionResistancePriorityOrderedSameForViews:(NSArray *)views {
    UIView *firstView = views.firstObject;
    UILayoutPriority layoutPriority = [firstView contentCompressionResistancePriorityForAxis:UILayoutConstraintAxisHorizontal];
    for (UIView *view in views) {
        [view setContentHuggingPriority:layoutPriority forAxis:UILayoutConstraintAxisHorizontal];
    }
}

+ (void)uiv_setHorizontalContentCompressionResistancePriorityOrderedDescendingForViews:(NSArray *)views {
    NSArray *reverseViews = [[views reverseObjectEnumerator] allObjects];
    [self uiv_setHorizontalContentCompressionResistancePriorityOrderedAscendingForViews:reverseViews];
}

#pragma mark -

+ (void)uiv_setVerticalContentCompressionResistancePriorityOrderedAscendingForViews:(NSArray *)views {
    UIView *firstView = views.firstObject;
    UILayoutPriority layoutPriority = [firstView contentCompressionResistancePriorityForAxis:UILayoutConstraintAxisVertical];
    for (UIView *view in views) {
        [view setContentHuggingPriority:layoutPriority forAxis:UILayoutConstraintAxisVertical];
        layoutPriority--;
    }
}

+ (void)uiv_setVerticalContentCompressionResistancePriorityOrderedSameForViews:(NSArray *)views {
    UIView *firstView = views.firstObject;
    UILayoutPriority layoutPriority = [firstView contentCompressionResistancePriorityForAxis:UILayoutConstraintAxisVertical];
    for (UIView *view in views) {
        [view setContentHuggingPriority:layoutPriority forAxis:UILayoutConstraintAxisVertical];
    }
}

+ (void)uiv_setVerticalContentCompressionResistancePriorityOrderedDescendingForViews:(NSArray *)views {
    NSArray *reverseViews = [[views reverseObjectEnumerator] allObjects];
    [self uiv_setVerticalContentCompressionResistancePriorityOrderedSameForViews:reverseViews];
}

#pragma mark - 

- (void)uiv_setHorizontalContentHuggingPriorityAddition:(NSInteger)addition {
    UILayoutPriority layoutPriority = [self contentHuggingPriorityForAxis:UILayoutConstraintAxisHorizontal];
    [self setContentHuggingPriority:layoutPriority + addition forAxis:UILayoutConstraintAxisHorizontal];
}

- (void)uiv_setVerticalContentHuggingPriorityAddition:(NSInteger)addition {
    UILayoutPriority layoutPriority = [self contentHuggingPriorityForAxis:UILayoutConstraintAxisVertical];
    [self setContentHuggingPriority:layoutPriority + addition forAxis:UILayoutConstraintAxisVertical];
}

- (void)uiv_setHorizontalContentCompressionResistancePriorityAddition:(NSInteger)addition {
    UILayoutPriority layoutPriority = [self contentCompressionResistancePriorityForAxis:UILayoutConstraintAxisHorizontal];
    [self setContentCompressionResistancePriority:layoutPriority + addition forAxis:UILayoutConstraintAxisHorizontal];
}

- (void)uiv_setVerticalContentCompressionResistancePriorityPriorityAddition:(NSInteger)addition {
    UILayoutPriority layoutPriority = [self contentCompressionResistancePriorityForAxis:UILayoutConstraintAxisVertical];
    [self setContentCompressionResistancePriority:layoutPriority + addition forAxis:UILayoutConstraintAxisVertical];
}

#pragma mark - 

- (void)uiv_setHorizontalContentHuggingPriorityEqualTo:(UIView *)view {
    UILayoutPriority layoutPriority = [view contentHuggingPriorityForAxis:UILayoutConstraintAxisHorizontal];
    [self setContentHuggingPriority:layoutPriority forAxis:UILayoutConstraintAxisHorizontal];
}

- (void)uiv_setVerticalContentHuggingPriorityEqualTo:(UIView *)view {
    UILayoutPriority layoutPriority = [view contentHuggingPriorityForAxis:UILayoutConstraintAxisVertical];
    [self setContentHuggingPriority:layoutPriority forAxis:UILayoutConstraintAxisVertical];
}

- (void)uiv_setHorizontalContentCompressionResistancePriorityEqualTo:(UIView *)view {
    UILayoutPriority layoutPriority = [view contentCompressionResistancePriorityForAxis:UILayoutConstraintAxisHorizontal];
    [self setContentCompressionResistancePriority:layoutPriority forAxis:UILayoutConstraintAxisHorizontal];
}

- (void)uiv_setVerticalContentCompressionResistancePriorityPriorityEqualTo:(UIView *)view {
    UILayoutPriority layoutPriority = [view contentCompressionResistancePriorityForAxis:UILayoutConstraintAxisVertical];
    [self setContentCompressionResistancePriority:layoutPriority forAxis:UILayoutConstraintAxisVertical];
}

#pragma mark -

- (void)uiv_setContentPriorities:(UIViewContentPriority)priority {
    [self setContentHuggingPriority:priority.horizontalContentHugging forAxis:UILayoutConstraintAxisHorizontal];
    [self setContentHuggingPriority:priority.verticalContentHuggingPriority forAxis:UILayoutConstraintAxisVertical];
    [self setContentCompressionResistancePriority:priority.horizontalContentCompressionResistance forAxis:UILayoutConstraintAxisHorizontal];
    [self setContentCompressionResistancePriority:priority.verticalContentCompressionResistance forAxis:UILayoutConstraintAxisVertical];
}

- (void)uiv_setContentPrioritiesAddition:(UIViewContentPriority)priority {
    [self setContentHuggingPriority:priority.horizontalContentHugging + UILayoutPriorityDefaultLow forAxis:UILayoutConstraintAxisHorizontal];
    [self setContentHuggingPriority:priority.verticalContentHuggingPriority + UILayoutPriorityDefaultLow forAxis:UILayoutConstraintAxisVertical];
    [self setContentCompressionResistancePriority:priority.horizontalContentCompressionResistance + UILayoutPriorityDefaultHigh forAxis:UILayoutConstraintAxisHorizontal];
    [self setContentCompressionResistancePriority:priority.verticalContentCompressionResistance + UILayoutPriorityDefaultHigh forAxis:UILayoutConstraintAxisVertical];
}

#pragma mark -

- (void)uiv_echoContentPriorities {
# ifdef DEBUG
    UILayoutPriority horizontalContentHuggingPriority = [self contentHuggingPriorityForAxis:UILayoutConstraintAxisHorizontal];
    UILayoutPriority verticalContentHuggingPriority = [self contentHuggingPriorityForAxis:UILayoutConstraintAxisVertical];
    UILayoutPriority horizontalContentCompressionResistancePriority = [self contentCompressionResistancePriorityForAxis:UILayoutConstraintAxisHorizontal];
    UILayoutPriority verticalContentCompressionResistancePriority = [self contentCompressionResistancePriorityForAxis:UILayoutConstraintAxisVertical];

    NSLog(@"\nHorizontalContentHuggingPriority = %@\n"
          "VerticalContentHuggingPriority = %@\n"
          "HorizontalContentCompressionResistancePriority = %@\n"
          "VerticalContentCompressionResistancePriority = %@\n\n",
          @(horizontalContentHuggingPriority),
          @(verticalContentHuggingPriority),
          @(horizontalContentCompressionResistancePriority),
          @(verticalContentCompressionResistancePriority));
#endif
}

@end
