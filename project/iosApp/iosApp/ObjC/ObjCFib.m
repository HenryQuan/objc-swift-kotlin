//
//  ObjCFib.m
//  iosApp
//
//  Created by Yiheng Quan on 3/11/2023.
//  Copyright © 2023 orgName. All rights reserved.
//

#import "ObjCFib.h"

@implementation ObjCFib

+ (int)fibonacci:(int)n {
    if (n <= 1) {
        return n;
    } else {
        return [self fibonacci:n - 1] + [self fibonacci:n - 2];
    }
}

@end
