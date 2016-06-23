//
//  ZNTwo.h
//  练习UITabbarconroller
//
//  Created by 赵恩峰 on 16/6/23.
//  Copyright © 2016年 赵恩峰. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol ZNTwoDelegate <NSObject>

- (void)tiaozhuan;

@end


@interface ZNTwo : UIViewController
@property (nonatomic, weak) id <ZNTwoDelegate> delegate;
@end
