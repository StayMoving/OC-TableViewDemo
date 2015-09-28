//
//  BaseTableViewCell.m
//  OC-TableViewDemo
//
//  Created by YouXianMing on 15/9/28.
//  Copyright © 2015年 YouXianMing. All rights reserved.
//

#import "BaseTableViewCell.h"

@implementation BaseTableViewCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        
        [self cellSetup];
        
        [self buildSubViews];
    }
    
    return self;
}

- (void)cellSetup {
    
    self.selectionStyle = UITableViewCellSelectionStyleNone;
}

- (void)buildSubViews {
    
}

- (void)loadData {
    
}

@end
