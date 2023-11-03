package io.github.henryquan.objcswiftkt

import platform.UIKit.UIDevice

class IOSPlatform: Platform {
    override val name: String = UIDevice.currentDevice.systemName() + " " + UIDevice.currentDevice.systemVersion
}

actual fun getPlatform(): Platform = IOSPlatform()

fun kotlinAdd(a: Int, b: Int): Int {
    return a + b * 2
}

fun fibonacci(n: Int): Int {
    return if (n <= 1) {
        n
    } else {
        fibonacci(n - 1) + fibonacci(n - 2)
    }
}

fun loop(n: Int): Int {
    var result = 0
    for (i in 1..n) {
        result += i
    }
    return result
}
