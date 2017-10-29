//
//  HomeWBTableViewCell.m
//  MVVMDemo
//
//  Created by 何锦涛 on 2017/10/29.
//  Copyright © 2017年 hither. All rights reserved.
//

#import "HomeWBTableViewCell.h"

@interface HomeWBTableViewCell()

@property (nonatomic ,strong) UIImageView *userImgV;
@property (nonatomic ,strong) UILabel *textLbl;
@property (nonatomic ,strong) UILabel *timeLbl;
@property (nonatomic ,strong) UILabel *userNameLbl;
@property (nonatomic ,strong) UILabel *locationLbl;

@end

@implementation HomeWBTableViewCell

-(instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        
        [self configUI];
        
    }
    return self;
}

-(void)configUI{
    self.selectionStyle = UITableViewCellSelectionStyleNone;
    [self.contentView addSubview:self.userImgV];
    [self.contentView addSubview:self.textLbl];
    [self.contentView addSubview:self.timeLbl];
    [self.contentView addSubview:self.userNameLbl];
    [self.contentView addSubview:self.locationLbl];
    [self configConstrin];
}

-(void)configConstrin{
    [self.userImgV mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.left.equalTo(self.contentView).offset(12);
        make.width.height.equalTo(@60);
    }];
    
    [self.userNameLbl mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self.userImgV.mas_right).offset(10);
        make.top.equalTo(self.userImgV.mas_top);
        make.height.equalTo(@14);
    }];
    
    [self.locationLbl mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerY.equalTo(self.userNameLbl.mas_centerY);
        make.right.equalTo(self.contentView.mas_right).offset(-10);
        make.height.equalTo(self.userNameLbl.mas_height);
    }];
    
    [self.textLbl mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self.userNameLbl.mas_left);
        make.top.equalTo(self.userNameLbl.mas_bottom).offset(10);
        make.right.equalTo(self.contentView.mas_right).offset(-10);
    }];
    
    [self.timeLbl mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.textLbl.mas_bottom).offset(10);
        make.right.equalTo(self.locationLbl.mas_right);
        make.bottom.equalTo(self.contentView.mas_bottom).offset(-5);
        make.height.equalTo(self.userNameLbl.mas_height);
    }];
}


-(UIImageView *)userImgV{
    if (!_userImgV) {
        _userImgV = [[UIImageView alloc]init];
        _userImgV.contentMode = UIViewContentModeScaleAspectFill;
        _userImgV.autoresizingMask = UIViewAutoresizingFlexibleHeight;
        _userImgV.clipsToBounds = YES;
        _userImgV.layer.cornerRadius = 30;
        _userImgV.layer.masksToBounds = YES;
    }
    return _userImgV;
}

-(UILabel *)textLbl{
    if (!_textLbl) {
        _textLbl = [[UILabel alloc]init];
        _textLbl.font = HJTFont(14);
        _textLbl.textColor = RGBCOLOR(51, 51, 51);
        _textLbl.numberOfLines = 0;
    }
    return _textLbl;
}

-(UILabel *)timeLbl{
    if (!_timeLbl) {
        _timeLbl = [[UILabel alloc]init];
        _timeLbl.font = HJTFont(12);
        _timeLbl.textColor = RGBCOLOR(102, 102, 102);
    }
    return _timeLbl;
}

-(UILabel *)userNameLbl{
    if (!_userNameLbl) {
        _userNameLbl = [[UILabel alloc]init];
        _userNameLbl.font = HJTFont(12);
        _userNameLbl.textColor = RGBCOLOR(102, 102, 102);
    }
    return _userNameLbl;
}

-(UILabel *)locationLbl{
    if (!_locationLbl) {
        _locationLbl = [[UILabel alloc]init];
        _locationLbl.font = HJTFont(12);
        _locationLbl.textColor = RGBCOLOR(102, 102, 102);
    }
    return _locationLbl;
}

-(void)setModelWithData:(WBDataUser *)publicModel text:(WBDataStatuses *)data{
    _userNameLbl.text = publicModel.screenName;
    _locationLbl.text = publicModel.location;
    _textLbl.text = data.text;
    [_userImgV sd_setImageWithURL:[NSURL URLWithString:[NSString stringWithFormat:@"%@",publicModel.profileImageUrl]]];
    _timeLbl.text = publicModel.createdAt;
}

@end
