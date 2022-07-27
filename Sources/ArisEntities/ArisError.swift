import Foundation

public enum ArisErrorType {
    case urlNotFound(String)
    case missingThirdPartyCredentials
    case decodingError(String, String)
    case missingParameter(String)
}

public protocol ArisErrorProtocol: Error {
    var type: ArisErrorType { get }
    var statusCode: Int { get }
    var additionalInformation: String { get }
}

public struct ArisError: ArisErrorProtocol {
    public init(type: ArisErrorType) {
        self.type = type
    }
    
    public let type: ArisErrorType

    public var statusCode: Int {
        switch type {
        case .urlNotFound:
            return 404
        case .missingThirdPartyCredentials, .decodingError:
            return 500
        case .missingParameter:
            return 400
        }
    }
    
    public var additionalInformation: String {
        switch type {
        case .urlNotFound(let url):
            return "URL \(url) not found"
        case .missingThirdPartyCredentials:
            return "A third party API key is missing from the ENVIRONMENT"
        case let .decodingError(type, path):
            return "There was an issue decoding object of type \"\(type)\", missing value for key \"\(path)\""
        case let .missingParameter(parameter):
            return "Missing parameter \"\(parameter)\" in URL"
        }
    }
}
