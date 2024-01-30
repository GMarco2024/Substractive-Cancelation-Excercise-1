import SwiftUI

struct ContentView: View {
    // State variables to hold coefficients and roots
    @State private var coefficientA: String = ""
    @State private var coefficientB: String = ""
    @State private var coefficientC: String = ""
    @State private var roots: [String] = []
    @State private var n: String = ""
    @State private var investigationResults: [String] = []

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
                roots = findQuadraticRoots(a: a, b: b, c: c)
            }
            .padding()
            
            // Display the roots vertically for aesthetics
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
                .italic()
                .foregroundColor(.red)
            
            // Text field for input of 'n'
            TextField("Enter value for n", text: $n)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()
            
            // Button to trigger the calculation of Problem1b
            Button("Calculate Problem1b") {
                let nValue = Double(n) ?? 0
                investigationResults = conductInvestigation(n: nValue)
            }
            .padding()
            
            // Display the investigation results
            VStack(alignment: .leading) {
                ForEach(investigationResults, id: \.self) { result in
                    Text(result)
                        .padding()
                }
            }
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}









