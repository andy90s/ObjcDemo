//
//  ArrayDataSource.m
//  ObjcDemo1
//
//  Created by 梁彬 on 2017/8/28.
//  Copyright © 2017年 雍敏科技. All rights reserved.
//

#import "ArrayDataSource.h"
#import "Cell.h"

@interface ArrayDataSource()

@property (nonatomic,strong) NSArray *items;

@property (nonatomic,copy) NSString *cellIdentifier;

@property (nonatomic,copy) TableViewCellConfigureBlock configureCellBlock;

@end

@implementation ArrayDataSource

- (instancetype)init {
    return nil;
}

- (id)initWithItems:(NSArray *)anItems cellIdentifier:(NSString *)aCellIdentifier configureCellBlock:(TableViewCellConfigureBlock)aConfigureBlock {
    
    self = [super init];
    if (self) {
        self.items = anItems;
        self.cellIdentifier = aCellIdentifier;
        self.configureCellBlock = [aConfigureBlock copy];
    }
    return self;
}

- (id)itemAtIndexPath:(NSIndexPath *)indexPath {
    
    return self.items[indexPath.row];
}

#pragma mark - UITableViewDataSource

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.items.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    Cell *cell = [tableView dequeueReusableCellWithIdentifier:self.cellIdentifier forIndexPath:indexPath];
    id item = [self itemAtIndexPath:indexPath];
    self.configureCellBlock(cell, item);
    return cell;
}

@end
