//
//  PXMainViewController.m
//  ZhonglieApp
//
//  Created by 邱思雨 on 15/5/25.
//  Copyright (c) 2015年 PX. All rights reserved.
//

#import "PXMainViewController.h"
#import "PXMainCell.h"

@interface PXMainViewController () <UITableViewDelegate,UITableViewDataSource,UITextFieldDelegate>
@property(nonatomic,strong) UIImageView *LogoImageV;
@property(nonatomic,strong) UIImage *LogoImage;
@property(nonatomic,strong) UITableView *MainTableV;
@property(nonatomic,strong) UITableViewCell *MainTableViewCell;
@property(nonatomic,strong) UISearchBar *searchBar;
@end

@implementation PXMainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.navigationController.navigationBarHidden = YES;
    
    self.navigationController.tabBarItem = [[UITabBarItem alloc] initWithTitle:nil image: [UIImage imageNamed:@"home"]selectedImage:[UIImage imageNamed:@"home-hover"]];
  
    [self setupHeaderView];
    
    
}

-(void)setupHeaderView
{
    //创建头部招牌View
    UIView *headerV = [[UIView alloc] initWithFrame:CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width, 176)];
    
    headerV.backgroundColor = [UIColor blackColor];
    
    [self.view addSubview:headerV];
    
    //设置头部招牌背景图
    UIImageView *headerImageV = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"首页背景图"]];
    
    [headerV addSubview:headerImageV];
    
    //添加Logo
    UIImageView* LogoImageV=[[UIImageView alloc] initWithFrame:CGRectMake(40,50,64,63)];
    
    LogoImageV.image =[UIImage imageNamed:@"形状-34"];
    
    [headerImageV addSubview:LogoImageV];
    
    //添加标语
    UIImageView *TextImageV = [[UIImageView alloc] initWithFrame:CGRectMake(130,65,158,45)];
    
    TextImageV.image = [UIImage imageNamed:@"标语"];
    
    [headerImageV addSubview:TextImageV];
    
    //添加搜索栏
//    UISearchBar *searchBar = [[UISearchBar alloc]initWithFrame:CGRectMake(130, 120, 160, 30)];
//    _searchBar = searchBar;
//    
//   
//    
////    [[searchBar.subviews objectAtIndex:0] removeFromSuperview];
//    
//    
////    searchBar.backgroundImage = [UIImage imageNamed:@"searchBarBack"];
//    
//     [self setupSearchBar];
//    
//    _searchBar.delegate = searchBar;
//    _searchBar.barStyle = UIBarStyleBlackTranslucent;
//    _searchBar.autocorrectionType = UITextAutocorrectionTypeNo;
//    _searchBar.autocapitalizationType = UITextAutocapitalizationTypeNone;
//    _searchBar.placeholder = (@"Search");
//    _searchBar.keyboardType =  UIKeyboardTypeDefault;
//    //为UISearchBar添加背景图片
//    UIView *segment = [_searchBar.subviews objectAtIndex:0];
//    UIImageView *bgImage = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"searchBarBack"]];
//    [segment addSubview: bgImage];
//    //<---背景图片
//    [self.view addSubview:_searchBar];
//    
//    
//    [headerImageV addSubview:searchBar];
    
    //添加仿SearchBar(TextFiel)
    UITextFieldTextDidBeginEditingNotification;
    UITextField *textFiel = [[UITextField alloc]initWithFrame:CGRectMake(130, 120, 160, 30)];
    
    textFiel.borderStyle = UITextBorderStyleNone;
    textFiel.keyboardType = UIKeyboardTypeDefault;
    textFiel.delegate = self;
    
    textFiel.autocorrectionType = UITextAutocorrectionTypeNo;
    textFiel.autocapitalizationType = UITextAutocapitalizationTypeNone;
    textFiel.returnKeyType = UIReturnKeyDone;
    
    textFiel.background = [UIImage imageNamed:@"searchBarBack"];
    
    
    UIImageView *image=[[UIImageView alloc] initWithImage:[UIImage imageNamed:@"查找职位"]];
    textFiel.leftView=image;
    textFiel.leftViewMode = UITextFieldViewModeUnlessEditing;
    
    [headerImageV addSubview:textFiel];

    
    //创建首页岗位列表tableView
    UITableView *MainTableV = [[UITableView alloc] initWithFrame:CGRectMake(0, 170, [UIScreen mainScreen].bounds.size.width, 450)];
    
    //设置tableView数据源代理
    MainTableV.dataSource = self;
    MainTableV.delegate = self;
    
    [self.view addSubview:MainTableV];

    _MainTableV = MainTableV;
}

//隐藏状态栏
-(BOOL)prefersStatusBarHidden
{
    return YES;
}


-(void)setupSearchBar
{
    
    
}
#pragma mark - 数据源

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    return 10;
}

//自定义Cell
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    static NSString *ID = @"PXMainCell";
    
    PXMainCell *cell = [tableView dequeueReusableCellWithIdentifier:ID];
    
    if (cell == nil) {
        cell = [[PXMainCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:ID];
    }
    return cell;
}


#pragma mark - 代理方法

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    
    NSLog(@"%zd", indexPath.row);
}

- (CGFloat)tableView:(UITableView *)tableView estimatedHeightForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    return 96.0;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    return 96.0;
}


@end
