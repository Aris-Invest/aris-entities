import Foundation

public struct CompantInfo {
    public init(
        name: String,
        description: String,
        ceo: String,
        listDate: String,
        employees: String,
        grossProfit: String
    ) {
        self.name = name
        self.description = description
        self.ceo = ceo
        self.listDate = listDate
        self.employees = employees
        self.grossProfit = grossProfit
    }
    
    public let name: String
    public let description: String
    public let ceo: String
    public let listDate: String
    public let employees: String
    public let grossProfit: String
}
