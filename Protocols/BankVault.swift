//
//  BankVault.swift
//  Protocols
//
//  Created by Papa Roach on 8/8/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//


class BankVault {
    
    let name: String
    let address: String
    var amount: Double = 0.0
    
    init(name: String, address: String) {
        self.name = name
        self.address = address
    }
}

protocol ProvideAccess {
    func allowEntryWithPassword (password: [Int]) -> Bool
}

extension BankVault: ProvideAccess {
    func allowEntryWithPassword(password: [Int]) -> Bool {
        var incorrectPassword = false
        
        for i in password {
            if password.isEmpty {
                return false
            } else if  (password.count) > 10 {
                return false
            } else {
                return true
            }
//                for (index, value) in password.enumerated() {
//                    if index % 2 == 0 && value % 2 == 0 {
//                        return true
//                    }
//                }
        }
    return incorrectPassword
    }
}

