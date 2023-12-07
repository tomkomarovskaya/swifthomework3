//
//  Enums2.swift
//  swifthomework3
//
//  Created by Томик on 7.12.23.
//

import Foundation

enum Clothes {
    case description(type: String, size: String, color: String)
    
    func clothingDescription() -> String {
        switch self {
        case .description(let type, let size, let color):
            return "Type: \(type)\nSize: \(size)\nColor: \(color)"
        }
    }
}

