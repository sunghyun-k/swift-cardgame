//
//  TextView.swift
//  CardGame
//
//  Created by 김성현 on 10/06/2019.
//  Copyright © 2019 JK. All rights reserved.
//

import Foundation

class TextView {
    
    func show(_ text: String, terminator: String = "\n") {
        print(text, terminator: terminator)
    }
    
    func nextLine() {
        print()
    }
}
