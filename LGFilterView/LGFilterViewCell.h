//
// LGFilterViewCell.h
// LGFilterView
//
// SPDX-License-Identifier: MIT
// Copyright (c) 2015 Grigorii Lutkov <grigorii@lutkov.dev>
//

#import <UIKit/UIKit.h>

@interface LGFilterViewCell : UITableViewCell

@property (strong, nonatomic) NSString  *title;

@property (strong, nonatomic) UIColor *titleColor;
@property (strong, nonatomic) UIColor *titleColorHighlighted;
@property (strong, nonatomic) UIColor *titleColorSelected;

@property (strong, nonatomic) UIColor *backgroundColorHighlighted;
@property (strong, nonatomic) UIColor *backgroundColorSelected;

@property (assign, nonatomic, getter=isSeparatorVisible) BOOL separatorVisible;
@property (strong, nonatomic) UIColor       *separatorColor;
@property (assign, nonatomic) UIEdgeInsets  separatorEdgeInsets;

@property (strong, nonatomic) UIFont          *font;
@property (assign, nonatomic) NSUInteger      numberOfLines;
@property (assign, nonatomic) NSLineBreakMode lineBreakMode;
@property (assign, nonatomic) NSTextAlignment textAlignment;
@property (assign, nonatomic) BOOL            adjustsFontSizeToFitWidth;
@property (assign, nonatomic) CGFloat         minimumScaleFactor;

@end
