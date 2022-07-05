import Foundation

public struct StockAnalysis: Codable {
    public let regularOpen: Double?
    public let regularHight: Double?
    public let regularLow: Double?
    public let weeks52High: Double?
    public let weeks52Low: Double?
    public let regularVolume: Double?
    public let averageVolume10Days: Double?
    public let regularPrice: Double?
    public let averagePrice50Days: Double?
    public let earningsPerShare: Double?
    public let earningsPerShareDifference: Double?
    public let peRatio: Double?
    public let comparablePERatio: Double?
    public let marketCap: Double?
    public let annualDividendYield: Double?

    public let rating: AnalystsRating?

    public init(
        regularOpen: Double?,
        regularHight: Double?,
        regularLow: Double?,
        weeks52High: Double?,
        weeks52Low: Double?,
        regularVolume: Double?,
        averageVolume10Days: Double?,
        regularPrice: Double?,
        averagePrice50Days: Double?,
        earningsPerShare: Double?,
        earningsPerShareDifference: Double?,
        peRatio: Double?,
        comparablePERatio: Double?,
        marketCap: Double?,
        annualDividendYield: Double?,
        rating: AnalystsRating?
    ) {
        self.regularOpen = regularOpen
        self.regularHight = regularHight
        self.regularLow = regularLow
        self.weeks52High = weeks52High
        self.weeks52Low = weeks52Low
        self.regularVolume = regularVolume
        self.averageVolume10Days = averageVolume10Days
        self.regularPrice = regularPrice
        self.averagePrice50Days = averagePrice50Days
        self.earningsPerShare = earningsPerShare
        self.earningsPerShareDifference = earningsPerShareDifference
        self.peRatio = peRatio
        self.comparablePERatio = comparablePERatio
        self.marketCap = marketCap
        self.annualDividendYield = annualDividendYield
        self.rating = rating
    }
}

public struct AnalystsRating: Codable {
    public let buy: Double
    public let sell: Double
    public let hold: Double
    public let totalCount: Int
    
    public init(
        buy: Double,
        sell: Double,
        hold: Double,
        totalCount: Int
    ) {
        self.buy = buy
        self.sell = sell
        self.hold = hold
        self.totalCount = totalCount
    }
}
