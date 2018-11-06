//
//  test1ViewController.m
//  testPush
//
//  Created by XLL on 2018/11/5.
//  Copyright © 2018 liangli. All rights reserved.
//

#import "test1ViewController.h"

@interface test1ViewController ()

@end

@implementation test1ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationItem.title = @"test1";
    self.view.backgroundColor = [UIColor whiteColor];
    self.insertButton.hidden = NO;
    self.showLabel.text = @"中间插入VC";
}

- (void)pushButton_Click:(UIButton *)button {
    UIViewController *VC1 = [NSClassFromString(@"test2ViewController") new];
    [self.navigationController pushViewController:VC1 animated:YES];
}

- (void)insertButton_Click:(UIButton *)btn  {
    NSMutableArray *VCArr = [self.navigationController.viewControllers mutableCopy];
    [VCArr insertObject:[NSClassFromString(@"InsertViewController") new] atIndex:1]; //
    [self.navigationController setViewControllers:[VCArr copy] animated:YES];
}

@end
