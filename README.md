# MockService
Universal MockService

import UIKit
import MockService

==> Configure your various data part 1
struct Person {
    let name: String
    let age: Int
}

==> Configure error if needed to test error case 
struct CustomError: Error {
    let statusCode: Int?
    let message: String?
}

final class ViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        ==> Configure your various data part 2
        let data = [
            Person(name: "Ivan", age: 777),
            Person(name: "Mike", age: 7)
        ]
        
        ==> Start mocking with .failure, setting your error or .success with optionalError = nil
        MockService.getData(with: .failure,
                            optionalError: CustomError(statusCode: 404,
                                                       message: "Server error"),
                            loadingDelay: 3.0,
                            mockData: data) { result in
            switch result {
            case .success(let persons):
                ==> Handle success
                print("Success: \(persons)")
            case .failure(let error):
                ==> Handle error
                print("Error: \(error)")
            }
        }
    }
}

![Снимок экрана 2022-10-29 в 20 33 51](https://user-images.githubusercontent.com/88098218/198845364-746f3d32-847d-4555-8bea-4b5072a7694a.png)
