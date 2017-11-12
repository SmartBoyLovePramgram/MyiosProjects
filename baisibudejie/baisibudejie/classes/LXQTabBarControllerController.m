//
//  LXQTabBarControllerController.m
//  baisibudejie
//
//  Created by lixiaoqiang on 2017/11/12.
//  Copyright © 2017年 lixiaoqiang. All rights reserved.
//

#import "LXQTabBarControllerController.h"

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
    
    [self setUpOneChildViewController:[[UITableViewController alloc] init] title:@"精华" image:@"tabBar_essence_icon" selectedImage:@"tabBar_essence_click_icon"];
    [self setUpOneChildViewController:[[UITableViewController alloc] init] title:@"新帖" image:@"tabBar_new_icon" selectedImage:@"tabBar_new_click_icon"];
    [self setUpOneChildViewController:[[UIViewController alloc] init] title:@"" image:@"" selectedImage:@""];
    [self setUpOneChildViewController:[[UITableViewController alloc] init] title:@"关注" image:@"tabBar_friendTrends_icon" selectedImage:@"tabBar_friendTrends_click_icon"];
    [self setUpOneChildViewController:[[UITableViewController alloc] init] title:@"我" image:@"tabBar_me_icon" selectedImage:@"tabBar_me_click_icon"];
}
- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        UIButton *centerbutton = [UIButton buttonWithType:UIButtonTypeCustom];
        [centerbutton setImage:[UIImage imageNamed:@"tabBar_publish_icon"] forState:UIControlStateNormal];
        [centerbutton setImage:[UIImage imageNamed:@"tabBar_publish_click_icon"] forState:UIControlStateSelected];
        [centerbutton addTarget:self action:@selector(centerButtonAction) forControlEvents:UIControlEventTouchUpInside];
        centerbutton.frame = CGRectMake(0, 0,self.tabBar.frame.size.width/5.0, self.tabBar.frame.size.height);
        centerbutton.center = CGPointMake(self.tabBar.frame.size.width/2.0, self.tabBar.frame.size.height/2.0);
        [self.tabBar addSubview:centerbutton];
    });
}

- (void)setUpOneChildViewController:(UIViewController*)vc title:(NSString*)title image:(NSString*)image
                      selectedImage:(NSString*)selectedImage
{
    vc.tabBarItem.title = title;
    if (image.length&&selectedImage.length) {
        vc.tabBarItem.image = [UIImage imageNamed:image];
        vc.tabBarItem.selectedImage = [UIImage imageNamed:selectedImage];
    }
    [self addChildViewController:vc];
}
- (void)centerButtonAction
{
    XMGLog(@"%s",__func__);
}
@end
