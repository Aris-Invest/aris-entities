import Foundation

public struct Watchlist {
    public let items: [WatchlistItem]
    
    public init(items: [WatchlistItem]) {
        self.items = items
    }
}

public struct WatchlistItem {
    public let ticker: String
    
    public init(ticker: String) {
        self.ticker = ticker
    }
}
