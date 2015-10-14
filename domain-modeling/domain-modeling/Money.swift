//
//  Money.swift
//  domain-modeling
//
//  Created by Weschler, Sabrina on 10/13/15.
//  Copyright (c) 2015 Weschler, Sabrina. All rights reserved.
//

import Foundation

struct Money {
    
    var amount : Double
    var currency : String
    
    //retuns a money object with the converted amount using c2
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
    
    // takes two money objects, conerts money1's amount into money2's currency, adds the currencies in the new money object and returns it
    func add(money2: Money) -> Money {
        var moneySum = Money(amount: Double(), currency: String())
        moneySum = self.convert(money2.currency)
        moneySum.amount += money2.amount
        return moneySum
        
    }
}

