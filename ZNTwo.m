//
//  ZNTwo.m
//  练习UITabbarconroller
//
//  Created by 赵恩峰 on 16/6/23.
//  Copyright © 2016年 赵恩峰. All rights reserved.
//

#import "ZNTwo.h"


@interface ZNTwo ()

@end

@implementation ZNTwo

- (void)viewDidLoad {
    [super viewDidLoad];
    
   self.navigationItem.title = @"zn联系人";
    
    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"返回" style:0 target:self action:@selector(back)];
     NSLog(@"%s",__func__);
}

- (void)back {
     NSLog(@"%s",__func__);
    //为什呢回不去
    [self.delegate tiaozhuan];
   // [self.navigationController popViewControllerAnimated:YES];
    
}



@end
