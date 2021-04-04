//
//  MyTestClass.m
//  Objetive-C_Training
//
//  Created by ToruYoshifuji on 2021/04/04.
//

#import "MyTestClass.h"

@implementation MyTestClass

-(void)setMessage:(NSString *)str {
    message = str;
}

-(NSString*)getMessage {
    return message;
}

-(void)printMessage {
    // %@ は 後に指定した NSString のインスタンスを埋め込むための書き方
    NSLog(@"%@", message);
}

@end
