package io.github.henryquan.objcswiftkt

interface Platform {
    val name: String
}

expect fun getPlatform(): Platform