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
    @State private var coefficientA: String = ""
    @State private var coefficientB: String = ""
    @State private var coefficientC: String = ""
    @State private var roots: [String] = []

    var body: some View {
        VStack {
            Text("Problem 1a - Quadratic Roots Calculator")
                .font(.title)
                .underline()

            HStack {
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

            Button("Calculate Roots") {
                let a = Double(coefficientA) ?? 0
                let b = Double(coefficientB) ?? 0
                let c = Double(coefficientC) ?? 0
                
                roots = calculateAllQuadraticRoots(a: a, b: b, c: c)
            }
            .padding()
            
            // Display the roots
            ForEach(roots, id: \.self) { root in
                Text(root)
                    .padding()
            }
            
            // Title for errors in computed answers
            Text("Problem 1b - Errors in Computed Answers")
                .font(.title)
                .underline()
                .padding ()
            
            // Title for errors in computed answers
            Text("Our test case for quadratic roots is a = 1, b = 1, c = 10^-n. Press the button for when N = 1,2,3..5.")
                .font(.headline)
                .fontWeight(.regular)
                .padding()
        }
        .padding()
    }
    
    // Function to calculate all four solutions for arbitrary values of a, b, and c
    private func calculateAllQuadraticRoots(a: Double, b: Double, c: Double) -> [String] {
        let discriminant = b * b - 4 * a * c
        var roots: [String] = []

        if discriminant > 0 {
            let root1 = (-b + sqrt(discriminant)) / (2 * a)
            let root2 = (-b - sqrt(discriminant)) / (2 * a)
            roots.append("Root 1: \(root1), Root 2: \(root2)")
        } else if discriminant == 0 {
            let root = -b / (2 * a)
            roots.append("Root 1: \(root), Root 2: \(root)")
        } else {
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





