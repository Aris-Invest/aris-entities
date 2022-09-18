import Foundation

public struct StockDetails: Codable {
    public let ticker: String
    public let similar: [StockSummary]
    public let company: CompanyInfo
    
    public init(
        ticker: String,
        similar: [StockSummary],
        company: CompanyInfo
    ) {
        self.ticker = ticker
        self.similar = similar
        self.company = company
    }
}
