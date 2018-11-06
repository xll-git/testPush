//
//  test3ViewController.m
//  testPush
//
//  Created by XLL on 2018/11/5.
//  Copyright © 2018 liangli. All rights reserved.
//

#import "test3ViewController.h"

@interface test3ViewController ()

@end

@implementation test3ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationItem.title = @"test3";
    self.view.backgroundColor = [UIColor whiteColor];
    self.showLabel.text = @"移除V3,直接跳到到V4";
    self.insertButton.hidden = NO;
}

- (void)pushButton_Click:(UIButton *)button {
    UIViewController *VC4 = [NSClassFromString(@"test4ViewController") new];
    [self.navigationController pushViewController:VC4 animated:YES];
}

- (void)insertButton_Click:(UIButton *)button {
    NSMutableArray *VCArr = [self.navigationController.viewControllers mutableCopy];
    [VCArr removeLastObject];
    [VCArr addObject:[NSClassFromString(@"test4ViewController") new]];
    [self.navigationController setViewControllers:[VCArr copy] animated:YES];
}

@end
