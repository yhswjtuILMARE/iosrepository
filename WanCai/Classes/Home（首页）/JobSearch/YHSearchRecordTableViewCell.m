//
//  YHSearchRecordTableViewCell.m
//  WanCai
//
//  Created by CheungKnives on 16/7/14.
//  Copyright © 2016年 SYYH. All rights reserved.
//

#import "YHSearchRecordTableViewCell.h"

@implementation YHSearchRecordTableViewCell
-(id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        CGFloat Width = [UIScreen mainScreen].bounds.size.width;
        self.labeText = [[UILabel alloc]initWithFrame:CGRectMake(15, 15,Width-30, 15)];
        self.labeText.font = [UIFont systemFontOfSize:15];
        [self.contentView addSubview:self.labeText];
    }
    return self;
}
- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
