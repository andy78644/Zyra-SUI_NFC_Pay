import Foundation

struct Transaction: Codable {
    let recipientAddress: String
    let amount: Double
    let senderAddress: String
    let coinType: String
    var transactionId: String?
    var status: TransactionStatus = .pending
    var recipient: String? // Added for merchant name
    var merchant: String?  // Added for product name
    
    enum TransactionStatus: String, Codable {
        case pending
        case inProgress
        case completed
        case failed
    }
}
