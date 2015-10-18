//
//  Money.swift
//  domain-modeling
//
//  Created by Weschler, Sabrina on 10/13/15.
//  Copyright (c) 2015 Weschler, Sabrina. All rights reserved.
//

import Foundation

protocol Mathematics {
    func add(secondMoney: Money) -> Money
    func subtract(secondMoney: Money) -> Money
}

struct Money: CustomStringConvertible, Mathematics {
    
    // Properties of structure money
    var amount : Double
    var currency : String
    
    var description: String {
        return("\(currency)\(amount)")
    }


    //convert is a method in the Money structure
    //covert method is returning a Money object 
    //convert method takes in a currency called inputCurrency and converts the original amount to the inputCurrecny
    func convert(inputCurrency: String) -> Money {
        var convertedMoney = Money(amount: self.amount, currency: inputCurrency)
        switch self.currency {
            case "USD":
                if (inputCurrency == "GBP") {
                    convertedMoney.amount *= 0.5
                } else if (inputCurrency == "EUR") {
                    convertedMoney.amount *= 1.5
                }else if (inputCurrency == "CAN") {
                    convertedMoney.amount *= 1.25
                }
            case "GBP":
                if (inputCurrency == "EUR") {
                    convertedMoney.amount *= 3.0
                } else if (inputCurrency == "CAN") {
                    convertedMoney.amount *= 2.5
                } else if (inputCurrency == "USD") {
                    convertedMoney.amount *= 2.0
                }
            case "EUR":
                if (inputCurrency == "CAN") {
                    convertedMoney.amount *= (5.0 / 6.0)
                } else if (inputCurrency == "USD") {
                    convertedMoney.amount *= (2.0 / 3.0)
                } else if (inputCurrency == "GBP") {
                    convertedMoney.amount *= (1.0 / 3.0)
                }
            case "CAN":
                if (inputCurrency == "EUR") {
                    convertedMoney.amount *= (6.0 / 5.0)
                } else if (inputCurrency == "USD") {
                    convertedMoney.amount *= (4.0 / 5.0)
                } else if (inputCurrency == "GBP") {
                    convertedMoney.amount *= (2.0 / 5.0)
                }
        default:
            convertedMoney.amount = self.amount
            convertedMoney.currency = self.currency
        }
        return convertedMoney
    }
    
    //converts the first money currency into the second money currency and then adds the amount and returns the amount
    // in terms of the second currency passed in
    func add(secondMoney: Money) -> Money {
        var moneySum = Money(amount: Double(), currency: String())
        moneySum = self.convert(secondMoney.currency)
        moneySum.amount += secondMoney.amount
        return moneySum
        
    }
    
    //converts the first money currency into the second money currency and then subtracts the amount and returns the amount
    // in terms of the second currency passed in
    func subtract(secondMoney: Money) -> Money {
        var moneySum = Money(amount: Double(), currency: String())
        moneySum = self.convert(secondMoney.currency) //Taking USD and converting the GBP to USD
        moneySum.amount -= secondMoney.amount
        return moneySum
        
    }
}

