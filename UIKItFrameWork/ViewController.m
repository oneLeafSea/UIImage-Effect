//
//  ViewController.m
//  UIKItFrameWork
//
//  Created by 冯学仕 on 17/8/9.
//  Copyright © 2017年 rooten. All rights reserved.
//

#import "ViewController.h"
#import "UIImage+ImageEffects.h"

@interface ViewController ()

@property (nonatomic, retain) CALayer *layer;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    [self createC_];
    
}

- (void) createC_ {
    UIImage *ui_image = [UIImage imageNamed:@"侧栏滑动界面背景图.png"];
    CGImageRef cg_imgRef = (__bridge CGImageRef)(ui_image.CIImage);
    cg_imgRef = CGImageCreateWithImageInRect(cg_imgRef, CGRectMake(0,0 , 100, 100));
    UIImage *ui_imageNew = [UIImage imageWithCGImage:cg_imgRef];
    UIImageView *imageView = [[UIImageView alloc] initWithImage:ui_imageNew];
    [self.view addSubview:imageView];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
