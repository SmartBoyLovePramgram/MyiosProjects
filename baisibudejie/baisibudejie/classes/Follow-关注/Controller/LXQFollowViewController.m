//
//  LXQFollowViewController.m
//  baisibudejie
//
//  Created by lixiaoqiang on 2017/11/19.
//  Copyright © 2017年 lixiaoqiang. All rights reserved.
//

#import "LXQFollowViewController.h"

@interface LXQFollowViewController ()

@end

@implementation LXQFollowViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = XMGCommonBgColor;
    self.navigationItem.title = @"我的关注";
    // 左边
    self.navigationItem.leftBarButtonItem = [UIBarButtonItem itemWithImage:@"friendsRecommentIcon" highImage:@"friendsRecommentIcon-click" target:self action:@selector(followClick)];
}
- (void)followClick
{
    XMGLogFunc
    
   
}


@end
