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

func findQuadraticRoots(a: Double, b: Double, c: Double) -> [String] {
    // Calculate the discriminant
    let discriminant = b * b - 4 * a * c
    var roots: [String] = []

    // This checks if roots are real or complex
    if discriminant > 0 {
        // Two real and distinct roots
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
        let realPart = -b / (2 * a)
        let imaginaryPart = sqrt(-discriminant) / (2 * a)
        roots.append("Root 1: \(realPart) + \(imaginaryPart)i")
        roots.append("Root 2: \(realPart) - \(imaginaryPart)i")
    }
    
    return roots
}









