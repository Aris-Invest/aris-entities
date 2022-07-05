import Foundation

public struct StockDetails: Codable {
    public let data: [HistoricalData]
    public let ticker: String
    public let company: CompanyInfo
    
    public init(
        data: [HistoricalData],
        ticker: String,
        company: CompanyInfo
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

public struct CompanyInfo: Codable {
    public init(
        name: String,
        description: String?,
        listDate: String?,
        employees: Int?,
        marketCap: Double?
    ) {
        self.name = name
        self.description = description
        self.listDate = listDate
        self.employees = employees
        self.marketCap = marketCap
    }
    
    public let name: String
    public let description: String?
    public let listDate: String?
    public let employees: Int?
    public let marketCap: Double?
}
