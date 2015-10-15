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
println(moneyUSD.subtract(moneyGBP).amount)




// Test for Job
var jobTest = Job(title: "Dancer", salary: .PerHour(10))
println(jobTest.calculateIncome(100)) //100 * 10 = 10000

var jobTest2 = Job(title: "Waitress", salary: .PerYear(100))
println(jobTest2.calculateIncome(100)) // 100

var jobTest3 = Job(title: "Reporter", salary: .PerHour(10))
println(jobTest3.raise(10)) // 10 * 10 = 100

var jobTest4 = Job(title: "Cook", salary: .PerYear(10))
println(jobTest4.raise(10)) // 10

println(jobTest4.raise(10)) //

// Test for Person

var sabrina = Person(firstName: "sabrina", lastName: "weschler", age: 22, job: jobTest, spouse: nil)
sabrina.toString()

println("")

var sky = Person(firstName: "sky", lastName: "weschler", age: 16, job: nil, spouse: nil)
sabrina.toString()

println("")

//Test for Family 

var weschler = Family(members: [sabrina, sky])
//println(weschler.haveChild()


