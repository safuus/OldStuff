//
//  SharePictureViewController.m
//  SharePicture
//
//  Created by Li Xiaosi on 12/20/10.
//  Copyright 2010 Saybot. All rights reserved.
//

#import "SharePictureViewController.h"

@implementation SharePictureViewController 

- (BOOL) startCameraControllerViewFromViewController:
	(UIViewController*) controller
	usingDelegate: (id <UIImagePickerControllerDelegate, 
					    UINavigationControllerDelegate>) delegate
{
	if (([UIImagePickerController isSourceTypeAvailable: UIImagePickerControllerSourceTypeCamera] == NO)
		|| (delegate == nil)
		|| (controller == nil))
		return NO;
	
	UIImagePickerController *cameraUI = [[UIImagePickerController alloc] init];
	cameraUI.sourceType = UIImagePickerControllerSourceTypeCamera;
	
	cameraUI.mediaTypes = 
		[UIImagePickerController availableMediaTypesForSourceType:UIImagePickerControllerSourceTypeCamera];
	
	//hides the controls for moving and scaling pictures, or for trimming movies
	//To instead show the controls, use YES
	cameraUI.allowsEditing = NO;
	
	cameraUI.delegate = delegate;
	
	[controller presentModalViewController:cameraUI animated:YES];
	return YES;
}

- (IBAction) showCameraUI: (UIButton *) sender 
{
	[self startCameraControllerViewFromViewController: self usingDelegate: self];
}


/*
// The designated initializer. Override to perform setup that is required before the view is loaded.
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}
*/

/*
// Implement loadView to create a view hierarchy programmatically, without using a nib.
- (void)loadView {
}
*/


/*
// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad {
    [super viewDidLoad];
}
*/


/*
// Override to allow orientations other than the default portrait orientation.
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}
*/

- (void)didReceiveMemoryWarning {
	// Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
	
	// Release any cached data, images, etc that aren't in use.
}

- (void)viewDidUnload {
	// Release any retained subviews of the main view.
	// e.g. self.myOutlet = nil;
}


- (void)dealloc {
    [super dealloc];
}

@end
