//
//  Problem1a.swift
//
//  Homework 2 - Problem 1a
//
//  Write a program that calculates all four solutions for arbitrary values of a, b, and c.
//
//  Marco Gonzalez PHYS-440
//

import Foundation

// Function to find the quadratic roots of an equation ax^2 + bx + c = 0.
// Parameters:
//   - a: Coefficient of x^2
//   - b: Coefficient of x
//   - c: Constant term

func findQuadraticRoots(a: Double, b: Double, c: Double) -> [String] {
    
    // Calculate the discriminant (b^2 - 4ac) to determine the nature of the roots.
    
        let discriminant = b * b - 4 * a * c
    
    // Initialize an empty array to store the roots as strings.
    
        var roots: [String] = []

    // This checks if roots are real or complex
   
    if discriminant > 0 {
        
    // Calculate both roots using the quadratic formula.
    // Calculate the single root using the quadratic formula.
        
        let root1 = (-b + sqrt(discriminant)) / (2 * a)
        let root2 = (-b - sqrt(discriminant)) / (2 * a)
        roots.append("Root 1: \(root1)")
        roots.append("Root 2: \(root2)")
        
    } else if discriminant == 0 {
        
    // Two real and equal roots
        
        let root = -b / (2 * a)
        roots.append("Root 1: \(root)")
        roots.append("Root 2: \(root)")
    } else {
        
        // Complex roots
        // Calculate the real part and the imaginary part of the roots.
        
        let realPart = -b / (2 * a)
        let imaginaryPart = sqrt(-discriminant) / (2 * a)
        roots.append("Root 1: \(realPart) + \(imaginaryPart)i")
        roots.append("Root 2: \(realPart) - \(imaginaryPart)i")
    }
    
    return roots
}









