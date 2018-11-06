//
//  BaseViewController.m
//  testPush
//
//  Created by XLL on 2018/11/5.
//  Copyright © 2018 liangli. All rights reserved.
//

#import "BaseViewController.h"

@interface BaseViewController ()

@end

@implementation BaseViewController {
    UIButton *_printButton;  // 打印
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    
    _pushButton = [[UIButton alloc]init];
    [_pushButton setTitle:@"下页" forState:UIControlStateNormal];
    [_pushButton addTarget:self action:@selector(pushButton_Click:) forControlEvents:UIControlEventTouchUpInside];
    _printButton = [[UIButton alloc]init];
    [_printButton setTitle:@"打印" forState:UIControlStateNormal];
    [_printButton addTarget:self action:@selector(printButton_Click:) forControlEvents:UIControlEventTouchUpInside];
    _insertButton = [[UIButton alloc]init];
    [_insertButton setTitle:@"插入" forState:UIControlStateNormal];
    [_insertButton addTarget:self action:@selector(insertButton_Click:) forControlEvents:UIControlEventTouchUpInside];
    _delButton = [[UIButton alloc]init];
    [_delButton setTitle:@"删除" forState:UIControlStateNormal];
    [_delButton addTarget:self action:@selector(delButton_Click:) forControlEvents:UIControlEventTouchUpInside];
    
    NSArray <UIButton *>*btnArr = @[_pushButton,_printButton,_insertButton,_delButton];
    for (NSInteger i = 0; i<btnArr.count; i++) {
        UIButton *btn = btnArr[i];
        [btn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        btn.layer.borderColor = [UIColor grayColor].CGColor;
        btn.layer.borderWidth = 1/[UIScreen mainScreen].scale;
        if (i%2 == 0) {
            btn.frame = CGRectMake(self.view.frame.size.width *0.5 -110, 150+70*(i/2), 100, 50);
        }else {
            btn.frame = CGRectMake(self.view.frame.size.width *0.5 + 10, 150+70*(i/2), 100, 50);
        }
        [self.view addSubview:btn];
        if (i == 0 || i == 1) {
            btn.hidden = NO;
        }else {
            btn.hidden = YES;
        }
    }
    _showLabel = [[UILabel alloc]initWithFrame:CGRectMake(20, 350,self.view.frame.size.width-40 , 50)];
    [self.view addSubview:_showLabel];
    _showLabel.textAlignment = NSTextAlignmentCenter;
    _showLabel.font = [UIFont systemFontOfSize:15];
}

- (void)pushButton_Click:(UIButton *)btn {
    
}

- (void)printButton_Click:(UIButton *)btn {
    NSInteger i = 0;
    NSLog(@"*===================================*");
    for (UIViewController *VC in self.navigationController.viewControllers) {
        NSLog(@"%ld---%@",i,NSStringFromClass([VC class]));
        i++;
    }
}

- (void)insertButton_Click:(UIButton *)btn {
    
}

- (void)delButton_Click:(UIButton *)btn {
    
}

@end
