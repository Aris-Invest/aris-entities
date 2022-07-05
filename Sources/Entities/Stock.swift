import Foundation

public struct Stock {
    public let longName: String
    public let shortName: String
    public let symbol: String
    public let company: String
    public let lastClose: Double
    public let lastOpen: Double
    public let timestamp: Date
    
    public init(
        longName: String,
        shortName: String,
        symbol: String,
        company: String,
        lastClose: Double,
        lastOpen: Double,
        timestamp: Date
    ) {
        self.longName = longName
        self.shortName = shortName
        self.symbol = symbol
        self.company = company
        self.lastClose = lastClose
        self.lastOpen = lastOpen
        self.timestamp = timestamp
    }
}
