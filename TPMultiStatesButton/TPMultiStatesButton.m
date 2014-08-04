//
//  TPMultiStatesButton.m
//  TPMultiStatesButton
//
//  Created by ThinhPhan on 7/15/14.
//  Copyright (c) 2014 Supernova-SG. All rights reserved.
//

#import "TPMultiStatesButton.h"

@interface TPMultiStatesButton()

@property (nonatomic, strong) UIImage  *imageAscendingType;
@property (nonatomic, strong) UIImage  *imageDescendingType;
@property (nonatomic, strong) UIImage  *imageOffType;
@property (nonatomic, strong) NSString *titleAscendingType;
@property (nonatomic, strong) NSString *titleDescendingType;
@property (nonatomic, strong) NSString *titleOffType;

@end

@implementation TPMultiStatesButton

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
        self.currentType         = Off;
        self.titleAscendingType  = @"";
        self.titleDescendingType = @"";
        self.titleOffType        = @"";
    }
    return self;
}

/**
 *  Set images coresponding with button types.
 *
 *  @param image : specific image object
 *  @param type  : specific type (Ascending, Descending, Off)
 */
- (void)setImage:(UIImage *)image forType:(SortType)type
{
    switch (type) {
        case Ascending: {
            if (self.imageAscendingType == nil) {
                self.imageAscendingType = [[UIImage alloc] init];
            }
            self.imageAscendingType = image;
        }
            break;
        case Descending: {
            if (self.imageDescendingType == nil) {
                self.imageDescendingType = [[UIImage alloc] init];
            }
            self.imageDescendingType = image;
        }
            break;
        case Off: {
            if (self.imageOffType == nil) {
                self.imageOffType = [[UIImage alloc] init];
            }
            self.imageOffType = image;
        }
            break;
            
        default:
            break;
    }
    [self setImage:image forState:UIControlStateNormal];
}

/**
 *  Set titles and images coresponding with button types.
 *
 *  @param title : specific title string
 *  @param image : specific image object
 *  @param type  : specific type (Ascending, Descending, Off)
 */
- (void)setTitle:(NSString *)title andImage:(UIImage *)image forType:(SortType)type
{
    switch (type) {
        case Ascending: {
            if (self.imageAscendingType == nil) {
                self.imageAscendingType = [[UIImage alloc] init];
            }
            self.imageAscendingType = image;
            self.titleAscendingType = title;
        }
            break;
        case Descending: {
            if (self.imageDescendingType == nil) {
                self.imageDescendingType = [[UIImage alloc] init];
            }
            self.imageDescendingType = image;
            self.titleDescendingType = title;
        }
            break;
        case Off: {
            if (self.imageOffType == nil) {
                self.imageOffType = [[UIImage alloc] init];
            }
            self.imageOffType = image;
            self.titleOffType = title;
        }
            break;
            
        default:
            break;
    }
}

/**
 *  Set titles coresponding with button types.
 *
 *  @param title : specific title string
 *  @param type  : specific type (Ascending, Descending, Off)
 */
- (void)setTitle:(NSString *)title forType:(SortType)type
{
    switch (type) {
        case Ascending: {
            self.titleAscendingType = title;
        }
            break;
        case Descending: {
            self.titleDescendingType = title;
        }
            break;
        case Off: {
            self.titleOffType = title;
        }
            break;
            
        default:
            break;
    }
}

/**
 *  Return the current type of button.
 *
 *  @return enum sortType
 */
- (SortType)getCurrentType {
    return self.currentType;
}

/**
 *  Change type of button follows these steps : Ascending -> Descending -> Off -> Ascending...
 */
- (void)changeSortType
{
    self.currentType += 1;
    if (self.currentType > Off) {
        self.currentType = Ascending;
    }
    
    switch (self.currentType) {
        case Ascending: {
            [self setBackgroundColor:[UIColor greenColor]];
            [self setTitle:self.titleAscendingType forState:UIControlStateNormal];
        }
            break;
        case Descending: {
            [self setBackgroundColor:[UIColor brownColor]];
            [self setTitle:self.titleDescendingType forState:UIControlStateNormal];
        }

            break;
        case Off: {

            [self setBackgroundColor:[UIColor redColor]];
            [self setTitle:self.titleOffType forState:UIControlStateNormal];
        }
            break;
        default:
            break;
    }
}

@end
