//
//  AppDelegate.m
//  练习UITabbarconroller
//
//  Created by 赵恩峰 on 16/6/23.
//  Copyright © 2016年 赵恩峰. All rights reserved.
//

#import "AppDelegate.h"
#import "ZNOne.h"
#import "ZNTwo.h"
#import "ZNThree.h"

@interface AppDelegate () <ZNTwoDelegate>
@property (nonatomic, weak) UITabBarController *tabbar;
@end

@implementation AppDelegate

//准备开始执行应用程序时调用 did finish
- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
//创建窗口
    self.window = [[UIWindow alloc]initWithFrame:[UIScreen mainScreen].bounds];
    UITabBarController *tabbar = [[UITabBarController alloc]init];
    tabbar.tabBar.tintColor = [UIColor orangeColor];
    
    ZNOne *oneVc = [[ZNOne alloc]init];
    oneVc.tabBarItem.title = @"消息";
    oneVc.tabBarItem.image = [UIImage imageNamed:@"tab_recent_nor"];
    oneVc.tabBarItem.badgeValue = @"10";
    UINavigationController *nav1 = [[UINavigationController alloc]initWithRootViewController:oneVc];
    [tabbar addChildViewController:nav1];
//    ZNOne *oneVC = [[ZNOne alloc] init];
//    oneVC.tabBarItem.title = @"消息";
//    oneVC.tabBarItem.image = [UIImage imageNamed:@"tab_recent_nor"];
//    oneVC.tabBarItem.badgeValue = @"10";
//    UINavigationController *nav1 = [[UINavigationController alloc] initWithRootViewController:oneVC];
//    [tabBar addChildViewController:nav1];
//    
//    
//    ZNTwo *twoVC = [[ZNTwo alloc] init];
//    twoVC.tabBarItem.title = @"联系人";
//    twoVC.tabBarItem.image = [UIImage imageNamed:@"tab_buddy_nor"];
//    twoVC.tabBarItem.selectedImage = [UIImage imageNamed:@"tab_recent_nor"];
//    UINavigationController *nav2 = [[UINavigationController alloc] initWithRootViewController:twoVC];
//    [tabBar addChildViewController:nav2];
    ZNTwo *twoVc = [[ZNTwo alloc]init];
    twoVc.tabBarItem.title = @"联系人";
    twoVc.tabBarItem.image = [UIImage imageNamed:@"tab_buddy_nor"];
    twoVc.tabBarItem.selectedImage = [UIImage imageNamed:@"tab_recent_nor"];
    UINavigationController *nav2 = [[UINavigationController alloc]initWithRootViewController:twoVc];
    [tabbar addChildViewController:nav2];
    
    
    
//    ZNThree *threeVC = [[ZNThree alloc] init];
//    threeVC.tabBarItem.title = @"动态";
//    threeVC.tabBarItem.image =  [UIImage imageNamed:@"tab_qworld_nor"];
//    UINavigationController *nav3 = [[UINavigationController alloc] initWithRootViewController:threeVC];
//    [tabBar addChildViewController:nav3];
    
    ZNThree *threeVc = [[ZNThree alloc]init];
    threeVc.tabBarItem.title = @"动态";
    threeVc.tabBarItem.image = [UIImage imageNamed:@"tab_qworld_nor"];
    
    UINavigationController *nav3 = [[UINavigationController alloc]initWithRootViewController:threeVc];
    [tabbar addChildViewController:nav3];
    self.tabbar = tabbar;
    twoVc.delegate = self;
    
    //手动设置 控制器先显示哪一个?
    
    
    self.window.rootViewController = tabbar;
    
    [self.window makeKeyAndVisible];
    

    
    
//    
//     self.window.rootViewController = tabBar;
//    [self.window makeKeyAndVisible];
//    
    return YES;
}
#pragma mark - 跳转页面的 思路失败了.
- (void)tiaozhuan {
    self.tabbar.selectedIndex = 1;
    [self.window makeKeyAndVisible];
     NSLog(@"%s",__func__);
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
