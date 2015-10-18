//
//  main.swift
//  domain-modeling
//
//  Created by Weschler, Sabrina on 10/13/15.
//  Copyright (c) 2015 Weschler, Sabrina. All rights reserved.
//

import Foundation

// Test for Money
print("Test for Money Struct")
var money1 = Money(amount: 50, currency: "USD")
var money2 = Money(amount: 50, currency: "EUR")
print(money1.convert("EUR").amount) // 50 * 1.5 (convert from USD to EUR) = 75.00
print(money1.add(money2).amount) // converts USD to EUR (50 USD * 1.5 = 75 EUR), then 75 EUR + 50 EUR = 125 EUR
print(money1.subtract(money2).amount) // converts USD to EUR (50 USD * 1.5 = 75 EUR), then 75 EUR - 50 EUR = 25 EUR


// Test for Job
print("Test for Job class")
var jobTest = Job(title: "Dancer", salary: .Hourly(10))
print(jobTest.calculateIncome(100)) //100 * 10 = 1000

var jobTest2 = Job(title: "Waitress", salary: .Yearly(100))
print(jobTest2.calculateIncome(100)) // 100

var jobTest3 = Job(title: "Reporter", salary: .Hourly(10))
print(jobTest3.raise(10)) // (10 * .1) + 10 = 11

var jobTest4 = Job(title: "Cook", salary: .Yearly(10))
print(jobTest4.raise(10)) // (10 * .1) + 10 = 11


// Test for Person
print("Test for Person class")
var sabrina = Person(firstName: "Sabrina", lastName: "Weschler", age: 22, job: jobTest, spouse: nil)
sabrina.toString()

print("")

var sky = Person(firstName: "Sky", lastName: "Weschler", age: 16, job: nil, spouse: nil)
sky.toString()

print("")

var mom = Person(firstName: "Jenny", lastName: "Nelson", age: 34, job: jobTest4, spouse: nil)
mom.toString()

print("")
var dad = Person(firstName: "Eric", lastName: "Nelson", age: 34, job: jobTest4, spouse: mom)
dad.toString()

print("")

//Test for Family 
print("Test for Family class")
var weschler = Family(members: [sabrina, sky, mom, dad])
print(weschler.householdIncome(2000)) //20000 + 20

// Before accesing the haveChild function, there were 4 members, then the baby was added and now prints 5 members
print(weschler.haveChild().count) //5 family members

//Test for Protocols
print(money1.description) //prints USD50.0 based on the protocol
print(money1.convert("EUR").description) //prints the converted amount and currency in the protocol format EUR75.0

print(jobTest.description) //prints the title and hourly or salary rate

print(sabrina.description) // prints characteristics of Person object sabrina, first name, last name etc.

print(weschler.description) //prints the toString for all the family members in the array Person


//Test for extension
print("Test for Extension")
print(100.USD.convert("GBP")) //GBP50.0
print(100.GBP.convert("USD")) //USD200.0
print(100.USD) //USD100.0

//Test for Mathematics protocol
print("Test for Mathematics protocol")
print(money1.subtract(money2).amount) //25
print(money1.add(money2).amount) //125
