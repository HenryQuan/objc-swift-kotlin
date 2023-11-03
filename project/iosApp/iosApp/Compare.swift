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

func compareAll(a: Int, b: Int) -> Int {
    let swift_result = swiftadd(a: a, b: b)
    let c_result = Int(cadd(Int32(a), Int32(b)))
    let objc_result = Int(ObjcAdd.add(Int32(a), andB: Int32(b)))
    let kt_result = Int(Platform_iosKt.kotlinAdd(a: Int32(a), b: Int32(b)))
    return swift_result + objc_result + kt_result + c_result
}
