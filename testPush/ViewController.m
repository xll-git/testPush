//
//  ViewController.m
//  testPush
//
//  Created by XLL on 2018/11/5.
//  Copyright © 2018 liangli. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationItem.title = @"push首页";
    self.view.backgroundColor = [UIColor whiteColor];
    
    UIButton *pushButton = [[UIButton alloc]initWithFrame:CGRectMake(0, 0, 100, 50)];
    pushButton.center = self.view.center;
    [pushButton setTitle:@"下一页" forState:UIControlStateNormal];
    [pushButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [self.view addSubview:pushButton];
    [pushButton addTarget:self action:@selector(pushButton_Click:) forControlEvents:UIControlEventTouchUpInside];
}

- (void)pushButton_Click:(UIButton *)button {
    UIViewController *VC1 = [NSClassFromString(@"test1ViewController") new];
    [self.navigationController pushViewController:VC1 animated:YES];
}


@end
