//
//  BaseModel.m
//  OC-TableViewDemo
//
//  Created by YouXianMing on 15/9/28.
//  Copyright © 2015年 YouXianMing. All rights reserved.
//

#import "BaseModel.h"

@implementation BaseModel

+ (instancetype)modelWithCellFlag:(NSString *)flag cellHeight:(CGFloat)height data:(id)data {

    BaseModel *model = [[[self class] alloc] init];
    
    model.cellFlag   = flag;
    model.cellHeight = height;
    model.data       = data;
    
    return model;
}

@end
