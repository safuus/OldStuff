//
//  SharePictureAppDelegate.h
//  SharePicture
//
//  Created by Li Xiaosi on 12/20/10.
//  Copyright 2010 Saybot. All rights reserved.
//

#import <UIKit/UIKit.h>

@class SharePictureViewController;

@interface SharePictureAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    SharePictureViewController *viewController;
	UIImagePickerController *imageController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet SharePictureViewController *viewController;

@end

