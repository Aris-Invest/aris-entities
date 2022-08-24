import Foundation

public struct Quote: Codable {
    public let symbol: String
    public let bidPrice: Decimal
    public let askPrice: Decimal
    public let timestamp: Date
    
    public init(
        symbol: String,
        bidPrice: Decimal,
        askPrice: Decimal,
        timestamp: Date
    ) {
        self.symbol = symbol
        self.bidPrice = bidPrice
        self.askPrice = askPrice
        self.timestamp = timestamp
    }
}
