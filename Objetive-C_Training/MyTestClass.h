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
    // コンパイラディレクティブを省略した場合、デフォルトは @protected
    NSString* message;
    NSString* myMsg;

    @private
    NSString* privateMessage;

    @public
    NSString* publicMessage;
}

// setter, getter を自動生成する方法
@property (retain)NSString* myMsg;

// クラスメソッド
// コンビニエンスコンストラクタ
+ (MyTestClass*)myTestClassWithMessage: (NSString*) str;

// インスタンスメソッド
// (<<returnType>>)<<methodName>>: (<<argType>>) argName;
- (void)setMessage: (NSString*) str;
- (NSString*)getMessage;
- (void)printMessage;

@end

@interface SubMyTestClass : MyTestClass {
    NSString* message2;
}

+ (SubMyTestClass*)subMyTestClassWithMessage: (NSString*) str1 andMessage2: (NSString*) str2;

- (NSString*)getMessage2;
- (void)setMessage2: (NSString*) str;

@end

NS_ASSUME_NONNULL_END
