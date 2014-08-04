//
//  TPMultiStatesButton.h
//  TPMultiStatesButton
//
//  Created by ThinhPhan on 7/15/14.
//  Copyright (c) 2014 Supernova-SG. All rights reserved.
//

#import <UIKit/UIKit.h>

/**
 Sort type for button
 */
typedef NS_ENUM(NSUInteger, SortType) {
    Ascending = 0,
    Descending,
    Off
};

@interface TPMultiStatesButton : UIButton

@property (nonatomic) SortType currentType;

#pragma mark -
/**
 *  A method to set title and background image of button for the specific type
 *
 *  @param title : title of button
 *  @param image : background image of button
 *  @param type  : specific type
 */
- (void)setTitle:(NSString *)title andImage:(UIImage *)image forType:(SortType)type;

/**
 *  A method to set background image of button for the specific type
 *
 *  @param image : background image of button
 *  @param type  : specific type
 */
- (void)setImage:(UIImage *)image forType:(SortType)type;

/**
 *  A method to set title of button for the specific type
 *
 *  @param title : title of button
 *  @param type  : specific type
 */
- (void)setTitle:(NSString *)title forType:(SortType)type;

/**
 *  Actions when button is touched.
 */
- (void)changeSortType;

/**
 *  Get the current type of button
 *
 *  @return : SortType value.
 */
- (SortType)getCurrentType;
@end
