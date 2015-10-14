//
//  Money.swift
//  domain-modeling
//
//  Created by Weschler, Sabrina on 10/13/15.
//  Copyright (c) 2015 Weschler, Sabrina. All rights reserved.
//

import Foundation

struct Money {
    
    // Properties of structure money
    var amount : Double
    var currency : String
    
    //convert is a method in the Money structure
    //covert method is returning a Money object 
    //
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
                    convertedMoney.amount *= 3
                } else if (inputCurrency == "CAN") {
                    convertedMoney.amount *= 2.5
                }
            case "EUR":
                if (inputCurrency == "CAN") {
                    convertedMoney.amount *= (5 / 6)
                }
        default:
            convertedMoney.amount = self.amount
            convertedMoney.currency = self.currency
        }
        return convertedMoney
    }
    
    //converts the first money currency into the second money currency and then adds the amount and returns the amount
    // in terms of the second currency passed in
    func add(money2: Money) -> Money {
        var moneySum = Money(amount: Double(), currency: String())
        moneySum = self.convert(money2.currency)
        moneySum.amount += money2.amount
        return moneySum
        
    }
    func subtract(money2: Money) -> Money {
        var moneySum = Money(amount: Double(), currency: String())
        moneySum = self.convert(money2.currency) //Taking USD and converting the GBP to USD
        moneySum.amount -= money2.amount
        return moneySum
        
    }
}

