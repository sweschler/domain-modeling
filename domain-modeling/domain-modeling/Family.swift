//
//  Family.swift
//  domain-modeling
//
//  Created by Weschler, Sabrina on 10/13/15.
//  Copyright (c) 2015 Weschler, Sabrina. All rights reserved.
//

import Foundation

class Family {
    var members: [Person]
    
    init(members: [Person]) {
        self.members = members
    }
    
    //Checking each member in the array of Person to see if they have a job 
    //if they do, it accesses the calculateIncome function in the Job class and calculates the income
    //Then adds all the incomes with the members who have a job
    func householdIncome(hoursWorked: Double) -> Double {
        var totalIncome: Double = 0.0
        for member in members {
            if member.job != nil {
                totalIncome += member.job!.calculateIncome(hoursWorked)
            }
        }
        return totalIncome
    }
    
    //Adds a new born member to the array of Person
    func haveChild() -> [Person]{
        for member in members {
            if member.age > 21 {
                members.append(Person(firstName: "firstBaby", lastName: String(), age: 0, job: nil, spouse: nil))
                        return members
            }
        }
        return members
    }
}
