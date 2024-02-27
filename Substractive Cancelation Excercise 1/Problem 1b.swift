//
//  Problem1b.swift
//
//  Homework 2 - Problem 1b
//
//  Investigate how errors in your computed answers become large as the subtractive cancellations increases...(we use a test cases here)
//
//  Marco Gonzalez PHYS-440
//

import Foundation

// Function to conduct the investigation for Problem 1b and return the results
func conductInvestigation(n: Int) -> [String] {
    var results: [String] = []

    // Iterate through values of n from 1 to the specified value
   
    for i in 1...n {
     
        // Calculate c based on the provided formula c = 10^(-n)
       
        let c = pow(10, -Double(i))

       
        // Append results for each iteration
        
        results.append("For n = \(i), c = \(c)")
    }

    return results
    
}



