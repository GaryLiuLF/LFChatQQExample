//
//  LFChatQQ.h
//  LFChatQQExample
//
//  Created by Gary-刘林飞 on 2018/1/17.
//  Copyright © 2018年 LiuLinFei. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface LFChatQQ : NSObject

/**
 是否有安装QQ客户端（请在info.plist文件中，将QQ（mqq字段）添加到白名单）

 @return BOOL
 */
+ (BOOL)haveQQ;

/**
 发起QQ临时会话
 
 @param QQ 已开通QQ推广的QQ号码
 * （开通QQ推广方法：1.打开QQ推广网址http://shang.qq.com并用QQ登录，2.点击顶部导航栏：推广工具；3.在弹出菜单中点击‘立即免费开通’）
 */
+ (void)chatWithQQ:(NSString *)QQ;

@end


