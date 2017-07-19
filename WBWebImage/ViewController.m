//
//  ViewController.m
//  WBWebImage
//
//  Created by 王文博 on 2017/7/19.
//  Copyright © 2017年 王文博. All rights reserved.
//

#import "ViewController.h"
#import "UIImageView+WBImageViewManager.h"
#import "WBImageCache.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    UIImageView * imageView = [[UIImageView alloc]initWithFrame:CGRectMake(0, 0, self.view.bounds.size.width, 200)];
    [imageView wb_setImageWithURLString:@"http://pic2.52pk.com/files/160719/2380130_112911_1_lit.jpg" placeholder:nil];
    [self.view addSubview:imageView];
    
    // 清除缓存  格式是NSTimeInterval
    [[WBImageCache sharedImageCache] wb_clearDiskCachesWithTimeout:1000];
    
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
