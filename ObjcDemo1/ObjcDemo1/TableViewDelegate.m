//
//  TableViewDelegate.m
//  ObjcDemo1
//
//  Created by 梁彬 on 2017/8/28.
//  Copyright © 2017年 雍敏科技. All rights reserved.
//

#import "TableViewDelegate.h"
#import "ViewController.h"
#import "Model.h"

@interface TableViewDelegate()

@property (nonatomic,strong) UIViewController *tempViewController;
@property (nonatomic,strong) NSArray *models;


@end

@implementation TableViewDelegate

- (instancetype)init {
    return nil;
}

- (instancetype)initWithController:(UIViewController *)controller data:(NSArray *)models {
    self = [super init];
    if (self) {
        self.tempViewController = controller;
        self.models = models;
    }
    return self;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    
    ViewController *vc = [ViewController new];
    Model *model = self.models[indexPath.row];
    vc.title = model.test;
    [self.tempViewController.navigationController pushViewController:vc animated:YES];
}

@end
