//
//  main.m
//  block_Test
//
//  Created by Neo on 2017/9/19.
//  Copyright © 2017年 Nuoyuan. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"

//typedef void(^Block)(void);




//void (^globalBlock)() = ^{};

static int a ; //传入a的地址
int b;
int main(int argc, char * argv[]) {
    @autoreleasepool {
//        static int c ;
//        __block int d;
//
//
//
//        void (^stackBlock)() = ^{
//
//            a = 10;
//            b = 30;
//            c = 20;
//            d = 40;
//
//        };
//
//        NSObject *obj = [[NSObject alloc] init];
//        __block NSObject *obj1111111111 = [[NSObject alloc] init];
//
//        void (^stackBlock11111111)() = ^{
//            obj;
//            obj1111111111;
//        };
//
        
        int i = 10;
        void (^block)() = ^{i;};
        
        __unsafe_unretained void (^weakBlock)() = ^{i;};
        
        void (^stackBlock)(int ) = ^(int a){
            NSLog(@"%d",a);
            
        };
        
        NSLog(@"%@", ^{i;});
        
        NSLog(@"%@", block);
        
        NSLog(@"%@", weakBlock);
        
        NSLog(@"%@", stackBlock);
        /*
        Block block1 = ^() {
            //1.无外部变量 __NSGlobalBlock__
            NSLog(@"block1内部没有引用外部变量");
        };
        NSLog(@"block1类型-----%@",block1);
        block1();
        
        NSLog(@"=============================");
        //2
        int temp = 10;
        Block block2 = ^() {
            //2.有外部变量 __NSMallocBlock__（ARC） __NSStackBlock__（MRC）
             NSLog(@"block2内部引用外部基本数据类型：temp = %d",temp);
        };
        NSLog(@"block2类型-----%@",block2);
        block2();
        
        NSLog(@"=============================");

        //3
        NSObject *obj = [[NSObject alloc] init];
        NSLog(@"block3前引用计数：-----%ld", obj.retainCount);

        Block block3 = ^() {
            //2.有外部变量 __NSStackBlock__
            NSLog(@"block3内部引用外部对象：%@",obj);
            NSLog(@"block3内部引用外部对象引用计数：%ld",obj.retainCount);
        };
        NSLog(@"block3类型-----%@",block3);
        block3();
        NSLog(@"block3后引用计数：-----%ld", obj.retainCount);

        NSLog(@"=============================");

        //4
        NSObject *obj4 = [[NSObject alloc] init];
        NSLog(@"block4前引用计数：-----%ld", obj4.retainCount);
        
        Block block4 = [^() {
            //4.有外部变量 __NSMallocBlock__
            NSLog(@"block4内部引用外部对象：%@",obj4);
            NSLog(@"block4内部引用外部对象引用计数：%ld",obj4.retainCount);
        } copy];
        NSLog(@"block4类型-----%@",block4);
        block4();
        NSLog(@"block4后引用计数：-----%ld", obj4.retainCount);
        Block_release(block4);
        NSLog(@"block4释放后后引用计数：-----%ld", obj4.retainCount);

        */
        /*
        //5
        int temp5 = 10;
        __block int blockTemp5 = 10; //复制引用地址实现访问

        Block block5 = ^() {
            //2.有外部变量 __NSMallocBlock__（ARC） __NSStackBlock__（MRC）
            NSLog(@"block5内部引用外部基本数据类型：temp = %d",temp5);
            NSLog(@"block5内部引用外部__Block基本数据类型：temp = %d",blockTemp5);
        };
        NSLog(@"block5类型-----%@",block5);
        
        temp5 += 10;
        blockTemp5 += 10;
        
        block5();
        
        NSLog(@"=============================");
        
        */
        /*
        //6
        NSObject *obj4 = [[NSObject alloc] init];
        
       // NSLog(@"block4前引用计数：-----%ld", obj4.retainCount);
        NSLog(@"block4之前引用外部对象：%@",obj4);

        Block block4 = ^() {
            //4.有外部变量 __NSMallocBlock__
            NSLog(@"block4内部引用外部对象：%@",obj4);
         //   NSLog(@"block4内部引用外部对象引用计数：%ld",obj4.retainCount);
        };
        NSLog(@"block4类型-----%@",block4);
        block4();
        //NSLog(@"block4后引用计数：-----%ld", obj4.retainCount);
        //Block_release(block4);
        //NSLog(@"block4释放后后引用计数：-----%ld", obj4.retainCount);
        
        */
        
        
        //clang -rewrite-objc main.m
        
       // ^{};
//    globalBlock();
        
        
        return 0;//UIApplicationMain(argc, argv, nil, NSStringFromClass([AppDelegate class]));
    }
}



















