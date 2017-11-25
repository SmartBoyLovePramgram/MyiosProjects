//
//  LXQMeViewController.m
//  baisibudejie
//
//  Created by lixiaoqiang on 2017/11/19.
//  Copyright © 2017年 lixiaoqiang. All rights reserved.
//

#import "LXQMeViewController.h"
#import "LXQSettingViewController.h"
@interface LXQMeViewController ()

@end

@implementation LXQMeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = XMGCommonBgColor;
    // 右边-设置
    UIBarButtonItem *settingItem = [UIBarButtonItem itemWithImage:@"mine-setting-icon" highImage:@"mine-setting-icon-click" target:self action:@selector(settingClick)];
    // 右边-月亮
    UIBarButtonItem *moonItem = [UIBarButtonItem itemWithImage:@"mine-moon-icon" highImage:@"mine-moon-icon-click" target:self action:@selector(moonClick)];
    self.navigationItem.rightBarButtonItems = @[settingItem, moonItem];
}

- (void)settingClick
{
    XMGLogFunc
    LXQSettingViewController *settingVc = [[LXQSettingViewController alloc] init];
    [self.navigationController pushViewController:settingVc animated:YES];
}

- (void)moonClick
{
    XMGLogFunc
}

@end
