//
//  ZNOne.m
//  练习UITabbarconroller
//
//  Created by 赵恩峰 on 16/6/23.
//  Copyright © 2016年 赵恩峰. All rights reserved.
//

#import "ZNOne.h"

@interface ZNOne ()

@end

@implementation ZNOne

- (void)viewDidLoad {
    [super viewDidLoad];
   self.navigationItem.title = @"zn消息";
     NSLog(@"%s",__func__);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
