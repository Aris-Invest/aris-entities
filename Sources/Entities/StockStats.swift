import Foundation

public struct StockStats {
    public enum Stat: String {
        case open, high, low, week52High, week52Low, volume
        case averageVolume, marketCap, peRatio, dividentsYield
    }
        
    public let stats: [Stat: Double]
    public let rating: AnalystsRating
    
    public init(
        stats: [StockStats.Stat : Double],
        rating: AnalystsRating
    ) {
        self.stats = stats
        self.rating = rating
    }
}


public struct AnalystsRating {
    public enum Trend: String {
        case buy, sell, hold
    }
    
    public let trends: [Trend: Double]
    public let totalCount: Int
    
    public init(
        trends: [AnalystsRating.Trend : Double],
        totalCount: Int
    ) {
        self.trends = trends
        self.totalCount = totalCount
    }
}
