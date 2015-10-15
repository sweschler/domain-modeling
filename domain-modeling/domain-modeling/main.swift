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
var jobTest = Job(title: "Dancer", salary: .Hourly(10))
println(jobTest.calculateIncome(100)) //100 * 10 = 1000

var jobTest2 = Job(title: "Waitress", salary: .Yearly(100))
println(jobTest2.calculateIncome(100)) // 100

var jobTest3 = Job(title: "Reporter", salary: .Hourly(10))
println(jobTest3.raise(10)) // (10 * .1) + 10 = 11

var jobTest4 = Job(title: "Cook", salary: .Yearly(10))
println(jobTest4.raise(10)) // (100000 * .1) + 100000 = 101000


// Test for Person

var sabrina = Person(firstName: "Sabrina", lastName: "Weschler", age: 22, job: jobTest, spouse: nil)
sabrina.toString()

println("")

var sky = Person(firstName: "sky", lastName: "weschler", age: 16, job: nil, spouse: nil)
sky.toString()

println("")

var mom = Person(firstName: "Jenny", lastName: "Nelson", age: 34, job: jobTest4, spouse: nil)
mom.toString()

println("")
var dad = Person(firstName: "Eric", lastName: "Nelson", age: 34, job: jobTest4, spouse: mom)
dad.toString()

println("")

//Test for Family 
var weschler = Family(members: [sabrina, sky, mom, dad])
println(weschler.householdIncome(2000)) //20000 + 20

println(weschler.haveChild().count)



