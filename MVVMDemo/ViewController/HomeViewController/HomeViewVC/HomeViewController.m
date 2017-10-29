//
//  HomeViewController.m
//  MVVMDemo
//
//  Created by 何锦涛 on 2017/10/28.
//  Copyright © 2017年 hither. All rights reserved.
//

#import "HomeViewController.h"
#import "HomeViewModel.h"
#import "HomeWBTableViewCell.h"

DefineCellID(HomeWBTableViewCell_home_reu_id, @"HomeWBTableViewCell")

@interface HomeViewController ()<UITableViewDelegate,UITableViewDataSource>

@property (nonatomic ,strong) HomeViewModel*homeViewModel;
@property (nonatomic ,strong) NSMutableArray*homeUserArray;
@property (nonatomic ,strong) NSMutableArray*homeTextArray;
@property (nonatomic ,strong) UITableView *homeTableView;

@end

@implementation HomeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self configVC];
}

-(void)configVC{
    self.view.backgroundColor = [UIColor whiteColor];
    _homeUserArray = [NSMutableArray array];
    _homeTextArray = [NSMutableArray array];
    _homeViewModel = [[HomeViewModel alloc]init];
    [self.view addSubview:self.homeTableView];
    [self configRefresh];
    [self loadNewData];
}

-(void)configRefresh{
    W_S
    MJRefreshNormalHeader *header = [MJRefreshNormalHeader headerWithRefreshingBlock:^{
        [weakSelf loadNewData];
    }];
    
    self.homeTableView.mj_header = header;
}

-(void)loadNewData{
    W_S
    [self.homeViewModel refreshRequestWithCallback:^(NSArray *userArray, NSArray *userTextArray) {
        [weakSelf configTmpReloadMethodUserArray:userArray userTextArray:userTextArray];
    } isHead:YES];
}

-(void)configTmpReloadMethodUserArray:(NSArray*)userArray userTextArray:(NSArray *)userTextArray{
    _homeUserArray = [userArray mutableCopy];
    _homeTextArray = [userTextArray mutableCopy];
    [self.homeTableView.mj_header endRefreshing];
    [self.homeTableView reloadData];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return _homeUserArray.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    HomeWBTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:HomeWBTableViewCell_home_reu_id];
    
    [cell setModelWithData:_homeUserArray[indexPath.row] text:_homeTextArray[indexPath.row]];
    
    return cell;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    HomeViewModel *homeViewModel = [[HomeViewModel alloc] init];
    [homeViewModel goDetailPageWithModel:_homeUserArray[indexPath.row] WithViewController:self];
}

-(UITableView *)homeTableView{
    if(!_homeTableView){
        _homeTableView = [[UITableView alloc]initWithFrame:self.view.bounds style:UITableViewStylePlain];
        _homeTableView.backgroundColor = [UIColor whiteColor];
        _homeTableView.delegate = self;
        _homeTableView.dataSource = self;
        _homeTableView.showsVerticalScrollIndicator = NO;
        _homeTableView.autoresizingMask = UIViewAutoresizingFlexibleWidth|UIViewAutoresizingFlexibleHeight;
        _homeTableView.estimatedRowHeight = 100.f;
        _homeTableView.rowHeight = UITableViewAutomaticDimension;
        TableViewNOXIBRegisterCell(_homeTableView, HomeWBTableViewCell, HomeWBTableViewCell_home_reu_id);
    }
    return _homeTableView;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
