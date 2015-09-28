//
//  BaseTableViewCell.h
//  OC-TableViewDemo
//
//  Created by YouXianMing on 15/9/28.
//  Copyright © 2015年 YouXianMing. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BaseTableViewCell : UITableViewCell

@property (nonatomic, weak) NSIndexPath *indexPath;
@property (nonatomic, weak) UITableView *tableView;
@property (nonatomic, weak) id           data;

/**
 *  基本设置
 */
- (void)cellSetup;

/**
 *  构建subView
 */
- (void)buildSubViews;

/**
 *  加载数据
 */
- (void)loadData;

@end
