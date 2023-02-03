
import Foundation

class Card {
    var bankName: String
    var cardNumber: String
    var bill: Double

    init(bankName: String, cardNumber: String, bill: Double) {
        self.bankName = bankName
        self.cardNumber = cardNumber
        self.bill = bill
    }
}
