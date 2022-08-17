import Foundation

public struct StockDividends: Codable {
    
    public struct Amount: Codable {
        public let payDate: Date
        public let amount: Decimal
        
        public init(
            payDate: Date,
            amount: Decimal
        ) {
            self.payDate = payDate
            self.amount = amount
        }
    }
    
    public let ticker: String
    public let expectedYearlyYield: Decimal
    public let currentYearYield: Decimal
    public let amounts: [Amount]
    
    public init(
        ticker: String,
        currentYearYield: Decimal,
        expectedYearlyYield: Decimal,
        amounts: [StockDividends.Amount]
    ) {
        self.ticker = ticker
        self.currentYearYield = currentYearYield
        self.expectedYearlyYield = expectedYearlyYield
        self.amounts = amounts
    }
}
