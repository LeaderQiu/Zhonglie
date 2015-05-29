//
//  PXMainCell.m
//  ZhonglieApp
//
//  Created by mukang on 15/5/28.
//  Copyright (c) 2015年 PX. All rights reserved.
//

#import "PXMainCell.h"
@interface PXMainCell ()
@property (nonatomic,strong) UILabel *ZhiWei;


@end


@implementation PXMainCell


- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        
        self.backgroundColor = [UIColor colorWithRed:arc4random_uniform(255)/255.0 green:arc4random_uniform(255)/255.0 blue:arc4random_uniform(255)/255.0 alpha:1.0];
        
        
        /**
         *  这里写初始化cell内部控件的代码
         */
        [self setupData];
        
        
    }
    
    return self;
}

//加载Cell数据
-(void)setupData
{
    //加载职位信息
  
    
    
    
    
    
    
}

- (void)awakeFromNib {
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
