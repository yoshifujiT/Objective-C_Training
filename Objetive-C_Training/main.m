//
//  main.m
//  Objetive-C_Training
//
//  Created by ToruYoshifuji on 2021/04/04.
//

#import <Foundation/Foundation.h>
#import "MyTestClass.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // allocable メモリを確保し割り当てる
        MyTestClass* obj1 = [MyTestClass alloc];
        // init インスタンスの初期化
        obj1 = [obj1 init];
        [obj1 setMessage:@"This is First Object!!"];
        [obj1 printMessage];

        // alloc & init をまとめて書く
        MyTestClass* obj2 = [[MyTestClass alloc] init];
        [obj2 setMessage:@"This is Second Object!!"];
        [obj2 printMessage];

        // alloc & init と同義
        MyTestClass* obj3 = [MyTestClass new];
        [obj3 setMessage:@"This is Third Object!!"];
        [obj3 printMessage];
    }
    return 0;
}
