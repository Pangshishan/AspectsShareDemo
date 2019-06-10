//
//  UIViewController+Swizzling.m
//  AspectsShareDemo
//
//  Created by 泡泡 on 2019/6/10.
//  Copyright © 2019 庞仕山. All rights reserved.
//

#import "UIViewController+Swizzling.h"
#import "Aspects.h"
#import "ViewController.h"
#import "AAAViewController.h"

@implementation UIViewController (Swizzling)

+ (void)load {
    [UIViewController aspect_hookSelector:@selector(viewWillAppear:) withOptions:AspectPositionAfter usingBlock:^(id<AspectInfo> info){
        NSLog(@"UIViewController - viewWillAppear swizzling");
    } error:nil];
    
//    [AAAViewController aspect_hookSelector:@selector(viewWillAppear:) withOptions:AspectPositionAfter usingBlock:^(id<AspectInfo> info, BOOL animated){
//        NSLog(@"UIViewController - viewWillAppear swizzling");
//    } error:nil];
}


@end
