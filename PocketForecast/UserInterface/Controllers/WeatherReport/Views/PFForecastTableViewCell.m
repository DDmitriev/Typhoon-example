////////////////////////////////////////////////////////////////////////////////
//
//  TYPHOON FRAMEWORK
//  Copyright 2015, Typhoon Framework Contributors
//  All Rights Reserved.
//
//  NOTICE: The authors permit you to use, modify, and distribute this file
//  in accordance with the terms of the license agreement accompanying it.
//
////////////////////////////////////////////////////////////////////////////////

#import "PFForecastTableViewCell.h"
#import "UIFont+ApplicationFonts.h"
#import "NanoFrame.h"


@implementation PFForecastTableViewCell

//-------------------------------------------------------------------------------------------
#pragma mark - Initialization & Destruction
//-------------------------------------------------------------------------------------------

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString*)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self)
    {
        [self initBackgroundView];
        [self initSeparatorView];
        [self initConditionsIcon];
        [self initDayLabel];
        [self initDescriptionLabel];
        [self initHighTempLabel];
        [self initLowTempLabel];
    }
    return self;
}


//-------------------------------------------------------------------------------------------
#pragma mark - Private Methods
//-------------------------------------------------------------------------------------------

- (void)initBackgroundView
{
    UIView* backgroundView = [[UIView alloc] initWithFrame:self.bounds];
    [backgroundView setBackgroundColor:[UIColor colorWithHexRGB:0x343546 alpha:0.77]];
    [self setBackgroundView:backgroundView];
}

- (void)initSeparatorView
{
    CGFloat height = 0.5;
    CGFloat xOffset = 70;
    _separatorView = [[UIView alloc] initWithFrame:CGRectMake(xOffset, CGRectGetMinY(self.bounds) + height, CGRectGetWidth(self.bounds) - xOffset, height)];
    [_separatorView setBackgroundColor:[UIColor colorWithHexRGB:0xb3b3b3]];
    [self addSubview:_separatorView];
}

- (void)initConditionsIcon
{
    _conditionsIcon = [[UIImageView alloc] initWithFrame:CGRectMake(6, 7, 60 - 12, 50 - 12)];
    [_conditionsIcon setClipsToBounds:YES];
    [_conditionsIcon setContentMode:UIViewContentModeScaleAspectFit];
    [_conditionsIcon setImage:[UIImage imageNamed:@"icon_cloudy"]];
    [self addSubview:_conditionsIcon];
}

- (void)initDayLabel
{
    _dayLabel = [[UILabel alloc] initWithFrame:CGRectMake(70, 10, 150, 18)];
    [_dayLabel setFont:[UIFont applicationFontOfSize:16]];
    [_dayLabel setTextColor:[UIColor colorWithHexRGB:0xffffff]];
    [_dayLabel setBackgroundColor:[UIColor clearColor]];
    [self addSubview:_dayLabel];
}

- (void)initDescriptionLabel
{
    _descriptionLabel = [[UILabel alloc] initWithFrame:CGRectMake(70, 28, 150, 16)];
    [_descriptionLabel setFont:[UIFont applicationFontOfSize:13]];
    [_descriptionLabel setTextColor:[UIColor colorWithHexRGB:0xb3b3b3]];
    [_descriptionLabel setBackgroundColor:[UIColor clearColor]];
    [self addSubview:_descriptionLabel];
}

- (void)initHighTempLabel
{
    _highTempLabel = [[UILabel alloc] initWithFrame:CGRectMake(210, 10, 55, 30)];
    [_highTempLabel setFont:[UIFont temperatureFontOfSize:27]];
    [_highTempLabel setTextColor:[UIColor colorWithHexRGB:0xffffff]];
    [_highTempLabel setBackgroundColor:[UIColor clearColor]];
    [_highTempLabel setTextAlignment:NSTextAlignmentRight];
    [self addSubview:_highTempLabel];
}

- (void)initLowTempLabel
{
    _lowTempLabel = [[UILabel alloc] initWithFrame:CGRectMake(270, 11.5, 40, 30)];
    [_lowTempLabel setFont:[UIFont temperatureFontOfSize:20]];
    [_lowTempLabel setTextColor:[UIColor colorWithHexRGB:0xb3b3b3]];
    [_lowTempLabel setBackgroundColor:[UIColor clearColor]];
    [_lowTempLabel setTextAlignment:NSTextAlignmentRight];
    [self addSubview:_lowTempLabel];
}



@end
