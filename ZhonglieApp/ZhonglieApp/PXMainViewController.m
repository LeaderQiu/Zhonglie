//
//  PXMainViewController.m
//  ZhonglieApp
//
//  Created by 邱思雨 on 15/5/25.
//  Copyright (c) 2015年 PX. All rights reserved.
//

#import "PXMainViewController.h"

@interface PXMainViewController () <UITableViewDelegate,UITableViewDataSource>
@property(nonatomic,strong) UIImageView *LogoImageV;
@property(nonatomic,strong) UIImage *LogoImage;
@property(nonatomic,strong) UITableView *MainTableV;

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
    //创建头部招牌ImageView
    //设置头部招牌背景图
    UIImageView *headerImageV = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"首页背景图"]];
    
    [self.view addSubview:headerImageV];
    
    //添加Logo
    UIImageView* LogoImageV=[[UIImageView alloc] initWithFrame:CGRectMake(40,50,64,63)];
    
    LogoImageV.image =[UIImage imageNamed:@"形状-34"];
    
    [headerImageV addSubview:LogoImageV];
    
    //添加标语
    UIImageView *TextImageV = [[UIImageView alloc] initWithFrame:CGRectMake(130,65,158,45)];
    
    TextImageV.image = [UIImage imageNamed:@"标语"];
    
    [headerImageV addSubview:TextImageV];

    
    //创建首页岗位列表tableView
    UITableView *MainTableV = [[UITableView alloc] initWithFrame:CGRectMake(0, 170, [UIScreen mainScreen].bounds.size.width, 450)];
    
    MainTableV.backgroundColor = [UIColor yellowColor];
    
    [self.view addSubview:MainTableV];

    
}

//隐藏状态栏
-(BOOL)prefersStatusBarHidden
{
    return YES;
}

#pragma mark - TableView的数据源方法
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    self.MainTableV.backgroundColor = [UIColor blueColor];
}

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 100;
}

@end
