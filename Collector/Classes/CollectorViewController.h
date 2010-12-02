//
//  CollectorViewController.h
//  Collector
//
//  Created by Li Xiaosi on 12/2/10.
//  Copyright 2010 Saybot. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Collector.h"

@interface CollectorViewController : UIViewController {
	Collector *model;
	IBOutlet UILabel *totalStrings;
	IBOutlet UILabel *totalNumbers;
}

- (void)collect: (UIButton *)sender;

@end

