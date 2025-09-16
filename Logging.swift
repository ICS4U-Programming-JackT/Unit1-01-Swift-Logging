import Foundation

// Function to calculate the amount of logs that a logging truck can hold
func main() {
    // User input
    print("Please enter the log length in meters (0.25, 0.5, 1):")
    
    // Get input
    if let length = readLine() {
        if let lengthDouble = Double(length) {
            // Check if log length is greater than 0
            if lengthDouble <= 0 {

                // Warn that length is not greater than 0
                print("Please enter a positive length that is either 0.25, 0.5 or 1")
            } else if lengthDouble == 0.25 || lengthDouble == 0.5 || lengthDouble == 1 {

                // Calculate amount
                let amount = (1100 / (20 * lengthDouble))

                // Display log amount
                print("The amount of logs your truck can carry is \(amount) logs")
                
            } else {
                print("Please enter a valid log length (0.25, 0.5 or 1)")
            }
        } else {
            // Warn that input was not a valid number
            print("Please enter a valid number that is either 0.25, 0.5 or 1.")
        }
    } else {
        // Warn that input could not be read
        print("Error: Could not read input.")
    }
}

main()