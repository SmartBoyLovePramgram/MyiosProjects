//
//  LXQNewViewController.m
//  baisibudejie
//
//  Created by lixiaoqiang on 2017/11/19.
//  Copyright © 2017年 lixiaoqiang. All rights reserved.
//

#import "LXQNewViewController.h"

@interface LXQNewViewController ()

@end

@implementation LXQNewViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.navigationItem.title = @"新帖";
    // 左边
    self.navigationItem.leftBarButtonItem = [UIBarButtonItem itemWithImage:@"MainTagSubIcon" highImage:@"MainTagSubIconClick" target:self action:@selector(tagClick)];
}

- (void)tagClick
{
    XMGLogFunc
}

@end
