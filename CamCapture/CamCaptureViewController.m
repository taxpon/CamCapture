//
//  CamCaptureViewController.m
//  CamCapture
//
//  Created by Takuro Wada on 2013/04/11.
//  Copyright (c) 2013年 Takuro Wada. All rights reserved.
//

#import "CamCaptureViewController.h"

@interface CamCaptureViewController ()

@end

@implementation CamCaptureViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    showCapturedImage = [[UIImageView alloc]initWithFrame:CGRectMake(0,
                                                                     0,
                                                                     self.view.bounds.size.width,
                                                                     self.view.bounds.size.height)];
    [self.view addSubview:showCapturedImage];
    
    capture = [[CamCapture alloc] init];
    capture.delegate = self;
    [capture setupAVCapture];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark CamCaptureDelegate Protocol
-(void)didCaptureImage:(CamCapture *)camCapture
{
    showCapturedImage.image = camCapture.capturedImage;
    
}

@end
