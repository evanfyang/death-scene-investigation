//
//  Storage.swift
//  iosDSI
//
//  Created by Andrew Majda on 10/12/20.
//

import Foundation

struct Storage {
    struct Create {
        static var CaseNumber = ""
        static var County = ""
    
        static func Clear() {
            CaseNumber = ""
            County = ""
        }
    }
}
