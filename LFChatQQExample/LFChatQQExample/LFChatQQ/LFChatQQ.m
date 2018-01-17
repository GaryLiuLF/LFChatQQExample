//
//  LFChatQQ.m
//  LFChatQQExample
//
//  Created by Gary-刘林飞 on 2018/1/17.
//  Copyright © 2018年 LiuLinFei. All rights reserved.
//

#import "LFChatQQ.h"

@implementation LFChatQQ

+ (BOOL)haveQQ {
    return [[UIApplication sharedApplication]canOpenURL:[NSURL URLWithString:@"mqq://"]];
}

+ (void)chatWithQQ:(NSString *)QQ {
    NSString *urlStr = [NSString stringWithFormat:@"mqq://im/chat?chat_type=wpa&uin=%@&version=1&src_type=web", QQ];
    [[UIApplication sharedApplication]openURL:[NSURL URLWithString:urlStr] options:@{} completionHandler:nil];
}

@end


//    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:url]];
//}

