//
//  Person.swift
//  domain-modeling
//
//  Created by Weschler, Sabrina on 10/13/15.
//  Copyright (c) 2015 Weschler, Sabrina. All rights reserved.
//

import Foundation

//job and spouse are optional because if the person is younger than 18 they don't have a job 
//and if the person is younger than 16 they don't have a job or a spouse
class Person {
    var firstName: String
    var lastName: String
    var age: Int
    var job: Job?
    var spouse: Person?
    
    //Checks if the person is older than or equal to 16, which case sets the job 
    // checks if the person is older than or equal to 18, which case sets the spouse
    init(firstName: String, lastName: String, age: Int,  job: Job?, spouse: Person?) {
        self.firstName = firstName
        self.lastName = lastName
        self.age = age
        if age >= 16{
            self.job = job
        } else {
            self.job = nil
        }
        if age >= 18 {
            self.spouse = spouse
        } else {
            self.spouse = nil
        }
    }
    //checks if job and spouse exist, then prints the string with them in it
    //checks if job exists, then prints the string with job in it
    //checks if spouse exists, then prints the string with spouse in it
    // if neither exist, then prints without job or spouse 
    func toString() {
        if self.job != nil && self.spouse != nil {
            print("First Name: \(self.firstName) Last Name: \(self.lastName) Age: \(self.age) Job: \(self.job!.title) Spouse: \(self.spouse!.firstName)")
        } else if self.job != nil {
            print("First Name: \(self.firstName) Last Name: \(self.lastName) Age: \(self.age) Job: \(self.job!.title)")
        } else if self.spouse != nil {
            print("First Name: \(self.firstName) Last Name: \(self.lastName) Age: \(self.age) Spouse: \(self.spouse!.firstName)")
        } else {
            print("First Name: \(self.firstName) Last Name: \(self.lastName) Age: \(self.age)")
        }
    }
}