//
//  MacroDefine.h
//  KanManHua
//
//  Created by hejintao on 16/10/8.
//  Copyright © 2016年 hejintao. All rights reserved.
//

#ifndef MacroDefine_h
#define MacroDefine_h
//#####################################################################################

#define RGBACOLOR(r,g,b,a) [UIColor colorWithRed:(r)/255.0f green:(g)/255.0f blue:(b)/255.0f alpha:(a)]
#define RGBCOLOR(r,g,b) [UIColor colorWithRed:(r)/255.0f green:(g)/255.0f blue:(b)/255.0f alpha:(1.f)]

#define kVTColorFromHex(hexValue) [UIColor \
colorWithRed:((float)((hexValue & 0xFF0000) >> 16))/255.0 \
green:((float)((hexValue & 0xFF00) >> 8))/255.0 \
blue:((float)(hexValue & 0xFF))/255.0 alpha:1.0]

#define GPBgColor RGBACOLOR(244,244,244,1)
//#####################################################################################

#define GPSET(obj,key) [[NSUserDefaults standardUserDefaults] setObject:obj forKey:key];\
[[NSUserDefaults standardUserDefaults] synchronize];

#define GPGET(key) [[NSUserDefaults standardUserDefaults] objectForKey:key]

#define Remove(key) [[NSUserDefaults standardUserDefaults] removeObjectForKey:key];\
[[NSUserDefaults standardUserDefaults] synchronize];
//#####################################################################################

#define W_S __weak __typeof(self) weakSelf = self;
#define S_S __strong __typeof(self) strongSelf = weakSelf;
#define weakself(self)  __weak __typeof(self) weakSelf = self
//#####################################################################################

#define SCREEN_WIDTH ([[UIScreen mainScreen] bounds].size.width)
#define SCREEN_HEIGHT ([[UIScreen mainScreen] bounds].size.height)
//#####################################################################################

#define IS_IPHONE (UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPhone)
#define SCREEN_MAX_LENGTH (MAX(SCREEN_WIDTH, SCREEN_HEIGHT))

#define IS_IPHONE_5ANDLESS (IS_IPHONE && SCREEN_MAX_LENGTH <= 568.0)
#define IS_IPHONE_4_OR_LESS (IS_IPHONE && SCREEN_MAX_LENGTH < 568.0)
#define IS_IPHONE_5AND5S (IS_IPHONE && SCREEN_MAX_LENGTH == 568.0)
#define IS_IPHONE_6AND6S (IS_IPHONE && SCREEN_MAX_LENGTH == 667.0)
#define IS_IPHONE_6PAND6SP (IS_IPHONE && SCREEN_MAX_LENGTH == 736.0)
//#####################################################################################


#define TableViewXIBRegisterCell(tableView, cellClass, cellID) [tableView registerNib:[UINib nibWithNibName:NSStringFromClass([cellClass class]) bundle:nil] forCellReuseIdentifier:cellID];

#define CollectionViewXIBRegisterCell(collectionView, cellClass, cellID) [collectionView registerNib:[UINib nibWithNibName:NSStringFromClass([cellClass class]) bundle:nil] forCellWithReuseIdentifier:cellID];


#define CollectionViewNOXIBRegisterCell(collectionView, cellClass, cellID) [collectionView registerClass:[cellClass class] forCellWithReuseIdentifier:cellID];

#define TableViewNOXIBRegisterCell(tableView, cellClass, cellID) [tableView registerClass:[cellClass class] forCellReuseIdentifier:cellID];


#define DefineCellID(cellIDName, cellStr) static NSString *const cellIDName = cellStr;
//#####################################################################################


#define COLOR_ITEM          [UIColor whiteColor]
#define COLOR_ITEM_SELECTED [UIColor yellowColor]
#define COLOR_BACKGROUND    [UIColor darkGrayColor]
//#####################################################################################

#define placeImage_comic [UIImage imageNamed:@"pic_loadimg"]

#define HJTFont(a) [UIFont fontWithName:@"Helvetica" size:(a)]
#define WKWidth(a)  (IS_IPHONE ? ((a) / 375.0 * SCREEN_WIDTH) : a)
#define WKHeight(a) (IS_IPHONE ? ((a) / 667.0 * SCREEN_HEIGHT) : a)

//#####################################################################################
//打印运行时间
#define TICK   NSDate *startTime = [NSDate date];

#define TOCK   NSLog(@"Time: %f", -[startTime timeIntervalSinceNow]);

#define GETSIZE(t,s,d) ([t boundingRectWithSize:s options:NSStringDrawingUsesLineFragmentOrigin | NSStringDrawingUsesFontLeading attributes:d context:nil].size)
#define FONTWITHSIZE(s) [UIFont systemFontOfSize:s]


#endif /* MacroDefine_h */

#if DEBUG
#define DLog(FORMAT, ...) fprintf(stderr,"\nfunction:%s line:%d content:%s\n", __FUNCTION__, __LINE__, [[NSString stringWithFormat:FORMAT, ##__VA_ARGS__] UTF8String]);
#else
#define DLog(FORMAT, ...) nil
#endif
