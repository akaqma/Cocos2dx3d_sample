/**
 *  CameraWithCocos3DAppDelegate.h
 *  CameraWithCocos3D
 *
 *  Created by Akaguma on 12/12/04.
 *  Copyright __MyCompanyName__ 2012年. All rights reserved.
 */

#import <UIKit/UIKit.h>
#import "CCNodeController.h"
#import "CC3Scene.h"

@interface CameraWithCocos3DAppDelegate : NSObject <UIApplicationDelegate> {
	UIWindow* window;
	CCNodeController* viewController;
}

@property (nonatomic, retain) UIWindow* window;

@end
