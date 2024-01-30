//
//  ContentView.swift
//
//  Homework 2 - Problem 1a
//
//  Write a program that calculates all four solutions for arbituary values of a, b, and c.
//
//  Marco Gonzalez PHYS-440
//


import Foundation

func findQuadraticRoots(a: Double, b: Double, c: Double) {
    // Calculate the discriminant
    let discriminant = b * b - 4 * a * c
    
    // This checks if roots are real or complex
    if discriminant > 0 {
        // Two real and distinct roots
        let root1 = (-b + sqrt(discriminant)) / (2 * a)
        let root2 = (-b - sqrt(discriminant)) / (2 * a)
        print("Root 1: \(root1)")
        print("Root 2: \(root2)")
    } else if discriminant == 0 {
        // Two real and equal roots
        let root = -b / (2 * a)
        print("Root 1: \(root)")
        print("Root 2: \(root)")
    } else {
        // Complex roots
        let realPart = -b / (2 * a)
        let imaginaryPart = sqrt(-discriminant) / (2 * a)
        print("Root 1: \(realPart) + \(imaginaryPart)i")
        print("Root 2: \(realPart) - \(imaginaryPart)i")
    }
}








