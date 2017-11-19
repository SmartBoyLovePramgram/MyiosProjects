//
//  LXQTabBar.m
//  baisibudejie
//
//  Created by lixiaoqiang on 2017/11/19.
//  Copyright © 2017年 lixiaoqiang. All rights reserved.
//

#import "LXQTabBar.h"
@interface LXQTabBar()
@property (nonatomic,weak)UIButton *centerButton;
@end
@implementation LXQTabBar

- (void)layoutSubviews
{
    [super layoutSubviews];
    CGFloat tabarwidth = self.frame.size.width/5.0;
    CGFloat tabarheight = self.frame.size.height;
    NSInteger index = 0;
    for (UIView *subView in self.subviews) {
       // XMGLog(@"%@",subView);
        if (![NSStringFromClass([subView class]) isEqualToString:@"UITabBarButton"]) continue;
        if (index == 2) {
            index = index + 1;
            XMGLog(@"index%zd",index);
        }
        NSLog(@"%zd",index);
        CGFloat buttonx = index * tabarwidth;
        subView.frame = CGRectMake(buttonx, 0, tabarwidth, tabarheight);
        index ++;
    }
    self.centerButton.frame = CGRectMake(0, 0,self.frame.size.width/5.0, self.frame.size.height);
    self.centerButton.center = CGPointMake(self.frame.size.width/2.0, self.frame.size.height/2.0);
}
- (UIButton*)centerButton
{
    if (!_centerButton) {
        UIButton *centerbutton = [UIButton buttonWithType:UIButtonTypeCustom];
        [centerbutton setImage:[UIImage imageNamed:@"tabBar_publish_icon"] forState:UIControlStateNormal];
        [centerbutton setImage:[UIImage imageNamed:@"tabBar_publish_click_icon"] forState:UIControlStateSelected];
        [centerbutton addTarget:self action:@selector(centerButtonAction) forControlEvents:UIControlEventTouchUpInside];
        [self addSubview:centerbutton];
        _centerButton = centerbutton;
    }
    return _centerButton;
}
- (void)centerButtonAction
{
    XMGLog(@"%s",__func__);
}
@end
