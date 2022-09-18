import Foundation

public struct StockHistoricalData: Codable {
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
    
    public let symbol: String
    public let data: [HistoricalData]
    
    public init(
        symbol: String,
        data: [StockHistoricalData.HistoricalData]
    ) {
        self.symbol = symbol
        self.data = data
    }
}
