//
//  ArrayDataSource.h
//  ObjcDemo1
//
//  Created by 梁彬 on 2017/8/28.
//  Copyright © 2017年 雍敏科技. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

typedef void(^TableViewCellConfigureBlock)(id cell, id item);

@interface ArrayDataSource : NSObject <UITableViewDataSource>

- (id)initWithItems:(NSArray *)anItems cellIdentifier:(NSString *)aCellIdentifier configureCellBlock:(TableViewCellConfigureBlock)aConfigureBlock;

- (id)itemAtIndexPath:(NSIndexPath *)indexPath;

@end
