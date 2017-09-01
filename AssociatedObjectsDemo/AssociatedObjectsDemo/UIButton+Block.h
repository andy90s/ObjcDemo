//
//  UIButton+Block.h
//  AssociatedObjectsDemo
//
//  Created by 梁彬 on 2017/9/1.
//  Copyright © 2017年 andy90s. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef void(^touchBlock)(void);

@interface UIButton (Block)

- (void)handleTouchUpInside:(touchBlock)block;

@end
