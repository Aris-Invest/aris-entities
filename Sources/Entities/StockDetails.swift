import Foundation

public struct StockDetails {
    public init(
        data: [HistoricalData],
        ticker: String,
        company: String
    ) {
        self.data = data
        self.ticker = ticker
        self.company = company
    }
    
    public let data: [HistoricalData]
    public let ticker: String
    public let company: String // whole object?
}

public struct HistoricalData {
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
