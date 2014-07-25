//
//  CoinChanger.swift
//  CoinChangerKata
//
//  Created by Alex Hill on 7/25/14.
//  Copyright (c) 2014 Alex Hill. All rights reserved.
//

import Foundation

enum Coin : Int {
    case Quarters = 1, Dimes, Nickels, Pennies
    
    func name() -> String {
        switch self {
        case .Pennies:
            return "pennies"
        case .Nickels:
            return "nickels"
        case .Dimes:
            return "dimes"
        case .Quarters:
            return "quarters"
        }
    }
    
    func value() -> Int {
        switch self {
        case .Pennies:
            return 1
        case .Nickels:
            return 5
        case .Dimes:
            return 10
        case .Quarters:
            return 25
        }
    }
}

public class CoinChanger {
    
    public init() {}
    
    public func makeChange(amount: Int) -> Dictionary<String, Int> {
        var amount = amount
        var change : Dictionary<String, Int> = ["quarters" : 0,
                                                "dimes" : 0,
                                                "nickels" : 0,
                                                "pennies" : 0]
        var coinId = 1
        while let coin = Coin.fromRaw(coinId) {
            while amount >= coin.value() {
                change[coin.name()] = change[coin.name()]! + 1
                amount -= coin.value()
            }
            coinId += 1
        }
        return change
    }
    
}