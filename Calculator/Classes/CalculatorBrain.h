//
//  CalculatorBrain.h
//  Calculator
//
//  Created by Li Xiaosi on 11/30/10.
//  Copyright 2010 Saybot. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface CalculatorBrain : NSObject {
	double operand;
	NSString *waitingOperation;
	double waitingOperand;
}

- (void)setOperand:(double)anOperand;
- (double)performOperation:(NSString *)operation;

@end
