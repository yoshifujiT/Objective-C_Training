//
//  MyTestClass.h
//  Objetive-C_Training
//
//  Created by ToruYoshifuji on 2021/04/04.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface MyTestClass : NSObject {
    // インスタンス変数
    NSString* message;
}

// インスタンスメソッド
// (<<returnType>>)<<methodName>>: (<<argType>>) argName;
-(void)setMessage: (NSString*) str;
-(NSString*)getMessage;
-(void)printMessage;

@end

NS_ASSUME_NONNULL_END
