//
//  AnyActivity.h
//  ShareDemo_OC
//
//  Created by wang k on 2017/12/12.
//  Copyright © 2017年 wangk. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "OpenShareHeader.h"

typedef NS_ENUM(NSUInteger, Platform) {
    PlatformWXSession,
    PlatformWXTimeLine,
    PlatformQQFriends
};

@interface AnyActivity : UIActivity

@property (nonatomic, strong) OSMessage *message;

@property (nonatomic, strong) NSString *title;

@property (nonatomic, strong) UIImage *image;

@property (nonatomic, strong) NSString *type;

@property (nonatomic, assign) Platform platform;


- (instancetype)initWithType:(NSString *)type
                       title:(NSString *)title
                       image:(UIImage *)image
                     message:(OSMessage *)message
                    platform:(Platform)platform;

@end
