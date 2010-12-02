//
//  CollectorViewController.m
//  Collector
//
//  Created by Li Xiaosi on 12/2/10.
//  Copyright 2010 Saybot. All rights reserved.
//

#import "CollectorViewController.h"

@implementation CollectorViewController

- (void)updateUI
{
	totalNumbers.text = [NSString stringWithFormat:@"%d",model.totalNumberCount];
	totalStrings.text = [NSString stringWithFormat:@"%d", model.totalStringCount];
}

- (IBAction)collect:(UIButton *)sender
{
	if (!model) model = [[Collector alloc] init];
	
	double doubleValue = [sender.titleLabel.text doubleValue];
	if (doubleValue) {
		[model collect:[NSNumber numberWithDouble:doubleValue]];
	} else {
		[model collect:sender.titleLabel.text];
	}
	[self updateUI];
}

- (void)dealloc {
	[model release];
    [super dealloc];
}

@end
