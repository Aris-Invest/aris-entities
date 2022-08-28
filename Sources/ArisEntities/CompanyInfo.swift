import Foundation

public struct CompanyInfo: Codable {
    public init(
        name: String,
        description: String?,
        listDate: String?,
        employees: Int?,
        marketCap: Double?,
        logoUrl: URL?
    ) {
        self.name = name
        self.description = description
        self.listDate = listDate
        self.employees = employees
        self.marketCap = marketCap
        self.logoUrl = logoUrl
    }
    
    public let name: String
    public let description: String?
    public let listDate: String?
    public let employees: Int?
    public let marketCap: Double?
    public let logoUrl: URL?
}
