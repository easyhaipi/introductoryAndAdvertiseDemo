//
//  ViewController.m
//  AdvertiseDemo
//
//  Created by taobaichi on 16/8/25.
//  Copyright © 2016年 taobaichi. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(pushToAd) name:NotificationContants_Advertise_Key object:nil];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



//进入广告页面
-(void)pushToAd
{
    NSLog(@"进入广告页面");
}

-(void)dealloc
{
    [[NSNotificationCenter defaultCenter] removeObserver:self];
    
}
@end
