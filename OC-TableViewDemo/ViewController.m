//
//  ViewController.m
//  OC-TableViewDemo
//
//  Created by YouXianMing on 15/9/28.
//  Copyright © 2015年 YouXianMing. All rights reserved.
//

#import "ViewController.h"

#import "TypeOneCell.h"
#import "TypeTwoCell.h"

#import "TypeOneModel.h"
#import "TypeTwoModel.h"

static NSString *typeOneCellFlag = @"typeOneCellFlag";
static NSString *typeTwoCellFlag = @"typeTwoCellFlag";

@interface ViewController () <UITableViewDataSource, UITableViewDelegate>

@property (nonatomic, strong) NSMutableArray  *datasArray;
@property (nonatomic, strong) UITableView     *tableView;

@end

@implementation ViewController

- (void)viewDidLoad {
    
    [super viewDidLoad];
    
    [self initDatasArray];
    
    [self initTableView];
}

#pragma mark - 数据源相关
- (void)initDatasArray {

    self.datasArray = [NSMutableArray array];
    
    [self.datasArray addObject:[TypeOneModel modelWithCellFlag:typeOneCellFlag cellHeight:100.f data:@"TypeOneModel"]];
    [self.datasArray addObject:[TypeTwoModel modelWithCellFlag:typeTwoCellFlag cellHeight:200.f data:@"TypeTwoModel"]];
}

#pragma mark - tableView相关
- (void)initTableView {

    self.tableView = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStylePlain];
    self.tableView.delegate       = self;
    self.tableView.dataSource     = self;
    self.tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
    [self.view addSubview:self.tableView];
    
    [self.tableView registerClass:[TypeOneCell class] forCellReuseIdentifier:typeOneCellFlag];
    [self.tableView registerClass:[TypeTwoCell class] forCellReuseIdentifier:typeTwoCellFlag];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

    return self.datasArray.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {

    BaseModel *model = self.datasArray[indexPath.row];
    
    BaseTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:model.cellFlag];
    cell.tableView          = tableView;
    cell.indexPath          = indexPath;
    cell.data               = model.data;
    [cell loadData];
    
    return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {

    BaseModel *model = self.datasArray[indexPath.row];
    
    return model.cellHeight;
}

@end
