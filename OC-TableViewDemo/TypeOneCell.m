//
//  TypeOneCell.m
//  OC-TableViewDemo
//
//  Created by YouXianMing on 15/9/28.
//  Copyright © 2015年 YouXianMing. All rights reserved.
//

#import "TypeOneCell.h"

@implementation TypeOneCell

- (void)cellSetup {
    
    [super cellSetup];

    self.backgroundColor = [[UIColor redColor] colorWithAlphaComponent:0.5f];
}

- (void)loadData {

    self.textLabel.text = self.data;
}

@end
