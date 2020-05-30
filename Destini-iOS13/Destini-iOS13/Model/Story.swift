//
//  Sotry.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import Foundation

struct Story {
    let t: String
    let c1: String
    let c2: String
    let d1: Int
    let d2: Int
    
    init(title: String, choice1: String, choice1Destination: Int, choice2: String, choice2Destination: Int) {
        t = title
        c1 = choice1
        c2 = choice2
        d1 = choice1Destination
        d2 = choice2Destination
    }
}
