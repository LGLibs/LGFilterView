//
// LGFilterViewCell.m
// LGFilterView
//
// SPDX-License-Identifier: MIT
// Copyright (c) 2015 Grigorii Lutkov <grigorii@lutkov.dev>
//

#import "LGFilterViewCell.h"

@interface LGFilterViewCell ()

@property (strong, nonatomic) UILabel   *titleLabel;
@property (strong, nonatomic) UIView    *separatorView;

@end

@implementation LGFilterViewCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self)
    {
        self.selectionStyle = UITableViewCellSelectionStyleNone;

        _titleLabel = [UILabel new];
        _titleLabel.backgroundColor = [UIColor clearColor];
        [self addSubview:_titleLabel];

        _separatorView = [UIView new];
        [self addSubview:_separatorView];
    }
    return self;
}

- (void)layoutSubviews
{
    [super layoutSubviews];

    _titleLabel.text = _title;
    _titleLabel.textAlignment = _textAlignment;
    _titleLabel.font = _font;
    _titleLabel.numberOfLines = _numberOfLines;
    _titleLabel.lineBreakMode = _lineBreakMode;
    _titleLabel.adjustsFontSizeToFitWidth = _adjustsFontSizeToFitWidth;
    _titleLabel.minimumScaleFactor = _minimumScaleFactor;

    CGRect titleLabelFrame = CGRectMake(10.f, 0.f, self.frame.size.width-20.f, self.frame.size.height);
    if ([UIScreen mainScreen].scale == 1.f)
        titleLabelFrame = CGRectIntegral(titleLabelFrame);
    _titleLabel.frame = titleLabelFrame;

    if (self.isSeparatorVisible)
    {
        _separatorView.hidden = NO;

        _separatorView.backgroundColor = _separatorColor;

        CGFloat separatorHeight = ([UIScreen mainScreen].scale == 1.f ? 1.f : 0.5);

        _separatorView.frame = CGRectMake(_separatorEdgeInsets.left, self.frame.size.height-separatorHeight, self.frame.size.width-_separatorEdgeInsets.left-_separatorEdgeInsets.right, separatorHeight);
    }
    else _separatorView.hidden = YES;
}

- (void)setHighlighted:(BOOL)highlighted animated:(BOOL)animated
{
    [super setHighlighted:highlighted animated:animated];

    if (!self.isSelected)
    {
        if (highlighted)
        {
            _titleLabel.textColor = _titleColorHighlighted;
            self.backgroundColor = _backgroundColorHighlighted;
        }
        else
        {
            _titleLabel.textColor = _titleColor;
            self.backgroundColor = [UIColor clearColor];
        }
    }
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    if (selected)
    {
        _titleLabel.textColor = _titleColorSelected;
        self.backgroundColor = _backgroundColorSelected;
    }
    else
    {
        if (self.isHighlighted)
        {
            _titleLabel.textColor = _titleColorHighlighted;
            self.backgroundColor = _backgroundColorHighlighted;
        }
        else
        {
            _titleLabel.textColor = _titleColor;
            self.backgroundColor = [UIColor clearColor];
        }
    }
}

@end
