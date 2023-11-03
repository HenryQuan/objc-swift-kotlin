//
//  CFib.h
//  iosApp
//
//  Created by Yiheng Quan on 3/11/2023.
//  Copyright © 2023 orgName. All rights reserved.
//

#ifndef CFib_h
#define CFib_h

int cfibonacci(int n) {
    if (n <= 1) {
        return n;
    } else {
        return cfibonacci(n-1) + cfibonacci(n-2);
    }
}

#endif /* CFib_h */
