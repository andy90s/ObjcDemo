//
//  ViewController.m
//  ObjcDemo1
//
//  Created by 梁彬 on 2017/8/28.
//  Copyright © 2017年 雍敏科技. All rights reserved.
//

#import "ViewController.h"
#import "ArrayDataSource.h"
#import "TableViewDelegate.h"
#import "Model.h"
#import "Cell.h"

@interface ViewController ()

@property (nonatomic,strong) ArrayDataSource *arrayDataSrouce;

@property (nonatomic,strong) TableViewDelegate *tableViewDelegate;

@property (nonatomic,strong) UITableView *tableView;

@property (nonatomic,strong) NSMutableArray *models;


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self initData];
    [self setupTableView];
}

- (void)initData {
    self.models = [NSMutableArray new];
    for (NSString *name in [self names]) {
        Model *model = [Model new];
        model.test = name;
        [self.models addObject:model];
    }
}

- (void)setupTableView {
    self.automaticallyAdjustsScrollViewInsets = NO;
    [self.view addSubview:self.tableView];
}

- (UITableView *)tableView {
    if (!_tableView) {
        _tableView = [[UITableView alloc]initWithFrame:CGRectMake(0, 64, self.view.bounds.size.width, self.view.bounds.size.height - 64) style:UITableViewStylePlain];
        
        TableViewCellConfigureBlock configureCell = ^(Cell *cell, Model *model) {
            [cell setModel:model];
        };
        self.arrayDataSrouce = [[ArrayDataSource alloc]initWithItems:self.models cellIdentifier:@"cell" configureCellBlock:configureCell];
        self.tableViewDelegate = [[TableViewDelegate alloc]initWithController:self data:self.models];
        _tableView.dataSource = self.arrayDataSrouce;
        _tableView.delegate = self.tableViewDelegate;
        [_tableView registerClass:[Cell class] forCellReuseIdentifier:@"cell"];
    }
    return _tableView;
}

- (NSArray *)names {
    return @[@"111",@"222",@"333",@"444",@"555",@"666",@"777",@"888"];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    
}


@end
