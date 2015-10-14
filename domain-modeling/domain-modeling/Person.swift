//
//  Person.swift
//  domain-modeling
//
//  Created by Weschler, Sabrina on 10/13/15.
//  Copyright (c) 2015 Weschler, Sabrina. All rights reserved.
//

import Foundation

class Person {
    var firstName: String
    var lastName: String
    var age: Int
    var job: Job?
    var spouse: Person?
    
    init(firstName: String, lastName: String, age: Int,  job: Job?, spouse: Person?) {
        self.firstName = firstName
        self.lastName = lastName
        self.age = age
        if age >= 18{
            self.job = job
            self.spouse = spouse
        } else if age >= 16 {
            self.job = job
        } else {
            self.job = nil
            self.spouse = nil
        }
    }
    func toString() {
        print("First Name: \(self.firstName) Last Name: \(self.lastName) Age: \(self.age) Job: \(self.job) Spouse: \(self.spouse)")
    }
}