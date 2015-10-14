//
//  main.swift
//  domain-modeling
//
//  Created by Weschler, Sabrina on 10/13/15.
//  Copyright (c) 2015 Weschler, Sabrina. All rights reserved.
//

import Foundation

// Test for Money 

var moneyUSD = Money(amount: 100, currency: "USD")
var moneyGBP = Money(amount: 100, currency: "GBP")
println(moneyUSD.convert("GBP").amount)
println(moneyUSD.add(moneyGBP).amount)

var sabrina = Person(firstName: "sabrina", lastName: "weschler", age: 22, job: nil, spouse: nil)
sabrina.toString()

println("")
var fam = Family(members: [sabrina])
print(fam.householdIncome())
print(fam.haveChild())

