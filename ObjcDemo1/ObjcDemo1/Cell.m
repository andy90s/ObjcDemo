//
//  Cell.m
//  ObjcDemo1
//
//  Created by 梁彬 on 2017/8/28.
//  Copyright © 2017年 雍敏科技. All rights reserved.
//

#import "Cell.h"
#import "Model.h"

@implementation Cell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setModel:(Model *)model {
    _model = model;
    self.textLabel.text = _model.test;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
