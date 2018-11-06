//
//  test4ViewController.m
//  testPush
//
//  Created by XLL on 2018/11/5.
//  Copyright © 2018 liangli. All rights reserved.
//

#import "test4ViewController.h"

@interface test4ViewController ()

@end

@implementation test4ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationItem.title = @"test4";
    self.view.backgroundColor = [UIColor whiteColor];
    self.pushButton.hidden = NO;
    [self.pushButton setTitle:@"重调路径" forState:UIControlStateNormal];
    self.delButton.hidden = NO;
    
}

- (void)pushButton_Click:(UIButton *)button {
    UIViewController *VC0 = [NSClassFromString(@"ViewController") new];
    UIViewController *VC1 = [NSClassFromString(@"InsertViewController") new];
    UIViewController *VC2 = [NSClassFromString(@"test1ViewController") new];
    UIViewController *VC3 = [NSClassFromString(@"InsertViewController") new];
    UIViewController *VC4 = [NSClassFromString(@"test4ViewController") new];
    NSArray *VCArr = @[VC0,VC1,VC2,VC3,VC4];
    [self.navigationController setViewControllers:[VCArr copy] animated:NO];
}

- (void)delButton_Click:(UIButton *)btn  {
    NSMutableArray *VCArr = [self.navigationController.viewControllers mutableCopy];
    NSArray *reVCArr = @[VCArr.firstObject,VCArr.lastObject];
    [self.navigationController setViewControllers:[reVCArr copy] animated:NO];
}

@end
