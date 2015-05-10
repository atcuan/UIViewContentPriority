//
//  UIView+UIViewContentPriority.h
//  CellSelfSizing
//
//  Created by Moch Xiao on 5/10/15.
//  Copyright (c) 2015 Moch Xiao. All rights reserved.
//

#import <UIKit/UIKit.h>

struct UIViewContentPriority {
    UILayoutPriority horizontalContentHugging;
    UILayoutPriority verticalContentHuggingPriority;
    UILayoutPriority horizontalContentCompressionResistance;
    UILayoutPriority verticalContentCompressionResistance;
};
typedef struct UIViewContentPriority UIViewContentPriority;

static inline UIViewContentPriority
UIViewContentPriorityMake(UILayoutPriority horizontalContentHugging,
                          UILayoutPriority verticalContentHuggingPriority,
                          UILayoutPriority horizontalContentCompressionResistance,
                          UILayoutPriority verticalContentCompressionResistance)
{
    UIViewContentPriority contentPriority;
    contentPriority.horizontalContentHugging = horizontalContentHugging;
    contentPriority.verticalContentHuggingPriority = verticalContentHuggingPriority;
    contentPriority.horizontalContentCompressionResistance = horizontalContentCompressionResistance;
    contentPriority.verticalContentCompressionResistance = verticalContentCompressionResistance;
    return contentPriority;
}

@interface UIView (UIViewContentPriority)

#pragma mark - 

+ (void)uiv_setHorizontalContentHuggingPriorityOrderedAscendingForViews:(NSArray *)views;
+ (void)uiv_setHorizontalContentHuggingPriorityOrderedSameForViews:(NSArray *)views;
+ (void)uiv_setHorizontalContentHuggingPriorityOrderedDescendingForViews:(NSArray *)views;

+ (void)uiv_setVerticalContentHuggingPriorityOrderedAscendingForViews:(NSArray *)views;
+ (void)uiv_setVerticalContentHuggingPriorityOrderedSameForViews:(NSArray *)views;
+ (void)uiv_setVerticalContentHuggingPriorityOrderedDescendingForViews:(NSArray *)views;

+ (void)uiv_setHorizontalContentCompressionResistancePriorityOrderedAscendingForViews:(NSArray *)views;
+ (void)uiv_setHorizontalContentCompressionResistancePriorityOrderedSameForViews:(NSArray *)views;
+ (void)uiv_setHorizontalContentCompressionResistancePriorityOrderedDescendingForViews:(NSArray *)views;

+ (void)uiv_setVerticalContentCompressionResistancePriorityOrderedAscendingForViews:(NSArray *)views;
+ (void)uiv_setVerticalContentCompressionResistancePriorityOrderedSameForViews:(NSArray *)views;
+ (void)uiv_setVerticalContentCompressionResistancePriorityOrderedDescendingForViews:(NSArray *)views;

#pragma mark - 

- (void)uiv_setHorizontalContentHuggingPriorityAddition:(NSInteger)addition;
- (void)uiv_setVerticalContentHuggingPriorityAddition:(NSInteger)addition;
- (void)uiv_setHorizontalContentCompressionResistancePriorityAddition:(NSInteger)addition;
- (void)uiv_setVerticalContentCompressionResistancePriorityPriorityAddition:(NSInteger)addition;

#pragma mark - 

- (void)uiv_setHorizontalContentHuggingPriorityEqualTo:(UIView *)view;
- (void)uiv_setVerticalContentHuggingPriorityEqualTo:(UIView *)view;
- (void)uiv_setHorizontalContentCompressionResistancePriorityEqualTo:(UIView *)view;
- (void)uiv_setVerticalContentCompressionResistancePriorityPriorityEqualTo:(UIView *)view;

#pragma mark - 

- (void)uiv_setContentPriorities:(UIViewContentPriority)priority;
- (void)uiv_setContentPrioritiesAddition:(UIViewContentPriority)priority;

#pragma mark - 

- (void)uiv_echoContentPriorities;

@end
