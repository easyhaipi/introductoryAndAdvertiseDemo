//
//  AppDelegate.m
//  AdvertiseDemo
//
//  Created by taobaichi on 16/8/25.
//  Copyright © 2016年 taobaichi. All rights reserved.
//

#import "AppDelegate.h"



#import "introductoryPagesHelper.h"
#import "AdvertiseHelper.h"
@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    
    
  
 
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    
    
    
    [self setupIntroductoryPage];
    
    [self setupAdveriseView];
    return YES;
}

#pragma mark 引导页
-(void)setupIntroductoryPage
{
    
    NSString * oldVerson = [NSString stringWithFormat:@"%@",[[NSUserDefaults standardUserDefaults] stringForKey:@"firstVersion"]];
    NSString * nowVerson = [NSString stringWithFormat:@"%@",VERSION];
    
    if(![[NSUserDefaults standardUserDefaults] stringForKey:@"firstVersion"] || [oldVerson isEqualToString:nowVerson] == NO)
    {
        
        NSLog(@"第一次启动");
        NSArray *images=@[@"introductoryPage1",@"introductoryPage2",@"introductoryPage3",@"introductoryPage4"];
        [introductoryPagesHelper showIntroductoryPageView:images];
        
    } else
    {
        return;
        
    }

    
  
}


#pragma mark 启动广告
-(void)setupAdveriseView
{
    // TODO 请求广告接口 获取广告图片
    
    //现在了一些固定的图片url代替
    NSArray *imageArray = @[@"http://imgsrc.baidu.com/forum/pic/item/9213b07eca80653846dc8fab97dda144ad348257.jpg", @"http://pic.paopaoche.net/up/2012-2/20122220201612322865.png", @"http://img5.pcpop.com/ArticleImages/picshow/0x0/20110801/2011080114495843125.jpg", @"http://www.mangowed.com/uploads/allimg/130410/1-130410215449417.jpg"];
    
    [AdvertiseHelper showAdvertiserView:imageArray];
}




- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
