//
//  main.swift
//  domain-modeling
//
//  Created by Weschler, Sabrina on 10/13/15.
//  Copyright (c) 2015 Weschler, Sabrina. All rights reserved.
//

import Foundation

// Test for Money
println("Test for Money Struct")
var money1 = Money(amount: 50, currency: "USD")
var money2 = Money(amount: 50, currency: "EUR")
println(money1.convert("EUR").amount) // 50 * 1.5 (convert from USD to EUR) = 75.00
println(money1.add(money2).amount) // converts USD to EUR (50 USD * 1.5 = 75 EUR), then 75 EUR + 50 EUR = 125 EUR
println(money1.subtract(money2).amount) // converts USD to EUR (50 USD * 1.5 = 75 EUR), then 75 EUR - 50 EUR = 25 EUR




// Test for Job
println("Test for Job class")
var jobTest = Job(title: "Dancer", salary: .Hourly(10))
println(jobTest.calculateIncome(100)) //100 * 10 = 1000

var jobTest2 = Job(title: "Waitress", salary: .Yearly(100))
println(jobTest2.calculateIncome(100)) // 100

var jobTest3 = Job(title: "Reporter", salary: .Hourly(10))
println(jobTest3.raise(10)) // (10 * .1) + 10 = 11

var jobTest4 = Job(title: "Cook", salary: .Yearly(10))
println(jobTest4.raise(10)) // (10 * .1) + 10 = 11




// Test for Person
println("Test for Person class")
var sabrina = Person(firstName: "Sabrina", lastName: "Weschler", age: 22, job: jobTest, spouse: nil)
sabrina.toString()

println("")

var sky = Person(firstName: "Sky", lastName: "Weschler", age: 16, job: nil, spouse: nil)
sky.toString()

println("")

var mom = Person(firstName: "Jenny", lastName: "Nelson", age: 34, job: jobTest4, spouse: nil)
mom.toString()

println("")
var dad = Person(firstName: "Eric", lastName: "Nelson", age: 34, job: jobTest4, spouse: mom)
dad.toString()

println("")

//Test for Family 
println("Test for Family class")
var weschler = Family(members: [sabrina, sky, mom, dad])
println(weschler.householdIncome(2000)) //20000 + 20

// Before accesing the haveChild function, there were 4 members, then the baby was added and now prints 5 members
println(weschler.haveChild().count) //5

//Test for Protocols
println(money1.description) //prints USD50.0 based on the protocol
println(money1.convert("EUR").description) //prints the converted amount and currency in the protocol format EUR75.0

println(jobTest.description)

println(sabrina.description)

println(weschler.description)


//Test for extension
println("Test for Extension")
println(100.USD.convert("GBP"))
println(100.USD)
