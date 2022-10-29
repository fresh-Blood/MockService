# MockService
Universal MockService

// MARK: - Example
// Somewhere in your production code...
func getData() {
    // Prepare your mock data
    let mockData = PersonDTO(name: "Yaroslav", age: 31)
    
    // Set optional error if needed
    MockService.getData(with: .success,
                     optionalError: MockAppError(statusCode: 404,
                                                 message: "Server error"),
                     loadingDelay: 3.0,
                     mockData: mockData) { result in
        switch result {
            case .success(let personData):
                // Success result handling
                print("Success: \(personData)")
            case .failure(let error):
                // Error handling
                print("Error: \(error)")
        }
    }
}

getData()
