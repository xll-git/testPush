//
//  test2ViewController.m
//  testPush
//
//  Created by XLL on 2018/11/5.
//  Copyright © 2018 liangli. All rights reserved.
//

#import "test2ViewController.h"

@interface test2ViewController ()

@end

@implementation test2ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationItem.title = @"test2";
    self.view.backgroundColor = [UIColor whiteColor];
}

- (void)pushButton_Click:(UIButton *)button {
    UIViewController *VC3 = [NSClassFromString(@"test3ViewController") new];
    [self.navigationController pushViewController:VC3 animated:YES];
}


@end
