//
//  ViewController.m
//  LFChatQQExample
//
//  Created by Gary-刘林飞 on 2018/1/17.
//  Copyright © 2018年 LiuLinFei. All rights reserved.
//

#import "ViewController.h"
#import "LFChatQQ.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UITextField *numberTf;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title = @"调用QQ客户端发起临时会话";
}

#pragma mark - 发起临时会话
- (IBAction)chatQQAction:(id)sender {
    // 1. 请在info.plist文件中 将 QQ(mqq字段)添加到白名单
    // 这是方法：在info.plist添加LSApplicationQueriesSchemes 类型为Array
    // 2. 是否有安装QQ客户端
    if ([LFChatQQ haveQQ]) {
        // 3. 发起QQ临时会话
        [LFChatQQ chatWithQQ:self.numberTf.text];
    }
    else {
        UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"温馨提示" message:@"您的设备尚未安装QQ客户端，不能进行QQ临时会话" preferredStyle:UIAlertControllerStyleAlert];
        UIAlertAction *sureAction = [UIAlertAction actionWithTitle:@"确定" style:UIAlertActionStyleDefault handler:nil];
        [alert addAction:sureAction];
        [self presentViewController:alert animated:YES completion:nil];
    }
}


@end
