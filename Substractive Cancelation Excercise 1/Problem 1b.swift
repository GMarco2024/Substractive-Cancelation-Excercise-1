import Foundation

// Function to conduct the investigation for Problem 1b and return the results
func conductInvestigation(n: Int) -> [String] {
    var results: [String] = []

    // Given coefficients for the quadratic equation from "Hint"
    let a = 1.0
    let b = 1.0

    // Iterate through values of n from 1 to the specified value
    for i in 1...n {
        // Calculate c based on the provided formula c = 10^(-n)
        let c = pow(10, -Double(i))

        // Append results for each iteration
        results.append("For n = \(i), c = \(c)")
    }

    return results
}



