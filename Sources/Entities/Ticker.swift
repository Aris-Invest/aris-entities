import Foundation

public struct Ticker {
    public let regularMarketPrice: Double
    public let regularMarketChange: Double
    public let longName: String
    public let shortName: String
    public let symbol: String
    public let company: String
    public let lastClose: Double
    public let lastOpen: Double
    
    public init(
        regularMarketPrice: Double,
        regularMarketChange: Double,
        longName: String,
        shortName: String,
        symbol: String,
        company: String,
        lastClose: Double,
        lastOpen: Double
    ) {
        self.regularMarketPrice = regularMarketPrice
        self.regularMarketChange = regularMarketChange
        self.longName = longName
        self.shortName = shortName
        self.symbol = symbol
        self.company = company
        self.lastClose = lastClose
        self.lastOpen = lastOpen
    }
}

public struct HistoricalData {
    public struct Result {
        public let volume: Int
        public let open: Double
        public let close: Double
        public let high: Double
        public let low: Double
        public let date: Date
        
        public init(
            volume: Int,
            open: Double,
            close: Double,
            high: Double,
            low: Double,
            date: Date
        ) {
            self.volume = volume
            self.open = open
            self.close = close
            self.high = high
            self.low = low
            self.date = date
        }
    }
    
    public let ticker: String
    public let results: [Result]
    
    public init(ticker: String, results: [HistoricalData.Result]) {
        self.ticker = ticker
        self.results = results
    }
}
