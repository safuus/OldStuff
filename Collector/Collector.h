//
//  Collector.h
//  Collector
//
//  Created by Li Xiaosi on 12/2/10.
//  Copyright 2010 Saybot. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface Collector : NSObject {
	NSMutableDictionary *counts;
}

- (void)collect:(id)anObject;

@property (readonly) int totalStringCount;
@property (readonly) int totalNumberCount;

@end
