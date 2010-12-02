//
//  CalculatorViewController.h
//  Calculator
//
//  Created by Li Xiaosi on 11/26/10.
//  Copyright 2010 Saybot. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CalculatorBrain.h"

@interface CalculatorViewController : UIViewController {
	IBOutlet UILabel *display;
	CalculatorBrain  *brain;
	bool userIsInTheMiddleOfTypingANumber;
}

- (IBAction)digitPressed:(UIButton *)sender;
- (IBAction)operationPressed:(UIButton *)sender;
	
@end

