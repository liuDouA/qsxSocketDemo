//
//  qsx_chatModelView.h
//  qsxSocketDemo_Example
//
//  Created by liudou on 2019/6/10.
//  Copyright © 2019 liudouA. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CSMessageCell.h"
#import "CSMessageModel.h"
#import "CSBigView.h"
#import "EmojiView.h"
#import "CSRecord.h"


#define ScreenWidth  [UIScreen mainScreen].bounds.size.width
#define ScreenHight [UIScreen mainScreen].bounds.size.height

NS_ASSUME_NONNULL_BEGIN

@interface qsx_chatModelView : UIView<UITextViewDelegate,UIImagePickerControllerDelegate,CSMessageCellDelegate, EmojiViewDelegate,UITableViewDelegate,UITableViewDataSource>

@property (strong, nonatomic)  UITableView *tableView;
@property (nonatomic, strong) NSMutableArray *dataArray;
@property (nonatomic, assign) CGFloat nowHeight;
@property (nonatomic, strong) UIImageView *photoImageView;
@property (nonatomic, strong) CSBigView *bigImageView;
@property (nonatomic, strong) EmojiView *ev;
@property (nonatomic, strong) UIImage *photoImage;
@property (nonatomic, strong) NSIndexPath *selectIndex;
@property (strong, nonatomic)  NSLayoutConstraint *tableBottomConstraint;




@end

NS_ASSUME_NONNULL_END
