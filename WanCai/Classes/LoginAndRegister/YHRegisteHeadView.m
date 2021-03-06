//
//  YHRegisteHeadView.m
//  WanCai
//
//  Created by abing on 16/7/8.
//  Copyright © 2016年 SYYH. All rights reserved.
//

#import "YHRegisteHeadView.h"



@interface YHRegisteHeadView ()

@property(nonatomic, strong) UIButton *cancelButton;

@end

@implementation YHRegisteHeadView

- (UIButton *)cancelButton{
    if(!_cancelButton){
        _cancelButton = [[UIButton alloc] init];
        CGFloat width = 40;
        CGFloat height = 30;
        CGFloat headViewHeight = 64;
        _cancelButton.frame = CGRectMake(15, (headViewHeight - height) / 2.0 + 10, width, height);
        _cancelButton.titleLabel.font = [UIFont systemFontOfSize:17];
        [_cancelButton setTitle:@"取消" forState:UIControlStateNormal];
        [_cancelButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        [_cancelButton setTitleColor:[UIColor grayColor] forState:UIControlStateHighlighted];
        [_cancelButton addTarget:self action:@selector(cancelFunction) forControlEvents:UIControlEventTouchUpInside];
    }
    return _cancelButton;
}

- (void) cancelFunction{
    [self.delgate cancelFunction];
}

- (UILabel *)textLabel{
    if(!_textLabel){
        CGFloat width = 100;
        CGFloat height = 30;
        CGFloat headViewWidth = [UIScreen mainScreen].bounds.size.width;
        CGFloat headViewHeight = 64;
        _textLabel = [[UILabel alloc] init];
        _textLabel.frame = CGRectMake((headViewWidth - width) / 2.0, (headViewHeight - height) / 2.0 + 10, width, height);
        [_textLabel setTextAlignment:NSTextAlignmentCenter];
        [_textLabel setFont:[UIFont systemFontOfSize:19]];
        [_textLabel setTextColor:[UIColor blackColor]];
        _textLabel.text = @"注册";
    }
    return _textLabel;
}

- (instancetype) init{
    if(self = [super init]){
        [self addSubview:self.textLabel];
        [self addSubview:self.cancelButton];
    }
    return self;
}
- (void)drawRect:(CGRect)rect {
    
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGContextSetLineWidth(context, 0.8);
    CGContextMoveToPoint(context, 0, self.frame.size.height - 0.8);
    CGContextAddLineToPoint(context, self.frame.size.width, self.frame.size.height - 0.8);
    [[UIColor colorWithRed:222/255.0 green:222/255.0 blue:222/255.0 alpha:1] setStroke];
    CGContextStrokePath(context);
    
}


@end
