import Foundation

public struct StockInsights {
    public enum Insight: String {
        case volume, stockPrice, averageVolume
        case marketCap, dividents, peRatio
    }
    
    public let insights: [Insight: StockInsight]
    
    public init(insights: [Insight: StockInsight]) {
        self.insights = insights
    }
}

public struct StockInsight {
    public enum Trend: String {
        case up, down, warning
    }

    public let title: String
    public let value: String
    public let message: String
    public let trend: Trend

    public init(
        title: String,
        value: String,
        message: String,
        trend: StockInsight.Trend
    ) {
        self.title = title
        self.value = value
        self.message = message
        self.trend = trend
    }
}
