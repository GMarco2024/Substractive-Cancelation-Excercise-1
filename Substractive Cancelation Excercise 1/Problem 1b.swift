//
//  Problem1b.swift
//
//  Homework 2 - Problem 1b
//
//  Investigate how errors in your computed answers become large as the subtractive cancellations increases...(we use test cases here)
//
//  Marco Gonzalez PHYS-440
//

import Foundation

// Function to conduct the investigation for Problem 1b and return the results
func conductInvestigation() -> [String] {
    var results: [String] = []
    
// Loop through different values of n (1 to 10)
    
    for n in 1...10 {
        
// Given coefficients for the quadratic equation from "Hint"
        
        let a = 1.0
        let b = 1.0
        
        // Calculate c based on the provided formula c = 10^(-n)
        let c = pow(10, -Double(n))

        // Call the function to calculate roots
        if let roots = findQuadraticRoots(a: a, b: b, c: c) {
            // Append results for each iteration
            results.append("For n = \(n), roots: \(roots)")
        } else {
            results.append("For n = \(n), no real roots")
        }
    }

    return results
}


// Function to find the roots of a quadratic equation for investigation
func findQuadraticRoots(a: Double, b: Double, c: Double) -> [Double]? {
    // Calculate the discriminant
    let discriminant = b * b - 4 * a * c

    // Check the nature of roots
    if discriminant > 0 {
        // Two distinct real roots
        let root1 = (-b + sqrt(discriminant)) / (2 * a)
        let root2 = (-b - sqrt(discriminant)) / (2 * a)
        return [root1, root2]
    } else if discriminant == 0 {
        // One real root (double root)
        let root = -b / (2 * a)
        return [root]
    } else {
        // Complex roots
        return nil
    }
}