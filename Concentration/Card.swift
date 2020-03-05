//
//  Card.swift
//  Concentration
//
//  Created by 汪大强 on 2020/3/2.
//  Copyright © 2020 汪大强. All rights reserved.
//

import Foundation


struct Card: Hashable
{
    
    func hash(into hasher: inout Hasher) {
        return hasher.combine(identifier)
    }

    static func ==(lhs: Card, rhs: Card) -> Bool {
        return lhs.identifier == rhs.identifier
    }
    
    
    var isFaceUp = false
    var isMatched = false
    private var identifier: Int
    
    private static var identifierFactory = 0
    
    private static func getUniqueIdentifier() -> Int {
        identifierFactory += 1
        return identifierFactory
    }
    
    init() {
        self.identifier = Card.getUniqueIdentifier()
    }
    
    
    
   
    
}
