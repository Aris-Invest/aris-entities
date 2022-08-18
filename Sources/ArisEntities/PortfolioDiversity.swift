import Foundation

public struct PortfolioDiversity: Codable {
    public enum Status: String, Codable {
        case diverse, semiDiverse, notDiverse
    }
    
    public struct SectorInformation: Codable {
        public let sector: Sector
        public let stocks: [String]
        public let sharesCount: Int
        public let percentChange: Double
        public let percentOfPortfolio: Double
        
        public init(
            sector: Sector,
            stocks: [String],
            sharesCount: Int,
            percentChange: Double,
            percentOfPortfolio: Double
        ) {
            self.sector = sector
            self.stocks = stocks
            self.sharesCount = sharesCount
            self.percentChange = percentChange
            self.percentOfPortfolio = percentOfPortfolio
        }
    }
    
    public let status: Status
    public let breakdown: [SectorInformation]
    
    public init(
        status: PortfolioDiversity.Status,
        breakdown: [PortfolioDiversity.SectorInformation]
    ) {
        self.status = status
        self.breakdown = breakdown
    }
}

public enum Sector: String, Codable, CaseIterable {
    case consumerCyclical = "Consumer Cyclical"
    case energy = "Energy"
    case technology = "Technology"
    case industrials = "Industrials"
    case financialServices = "Financial Services"
    case basicMaterials = "Basic Materials"
    case communicationServices = "Communication Services"
    case consumerDefensive = "Consumer Defensive"
    case healthcare = "Healthcare"
    case realEstate = "Real Estate"
    case utilities = "Utilities"
    case industrialGoods = "Industrial Goods"
    case financial = "Financial"
    case services = "Services"
    case conglomerates = "Conglomerates"
}
