# ObjC Swift Kotlin
Compare basic operations in these three languages on iOS using a Debug & Release build. Tested using an iPhone 15 Pro 17.0.1 Simulator on a M2 Pro Mac mini.

Overall, Kotlin is great for iOS development using the Multiplatform technology. It seems to have great optimisation in Release mode which indicates that it can be as fast as Swift or even faster in some scenarios. 

Kotlin is generating similar code compared to ObjC and C. However, it doesn't rely on `objc_msgSend` calls. It seems to only wrap the function once to get called with `objc_msgSend`. However, it is not used internally in the function. This results in faster recursive function calls than ObjC.

## Add
This project implements a very basic function using these languages:
```c
int add(int a, int b) {
    return a + b * 2;
}
```

See the following for their instructions in a Debug build:
|Mode|Swift|ObjC|Kotlin|C|
|---|---|---|---|---|
|Instructions in Debug|![Swift](https://raw.githubusercontent.com/HenryQuan/objc-swift-kotlin/main/img/math/swift.png)|![ObjC](https://raw.githubusercontent.com/HenryQuan/objc-swift-kotlin/main/img/math/objc.png)|![Kotlin](https://raw.githubusercontent.com/HenryQuan/objc-swift-kotlin/main/img/math/kotlin.png)|![C](https://raw.githubusercontent.com/HenryQuan/objc-swift-kotlin/main/img/math/c.png)|
|Debug|9.54|20.27|119.21|29.81|
|Release|0|2.02|0|2.98|

Smaller number means faster execution time.

## Fibanacci 42
A quick performance test is done by computing the Fibanacci sequence 42. 
```c
int fibonacci(int n) {
    if (n <= 1) {
        return n;
    } else {
        return fibonacci(n - 1) + fibonacci(n - 2);
    }
}
```

See the following for their instructions in a Debug build and the time taken (Debug & Release):
|Mode|Swift|ObjC|Kotlin|C|
|---|---|---|---|---|
|Instructions in Debug|![Swift](https://raw.githubusercontent.com/HenryQuan/objc-swift-kotlin/main/img/fib/swift.png)|![ObjC](https://raw.githubusercontent.com/HenryQuan/objc-swift-kotlin/main/img/fib/objc.png)|![Kotlin](https://raw.githubusercontent.com/HenryQuan/objc-swift-kotlin/main/img/fib/kotlin.png)|![C](https://raw.githubusercontent.com/HenryQuan/objc-swift-kotlin/main/img/fib/c.png)|
|Debug|1.71 s|1.81 s|3.34 s|1.31 s|
|Release|0.97 s|1.44 s|0.88 s|0.73 s|

Overall, C has the best performance, following by Swift, ObjC and Kotlin. C has fewer branching and overheads compared to Swift. The slowdown in ObjC could be caused by `objc_msgSend` calls. Kotlin, on the other hand, tends to use too many branches, which isn't great with recursion.

However, Kotlin is much faster in Release mode compared to both Swift & ObjC. It is only slightly behind C in this case. It seems that ObjC is having worse optimisation than Swift & Kotlin.

## Loop 888888
Sum up loop count into a variable:
```c
int loop(int n) {
    int result = 0;
    for (int i = 1; i <= n; i++) {
        result += i;
    }
    return result;
}
```

|Mode|Swift|ObjC|Kotlin|C|
|---|---|---|---|---|
|Instructions in Debug|Too long|![ObjC](https://raw.githubusercontent.com/HenryQuan/objc-swift-kotlin/main/img/loop/objc.png)|![Kotlin](https://raw.githubusercontent.com/HenryQuan/objc-swift-kotlin/main/img/loop/kotlin.png)|![C](https://raw.githubusercontent.com/HenryQuan/objc-swift-kotlin/main/img/loop/c.png)|
|Debug (e-04s)|1302.45|7.72|17.31|7.65|
|Release (e-04s)|2.54|0.050|2.60|0|

ObjC and C have the same speed, followed by Swift & Kotlin. In Debug, Swift is slowed by range checks, `stride` provides a faster loop, but it is still much slower compared to a raw `while`. Koltin converts to a while loop from `for (i in 1..n)` even in debug. C optimises further in Release to achieve constant time compared to ObjC.

***
Please note that these are general observations, and actual performance may vary in different scenarios.
