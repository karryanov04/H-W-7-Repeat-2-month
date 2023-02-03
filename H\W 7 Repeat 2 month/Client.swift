
import Foundation

class Client {
    var firstName: String
    var lastName: String
    var cards: [Card]

    init(firstName: String, lastName: String, cards: [Card] = []) {
        self.firstName = firstName
        self.lastName = lastName
        self.cards = cards
    }
}
