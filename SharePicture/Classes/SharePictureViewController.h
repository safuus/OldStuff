//
//  SharePictureViewController.h
//  SharePicture
//
//  Created by Li Xiaosi on 12/20/10.
//  Copyright 2010 Saybot. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SharePictureViewController : UIViewController <UIImagePickerControllerDelegate,
										UINavigationControllerDelegate>
{

}

- (IBAction) showCameraUI: (UIButton*) sender;

- (BOOL) startCameraControllerViewFromViewController: (UIViewController*) controller
			usingDelegate: (id <UIImagePickerControllerDelegate, 
							UINavigationControllerDelegate>) delegate;

@end

