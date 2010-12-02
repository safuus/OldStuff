//
//  CollectorAppDelegate.h
//  Collector
//
//  Created by Li Xiaosi on 12/2/10.
//  Copyright 2010 Saybot. All rights reserved.
//

#import <UIKit/UIKit.h>

@class CollectorViewController;

@interface CollectorAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    CollectorViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet CollectorViewController *viewController;

@end

