//
//  imageScrollView.m
//  scrollView
//
//  Created by Gan Chau on 7/25/15.
//  Copyright (c) 2015 the Flatiron School. All rights reserved.
//

#import "imageScrollView.h"

@interface imageScrollView ()


@property (strong, nonatomic) IBOutlet UIView *rootView;

@end

@implementation imageScrollView

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    
    if (self) {
        [self commonInit];
    }
    
    return self;
}

- (id)initWithCoder:(NSCoder *)aDecoder
{
    self = [super initWithCoder:aDecoder];
    
    if (self) {
        [self commonInit];
    }
    
    return self;
}

- (void)commonInit
{
    [[NSBundle mainBundle] loadNibNamed:@"imageScrollView"
                                  owner:self
                                options:nil];
    
    [self addSubview:_rootView];
    
    NSDictionary *viewsDictionary = @{ @"rootView" : _rootView };
    
    self.translatesAutoresizingMaskIntoConstraints = NO;
    _rootView.translatesAutoresizingMaskIntoConstraints = NO;
    
    NSArray *hConstraints = [NSLayoutConstraint constraintsWithVisualFormat:@"H:|[rootView]|"
                                                                    options:0
                                                                    metrics:nil
                                                                      views:viewsDictionary];
    NSArray *vConstraints = [NSLayoutConstraint constraintsWithVisualFormat:@"V:|[rootView]|"
                                                                    options:0
                                                                    metrics:nil
                                                                      views:viewsDictionary];
    [self addConstraints:hConstraints];
    [self addConstraints:vConstraints];
}

@end
