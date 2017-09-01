//
//  UIButton+Block.m
//  AssociatedObjectsDemo
//
//  Created by 梁彬 on 2017/9/1.
//  Copyright © 2017年 andy90s. All rights reserved.
//

#import "UIButton+Block.h"
#import <objc/runtime.h>

@implementation UIButton (Block)

- (void)handleTouchUpInside:(touchBlock)block {
    objc_setAssociatedObject(self, @selector(handleTouchUpInside:), block, OBJC_ASSOCIATION_COPY_NONATOMIC);
    [self addTarget:self action:@selector(touchUpInsideBlock) forControlEvents:UIControlEventTouchUpInside];
}

- (void)touchUpInsideBlock {
    touchBlock block = objc_getAssociatedObject(self, @selector(handleTouchUpInside:));
    if (block) {
        block();
    }
}


@end
