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


func compareAll(a: Int, b: Int) -> Int {
    let swift_result = swiftadd(a: a, b: b)
    let c_result = Int(cadd(Int32(a), Int32(b)))
    let objc_result = Int(ObjcAdd.add(Int32(a), andB: Int32(b)))
    let kt_result = Int(Platform_iosKt.kotlinAdd(a: Int32(a), b: Int32(b)))
    return swift_result + objc_result + kt_result + c_result
}

func fibAll(num: Int) -> Int {
    var time = Date()
    let swift_fib = fibonacci(n: num)
    print("Swift: \(time.distance(to: Date()))")
    
    time = Date()
    let kotlin_fib = Int(Platform_iosKt.fibonacci(n: Int32(num)))
    print("Kotlin: \(time.distance(to: Date()))")
    
    time = Date()
    let objc_fib = Int(ObjCFib.fibonacci(Int32(num)))
    print("ObjC: \(time.distance(to: Date()))")
    
    time = Date()
    let c_fib = Int(cfibonacci(Int32(num)))
    print("C: \(time.distance(to: Date()))")
    return swift_fib + kotlin_fib + objc_fib + c_fib
}
