package io.github.henryquan.objcswiftkt

import platform.UIKit.UIDevice

class IOSPlatform: Platform {
    override val name: String = UIDevice.currentDevice.systemName() + " " + UIDevice.currentDevice.systemVersion
}

actual fun getPlatform(): Platform = IOSPlatform()

fun kotlinAdd(a: Int, b: Int): Int {
    return a + b * 2
}
