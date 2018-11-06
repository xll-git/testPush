//
//  BaseViewController.h
//  testPush
//
//  Created by XLL on 2018/11/5.
//  Copyright © 2018 liangli. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BaseViewController : UIViewController

@property (nonatomic, strong) UIButton *pushButton;
@property (nonatomic, strong) UIButton *insertButton;  // 插入
@property (nonatomic, strong) UIButton *delButton;

@property (nonatomic, strong) UILabel *showLabel;

@end
