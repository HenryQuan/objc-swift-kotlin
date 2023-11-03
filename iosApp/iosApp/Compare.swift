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
    let objc_result = objcadd(a, b)
    let kt_result = kotlinAdd(a, b)
    return swift_result + objc_result + kt_result
}
