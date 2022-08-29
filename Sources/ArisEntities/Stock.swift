import Foundation

public struct Stock: Codable {
    public let longName: String
    public let shortName: String
    public let symbol: String
    public let company: String
    public let lastClose: Double
    public let lastOpen: Double
    public let timestamp: Date
    public let logo: URL?
    
    public init(
        longName: String,
        shortName: String,
        symbol: String,
        company: String,
        lastClose: Double,
        lastOpen: Double,
        timestamp: Date,
        logo: URL?
    ) {
        self.longName = longName
        self.shortName = shortName
        self.symbol = symbol
        self.company = company
        self.lastClose = lastClose
        self.lastOpen = lastOpen
        self.timestamp = timestamp
        self.logo = logo
    }
}
