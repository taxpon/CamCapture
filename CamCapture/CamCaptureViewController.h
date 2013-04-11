//
//  CamCaptureViewController.h
//  CamCapture
//
//  Created by Takuro Wada on 2013/04/11.
//  Copyright (c) 2013年 Takuro Wada. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CamCapture.h"

@interface CamCaptureViewController : UIViewController <CamCaptureDelegate>
{
    UIImageView *showCapturedImage;
    CamCapture *capture;
}

-(void)didCaptureImage:(CamCapture *)camCapture;

@end
