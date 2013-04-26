//
//  CameraViewController.m
//  CameraWithCocos2D
//
//  Created by Akaguma on 12/12/04.
//
//

#import "CameraViewController.h"

@interface CameraViewController ()

@end

@implementation CameraViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
        
        _captureSession = [[AVCaptureSession alloc] init];
        AVCaptureDevice *videoCaptureDevice = nil;
        NSArray *cameraArray = [AVCaptureDevice devicesWithMediaType:AVMediaTypeVideo];
        for (AVCaptureDevice *camera in cameraArray) {
            if (camera.position == AVCaptureDevicePositionBack) {
                videoCaptureDevice = camera;
            }
        }
        NSError *error = nil;
        AVCaptureDeviceInput *videoInput = [AVCaptureDeviceInput deviceInputWithDevice:videoCaptureDevice error:&error];
        if (videoInput) {
            [_captureSession addInput:videoInput];
            [_captureSession beginConfiguration];
            _captureSession.sessionPreset = AVCaptureSessionPresetHigh;
            [_captureSession commitConfiguration];
            
            AVCaptureVideoPreviewLayer *previewLayer = [AVCaptureVideoPreviewLayer layerWithSession:_captureSession];
            previewLayer.automaticallyAdjustsMirroring = NO;
            previewLayer.videoGravity = AVLayerVideoGravityResizeAspectFill;
            previewLayer.frame = self.view.bounds;
            [self.view.layer insertSublayer:previewLayer atIndex:0];
        }else {
            // Handle the failure.
            NSLog(@"ERROR:%@", error);
        }
        
        _imageOutput = [[AVCaptureStillImageOutput alloc] init];
        [_captureSession addOutput:_imageOutput];
        for(AVCaptureConnection *connection in _imageOutput.connections){
            if (connection.supportsVideoOrientation) {
                //データの向きを横向きにする
                connection.videoOrientation = AVCaptureVideoOrientationPortrait;
            }
        }
        
        // キャプチャセッションを開始
        [_captureSession startRunning];
        
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
