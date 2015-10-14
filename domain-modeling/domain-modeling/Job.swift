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
    
    func calculateIncome(hoursWorked: Double) -> Double {
        switch salary {
        case .PerHour(let amount):
            return amount * hoursWorked
        case .PerYear(let amount):
            return amount
        }
    
    }
    func raise(raise: Double) -> Double {
        switch salary {
        case .PerHour(let amount):
            return (amount * (raise / 100)) + amount
        case .PerYear(let amount):
            return (amount * (raise / 100)) + amount
        }
    }
}
    
