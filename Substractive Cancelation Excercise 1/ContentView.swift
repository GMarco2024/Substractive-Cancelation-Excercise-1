//
//  ContentView.swift
//
//  Homework 2
//  GUI for Problem 1
//
//  Marco Gonzalez PHYS-440 Created 1/25/2024
//


import SwiftUI

struct ContentView: View {
    
// State variables to hold coefficients and roots
    
    @State private var coefficientA: String = ""
    @State private var coefficientB: String = ""
    @State private var coefficientC: String = ""
    @State private var roots: [String] = []
    @State private var n: String = ""
    var body: some View {
        VStack {

// Title for the quadratic roots calculator
            
            Text("Problem 1a - Quadratic Roots Calculator")
                .font(.title)
                .underline()

            HStack {
            
// Text fields for user input of coefficients
                
                TextField("Enter coefficient a", text: $coefficientA)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding()

                TextField("Enter coefficient b", text: $coefficientB)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding()

                TextField("Enter coefficient c", text: $coefficientC)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding()
            }

// Button to trigger the calculation of roots
           
            Button("Calculate Roots") {
                let a = Double(coefficientA) ?? 0
                let b = Double(coefficientB) ?? 0
                let c = Double(coefficientC) ?? 0
                
             
// Calculate roots based on user input
            
                roots = calculateAllQuadraticRoots(a: a, b: b, c: c)
            }
            .padding()
            
// Display the roots vertically
            
            VStack(alignment: .leading) {
                ForEach(roots, id: \.self) { root in
                    Text(root)
                        .padding()
                }
            }
            
// Title for errors in computed answers
            
            Text("Problem 1b - Errors in Computed Answers")
                .font(.title)
                .underline()
             
            
// Description of the test case for quadratic roots
            
            Text("For the test case in which a = 1, b = 1, c = 10^-n, type in a value for n.")
                .font(.headline)
                .fontWeight(.regular)
            
            Text("NOTE: This will generate values up to your input for n.")
                .font(.headline)
                .fontWeight(.regular)
                .foregroundColor(.red)        }
        .padding()
        
        // Text field for input of 'n'
                    TextField("Enter value for n", text: $n)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .padding()
    }
    
// Function to calculate all four solutions for the input values of a,b, and c.
    
    private func calculateAllQuadraticRoots(a: Double, b: Double, c: Double) -> [String] {
        
// Calculate the discriminant
        
        let discriminant = b * b - 4 * a * c
        var roots: [String] = []

// Check the nature of roots based on the discriminant
        
        if discriminant > 0 {
            
// Two distinct real roots
            
            let root1 = (-b + sqrt(discriminant)) / (2 * a)
            let root2 = (-b - sqrt(discriminant)) / (2 * a)
            roots.append("Root 1: \(root1), Root 2: \(root2)")
        } else if discriminant == 0 {
            
// Two real and equal roots
            
            let root = -b / (2 * a)
            roots.append("Root 1: \(root), Root 2: \(root)")
        } else {
            
// Complex roots
            
            let realPart = -b / (2 * a)
            let imaginaryPart = sqrt(abs(discriminant)) / (2 * a)
            roots.append("Root 1: \(realPart) + \(imaginaryPart)i, Root 2: \(realPart) - \(imaginaryPart)i")
            
// Also add roots when c is negative
            if c < 0 {
                _ = (-b + sqrt(-c))
                _ = (-b - sqrt(-c))
                roots.append("Root 3: √\(-c)i, Root 4: -√\(-c)i")
            }
        }

        return roots
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}




