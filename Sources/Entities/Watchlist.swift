import Foundation

public struct Watchlist: Codable {
    public let items: [WatchlistItem]
    
    public init(items: [WatchlistItem]) {
        self.items = items
    }
}

public struct WatchlistItem: Codable {
    public let ticker: String
    
    public init(ticker: String) {
        self.ticker = ticker
    }
}
