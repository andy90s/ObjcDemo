//
//  TableViewDelegate.h
//  ObjcDemo1
//
//  Created by 梁彬 on 2017/8/28.
//  Copyright © 2017年 雍敏科技. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface TableViewDelegate : NSObject <UITableViewDelegate>

- (instancetype)initWithController:(UIViewController *)controller data:(NSArray *)models;

@end
