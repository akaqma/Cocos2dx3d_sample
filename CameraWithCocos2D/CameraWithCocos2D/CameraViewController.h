//
//  CameraViewController.h
//  CameraWithCocos2D
//
//  Created by Akaguma on 12/12/04.
//
//

#import <UIKit/UIKit.h>
#import <AVFoundation/AVFoundation.h>

@interface CameraViewController : UIViewController
{
    AVCaptureSession *_captureSession;
    AVCaptureStillImageOutput *_imageOutput;
}

@end
