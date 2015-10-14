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
    var salary: Double //todo: change to salary maybe
    
//    enum Salary {
//        case PerYear(String, Double)
//        case PerHour(String, Double)
//    }
//    
    init(title: String, salary: Double) {
        self.title = title
        self.salary = salary // Salary("per-hour", salary)
    }
//
//    func calculateIncome(hoursWorked: Double) -> Double {
//        if (Salary.PerYear = salary) {
//            return salary.rawValue
//        } else if (salary.hash == "perHour") {
//            return hoursWorked * salary.rawValue
//        }
//        }
//        return hoursWorked * salary.rawValue
//    }
//    
//    func raise(raise: Double) -> Double {
//        return salary.rawValue * raise * 100.0
//        
//    }
//    
}