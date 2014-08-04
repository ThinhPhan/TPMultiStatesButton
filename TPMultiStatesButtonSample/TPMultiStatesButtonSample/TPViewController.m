//
//  TPViewController.m
//  TPMultiStatesButtonSample
//
//  Created by ThinhPhan on 8/4/14.
//  Copyright (c) 2014 ThinhPhan. All rights reserved.
//

#import "TPViewController.h"
#import "TPMultiStatesButton.h"

@interface TPViewController ()

@property (nonatomic, weak) IBOutlet TPMultiStatesButton *multiStateButton;

- (IBAction)changeStates:(id)sender;
@end

@implementation TPViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    [self.multiStateButton setCurrentType:Off];
    [self.multiStateButton setTitle:@"GO GO GO!!" forType:Ascending];
    [self.multiStateButton setTitle:@"Slow Down Guys" forType:Descending];
    [self.multiStateButton setTitle:@"STOP" forType:Off];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark -
- (IBAction)changeStates:(id)sender {
    [self.multiStateButton changeSortType];
}
@end
