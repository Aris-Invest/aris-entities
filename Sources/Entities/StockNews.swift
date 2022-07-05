import Foundation

public struct StockNews {
    public let title: String
    public let description: String
    public let source: String
    public let time: String
    public let image: String?
    public let url: URL?
    
    public init(
        title: String,
        description: String,
        source: String,
        time: String,
        image: String?,
        url: URL?
    ) {
        self.title = title
        self.description = description
        self.source = source
        self.time = time
        self.image = image
        self.url = url
    }
}
