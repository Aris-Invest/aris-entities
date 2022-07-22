import Foundation

public struct StockDetails: Codable {
    public let data: [HistoricalData]
    public let ticker: String
    public let company: String
    
    public init(
        data: [HistoricalData],
        ticker: String,
        company: String
    ) {
        self.data = data
        self.ticker = ticker
        self.company = company
    }
}

public struct HistoricalData: Codable {
    public let open: Double
    public let close: Double
    public let date: Date
    
    public init(
        open: Double,
        close: Double,
        date: Date
    ) {
        self.open = open
        self.close = close
        self.date = date
    }
}
