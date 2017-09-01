//
//  ViewController.m
//  AssociatedObjectsDemo
//
//  Created by 梁彬 on 2017/9/1.
//  Copyright © 2017年 andy90s. All rights reserved.
//

#import "ViewController.h"
#import "UIButton+Block.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    
    
    UIButton *button = [[UIButton alloc] initWithFrame:CGRectMake(100, 100, 100, 100)];
    button.backgroundColor = [UIColor redColor];
    [button handleTouchUpInside:^{
        NSLog(@"触发touchUpInside事件");
    }];
    [self.view addSubview:button];
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    
}


@end
