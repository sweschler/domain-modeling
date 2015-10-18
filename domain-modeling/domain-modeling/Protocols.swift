//
//  Protocols.swift
//  domain-modeling
//
//  Created by Weschler, Sabrina on 10/18/15.
//  Copyright (c) 2015 Weschler, Sabrina. All rights reserved.
//

import Foundation

extension Double {
    var USD: Money { return Money(amount: self, currency: "USD") }
    var EUR: Money { return Money(amount: self, currency: "EUR") }
    var GBP: Money { return Money(amount: self, currency: "GBP") }
    var YEN: Money { return Money(amount: self, currency: "YEN") }
}
