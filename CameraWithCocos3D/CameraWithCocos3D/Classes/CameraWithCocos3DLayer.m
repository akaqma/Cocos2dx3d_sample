/**
 *  CameraWithCocos3DLayer.m
 *  CameraWithCocos3D
 *
 *  Created by Akaguma on 12/12/04.
 *  Copyright __MyCompanyName__ 2012年. All rights reserved.
 */

#import "CameraWithCocos3DLayer.h"
#import "CameraWithCocos3DScene.h"


@implementation CameraWithCocos3DLayer

- (void)dealloc {
    [super dealloc];
}

- (id) init {
    if( (self=[super init])) {
        // 背景を透明に
        //glClearColor(0, 0, 0, 0);
    }
    return self;
}


/**
 * Override to set up your 2D controls and other initial state.
 *
 * For more info, read the notes of this method on CC3Layer.
 */
-(void) initializeControls {}


#pragma mark Updating layer

/**
 * Override to perform set-up activity prior to the scene being opened
 * on the view, such as adding gesture recognizers.
 *
 * For more info, read the notes of this method on CC3Layer.
 */
-(void) onOpenCC3Layer {}

/**
 * Override to perform tear-down activity prior to the scene disappearing.
 *
 * For more info, read the notes of this method on CC3Layer.
 */
-(void) onCloseCC3Layer {}

/**
 * The ccTouchMoved:withEvent: method is optional for the <CCTouchDelegateProtocol>.
 * The event dispatcher will not dispatch events for which there is no method
 * implementation. Since the touch-move events are both voluminous and seldom used,
 * the implementation of ccTouchMoved:withEvent: has been left out of the default
 * CC3Layer implementation. To receive and handle touch-move events for object
 * picking, uncomment the following method implementation.
 */
/*
-(void) ccTouchMoved: (UITouch *)touch withEvent: (UIEvent *)event {
	[self handleTouch: touch ofType: kCCTouchMoved];
}
 */

@end
