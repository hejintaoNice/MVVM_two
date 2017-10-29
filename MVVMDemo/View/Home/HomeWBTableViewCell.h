//
//  HomeWBTableViewCell.h
//  MVVMDemo
//
//  Created by 何锦涛 on 2017/10/29.
//  Copyright © 2017年 hither. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "WBDataModels.h"

@interface HomeWBTableViewCell : UITableViewCell

-(void)setModelWithData:(WBDataUser*)publicModel text:(WBDataStatuses *)data;

@end
