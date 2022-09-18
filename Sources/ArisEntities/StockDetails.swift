import Foundation

public struct StockDetails: Codable {
    public let data: [HistoricalData]
    public let ticker: String
    public let similar: [Stock]
    public let company: CompanyInfo
    
    public init(
        data: [HistoricalData],
        ticker: String,
        similar: [Stock],
        company: CompanyInfo
    ) {
        self.data = data
        self.ticker = ticker
        self.similar = similar
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
