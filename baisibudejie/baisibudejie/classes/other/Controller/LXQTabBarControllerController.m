//
//  LXQTabBarControllerController.m
//  baisibudejie
//
//  Created by lixiaoqiang on 2017/11/12.
//  Copyright © 2017年 lixiaoqiang. All rights reserved.
//

#import "LXQTabBarControllerController.h"
#import "LXQTabBar.h"
#import "LXQEssenceViewController.h"
#import "LXQNewViewController.h"
#import "LXQMeViewController.h"
#import "LXQFollowViewController.h"
@interface LXQTabBarControllerController ()
@end

@implementation LXQTabBarControllerController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    /****设置所有uitabbaritem的文字属性*/
    UITabBarItem *item = [UITabBarItem appearance];
    //普通状态的文字属性
    NSMutableDictionary *normalAttrs = [NSMutableDictionary dictionary];
    normalAttrs[NSFontAttributeName] = [UIFont systemFontOfSize:14];
    normalAttrs[NSForegroundColorAttributeName] = [UIColor grayColor];
    [item setTitleTextAttributes:normalAttrs forState:UIControlStateNormal];
    
    NSMutableDictionary *selectAttrs = [NSMutableDictionary dictionary];
    selectAttrs[NSForegroundColorAttributeName] = [UIColor darkGrayColor];
    [item setTitleTextAttributes:selectAttrs forState:UIControlStateSelected];
    
    [self setUpOneChildViewController:[[LXQEssenceViewController alloc] init] title:@"精华" image:@"tabBar_essence_icon" selectedImage:@"tabBar_essence_click_icon"];
    [self setUpOneChildViewController:[[LXQNewViewController alloc] init] title:@"新帖" image:@"tabBar_new_icon" selectedImage:@"tabBar_new_click_icon"];
    [self setUpOneChildViewController:[[LXQFollowViewController alloc] init] title:@"关注" image:@"tabBar_friendTrends_icon" selectedImage:@"tabBar_friendTrends_click_icon"];
    [self setUpOneChildViewController:[[LXQMeViewController alloc] init] title:@"我" image:@"tabBar_me_icon" selectedImage:@"tabBar_me_click_icon"];
    LXQTabBar *lxqTabbar = [[LXQTabBar alloc] init];
    [self setValue:lxqTabbar forKey:@"_tabBar"];
}
- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
   
    });
}

- (void)setUpOneChildViewController:(UIViewController*)vc title:(NSString*)title image:(NSString*)image
                      selectedImage:(NSString*)selectedImage
{
    UINavigationController *navi = [[UINavigationController alloc] initWithRootViewController:vc];
    navi.tabBarItem.title = title;
    if (image.length&&selectedImage.length) {
        navi.tabBarItem.image = [UIImage imageNamed:image];
        navi.tabBarItem.selectedImage = [UIImage imageNamed:selectedImage];
    }
    [self addChildViewController:navi];
}

@end
