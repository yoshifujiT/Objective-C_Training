//
//  MyTestClass.m
//  Objetive-C_Training
//
//  Created by ToruYoshifuji on 2021/04/04.
//

#import "MyTestClass.h"

@implementation MyTestClass

// property で指定したインスタンス変数にアクセスするためのメソッドが自動生成される
@synthesize myMsg;

+ (MyTestClass*)myTestClassWithMessage:(NSString *)str {
    MyTestClass* obj = [self new];
    [obj setMessage:str];
    return obj;
}

- (void)setMessage:(NSString *)str {
    message = str;
}

- (NSString*)getMessage {
    return message;
}

- (void)printMessage {
    // %@ は 後に指定した NSString のインスタンスを埋め込むための書き方
    NSLog(@"%@", message);
}

@end

@implementation SubMyTestClass

+ (SubMyTestClass*)subMyTestClassWithMessage:(NSString *)str1 andMessage2:(NSString *)str2 {
    id obj = [super myTestClassWithMessage:str1];
    [obj setMessage2:str2];
    return obj;
}

- (NSString *)getMessage2 {
    return message2;
}

- (void)setMessage2:(NSString *)str {
    message2 = str;
}

- (void)printMessage {
    NSLog(@"%@. %@", message, message2);
}

@end
