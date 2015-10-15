//
//  Job.swift
//  domain-modeling
//
//  Created by Weschler, Sabrina on 10/13/15.
//  Copyright (c) 2015 Weschler, Sabrina. All rights reserved.
//

import Foundation

class Job {
    var title: String
    var salary: Salary
    //var salaryType: Salary //todo: change to salary maybe
    //var salaryAmount: Double
    
    enum Salary {
        case PerYear(Double)
        case PerHour(Double)
    }
    
        init(title: String, salary: Salary) {
            self.title = title
            self.salary = salary
        }
    //Calcualtes the income based on whether the person is per-yearly or per-hourly
    //if it per-yearly, it will return amount 
    //if it is per-hourly, it will multiply the amount by the number of hours worked passed in
    func calculateIncome(hoursWorked: Double) -> Double {
        switch salary {
        case .PerHour(let amount):
            return amount * hoursWorked
        case .PerYear(let amount):
            return amount
        }
    
    }
    //raise is being passed in as a percent amount
    //raise is divided by 100 to make it a decimal 
    //in both .PerHour and .PerYear case, the raise based on the amount is being calculated then added back up
    //to the amount to return the final amount with the raise 
    func raise(raise: Double) -> Double {
        switch salary {
        case .PerHour(let amount):
            return (amount * (raise / 100)) + amount
        case .PerYear(let amount):
            return (amount * (raise / 100)) + amount
        }
    }
}
    
