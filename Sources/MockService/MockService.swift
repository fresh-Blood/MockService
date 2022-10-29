import Foundation


public struct MockService {
    
    public init() { }
    
    public enum MockLoadingState {
        case success
        case failure
    }
    
    public struct MockAppError: Error {
        let statusCode: Int?
        let message: String?
    }
    
    public static func getData<T>(with state: MockLoadingState,
                                  optionalError: MockAppError? = nil,
                                  loadingDelay: Double,
                                  mockData: T,
                                  completion: @escaping (Result<T, MockAppError>) -> Void) {
        DispatchQueue.main.asyncAfter(deadline: .now() + loadingDelay, execute: {
            switch state {
            case .success:
                completion(.success(mockData))
            case .failure:
                if let optionalError = optionalError {
                    completion(.failure(optionalError))
                }
            }
        })
    }
}
