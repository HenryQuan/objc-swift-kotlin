//
//  CLoop.h
//  iosApp
//
//  Created by Yiheng Quan on 3/11/2023.
//  Copyright © 2023 orgName. All rights reserved.
//

#ifndef CLoop_h
#define CLoop_h

int cloop(int n) {
    int result = 0;
    for (int i = 1; i <= n; i++) {
        result += i;
    }
    return result;
}

#endif /* CLoop_h */
