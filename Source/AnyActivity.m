//
//  AnyActivity.m
//  ShareDemo_OC
//
//  Created by wang k on 2017/12/12.
//  Copyright © 2017年 wangk. All rights reserved.
//

#import "AnyActivity.h"

@implementation AnyActivity

- (instancetype)initWithType:(NSString *)type
                       title:(NSString *)title
                       image:(UIImage *)image
                     message:(OSMessage *)message
                    platform:(Platform)platform {
    self = [super init];
    if (self) {
        self.type = type;
        self.title = title;
        self.image = image;
        self.message = message;
        self.platform = platform;
    }
    return self;
}

- (NSString *)activityTitle {
    return _title;
}

- (UIImage *)activityImage {
    return _image;
}

- (UIActivityType)activityType {
    return _type;
}

+ (UIActivityCategory)activityCategory {
    return UIActivityCategoryShare;
}

- (BOOL)canPerformWithActivityItems:(NSArray *)activityItems {
    return YES;
}

- (void)performActivity {
    switch (_platform) {
        case PlatformWXSession:
            [OpenShare shareToWeixinSession:_message Success:^(OSMessage *message) {
                
            } Fail:^(OSMessage *message, NSError *error) {
                
            }];
            break;
        case PlatformWXTimeLine:
            [OpenShare shareToWeixinTimeline:_message Success:^(OSMessage *message) {
                
            } Fail:^(OSMessage *message, NSError *error) {
                
            }];
            break;
        case PlatformQQFriends:
            [OpenShare shareToQQFriends:_message Success:^(OSMessage *message) {
                
            } Fail:^(OSMessage *message, NSError *error) {
                
            }];
            break;
        default:
            break;
    }
    [self activityDidFinish:YES];
}

@end
