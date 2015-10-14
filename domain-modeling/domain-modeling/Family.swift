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
    
    func householdIncome(hoursWorked: Double) -> Double {
        var totalIncome: Double = 0.0
        for member in members {
            if member.job != nil {
                totalIncome += member.job!.calculateIncome(hoursWorked)
            }
        }
        return totalIncome
    }
    func haveChild() -> [Person]{
        for member in members {
            if member.age > 21 {
                members.append(Person(firstName: String(), lastName: String(), age: 0, job: nil, spouse: nil))
                        return members
            }
        }
        return members
    }
}
