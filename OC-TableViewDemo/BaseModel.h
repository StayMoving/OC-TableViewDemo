//
//  BaseModel.h
//  OC-TableViewDemo
//
//  Created by YouXianMing on 15/9/28.
//  Copyright © 2015年 YouXianMing. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface BaseModel : NSObject

@property (nonatomic, strong) NSString *cellFlag;
@property (nonatomic)         CGFloat   cellHeight;
@property (nonatomic, strong) id        data;

+ (instancetype)modelWithCellFlag:(NSString *)flag cellHeight:(CGFloat)height data:(id)data;

@end
