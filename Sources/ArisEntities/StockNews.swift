import Foundation

public struct StockNews: Codable {
    public let title: String
    public let description: String?
    public let source: String
    public let time: String
    public let image: String?
    public let url: String?
    
    public init(
        title: String,
        description: String?,
        source: String,
        time: String,
        image: String?,
        url: String?
    ) {
        self.title = title
        self.description = description
        self.source = source
        self.time = time
        self.image = image
        self.url = url
    }
}
