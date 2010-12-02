//
//  Collector.m
//  Collector
//
//  Created by Li Xiaosi on 12/2/10.
//  Copyright 2010 Saybot. All rights reserved.
//

#import "Collector.h"

@interface Collector()
@property (readonly) NSMutableDictionary *counts;
@end


@implementation Collector

- (NSMutableDictionary *)counts
{
	if (!counts) counts = [[NSMutableDictionary alloc] init];
	return counts;
}

- (void) dealloc
{
	[counts release];
	[super dealloc];
}

- (void) collect:(id)anObject
{
	if ([anObject isKindOfClass:[NSString class]] ||
		[anObject isKindOfClass:[NSNumber class]]) {
		NSNumber *existingCount = [self.counts objectForKey:anObject];
		[self.counts setObject:[NSNumber numberWithInt:[existingCount intValue]+1] forKey:anObject];
	}
}

- (int)totalStringCount
{
	int total = 0;
	for (id key in self.counts) {
		if ([key isKindOfClass:[NSString class]]) {
			total += [[self.counts objectForKey:key] intValue];
		}
	}
	return total;
}

- (int)totalNumberCount
{
	int total = 0;
	for (id key in self.counts) {
		if ([key isKindOfClass:[NSNumber class]]) {
			total += [[self.counts objectForKey:key] intValue];
		}
	}
	return total;
}
@end
