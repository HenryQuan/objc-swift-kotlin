//
//  Compare.swift
//  iosApp
//
//  Created by Yiheng Quan on 3/11/2023.
//  Copyright © 2023 orgName. All rights reserved.
//

import Foundation
import shared

func swiftadd(a: Int, b: Int) -> Int {
    return a + b * 2
}

func fibonacci(n: Int) -> Int {
    if n <= 1 {
        return n
    } else {
        return fibonacci(n: n - 1) + fibonacci(n: n - 2)
    }
}

func loop(n: Int) -> Int {
    var result = 0
    
    for i in 1...n {
        result += i
    }
    
//    for i in stride(from: 0, to: n, by: 1) {
//        result += i
//    }
//    
//    var i = 0
//    while (i < n) {
//        result += i
//        i += 1
//    }
    
    return result
}

func compareAll(a: Int, b: Int) -> Int {
    print("Math")
    var time = Date()
    let swift_result = swiftadd(a: a, b: b)
    print("Swift: \(time.distance(to: Date()))")
    
    time = Date()
    let c_result = Int(cadd(Int32(a), Int32(b)))
    print("Kotlin: \(time.distance(to: Date()))")
    
    time = Date()
    let objc_result = Int(ObjcAdd.add(Int32(a), andB: Int32(b)))
    print("ObjC: \(time.distance(to: Date()))")
    
    time = Date()
    let kt_result = Int(Platform_iosKt.kotlinAdd(a: Int32(a), b: Int32(b)))
    print("C: \(time.distance(to: Date()))")
    return swift_result + objc_result + kt_result + c_result
}

func fibAll(num: Int) -> String {
    var result = "FibAll\n"
    var time = Date()
    let swift_fib = fibonacci(n: num)
    result += ("Swift: \(time.distance(to: Date()))\n")
    
    time = Date()
    let kotlin_fib = Int(Platform_iosKt.fibonacci(n: Int32(num)))
    result += ("Kotlin: \(time.distance(to: Date()))\n")
    
    time = Date()
    let objc_fib = Int(ObjCFib.fibonacci(Int32(num)))
    result += ("ObjC: \(time.distance(to: Date()))\n")
    
    time = Date()
    let c_fib = Int(cfibonacci(Int32(num)))
    result += ("C: \(time.distance(to: Date()))\n")
    return "\(result) \(swift_fib + kotlin_fib + objc_fib + c_fib)"
}

func loopAll(num: Int) -> String {
    var result = "Loop All\n"
    var time = Date()
    let swift_result = loop(n: num)
    result += ("Swift: \(time.distance(to: Date()))\n")
    
    time = Date()
    let kotlin_result = Int(Platform_iosKt.loop(n: Int32(num)))
    result += ("Kotlin: \(time.distance(to: Date()))\n")
    
    time = Date()
    let objc_result = Int(ObjCLoop.loop(Int32(num)))
    result += ("ObjC: \(time.distance(to: Date()))\n")
    
    time = Date()
    let c_result = Int(cloop(Int32(num)))
    result += ("C: \(time.distance(to: Date()))\n")
    return "\(result) \(swift_result + kotlin_result + objc_result + c_result)"
}
