
import Foundation

class Bank {
     var clients: [Client] = []

     func addClient(client: Client) {
        clients.append(client)
    }

    func transfer(sender: Client, recipient: Client, amount: Double) {
        print("Select a card:")
        for (index, card) in sender.cards.enumerated() {
            print("\(index + 1). \(card.bankName) \(card.cardNumber)")
        }

        let selectedIndex = Int(readLine() ?? "0")! - 1
        let selectedCard = sender.cards[selectedIndex]
        print("Selected card: \(selectedCard.bankName)")

        print("Enter recipient card number:")
        let recipientCardNumber = readLine()!

        var recipientCard: Card?
        for card in recipient.cards where card.cardNumber == recipientCardNumber {
            recipientCard = card
            break
        }

        if let recipientCard = recipientCard {
            print("Recipient: \(recipient.firstName) \(recipient.lastName)")
            selectedCard.bill -= amount
            recipientCard.bill += amount
            print("Transfer successful")
        } else {
            print("Recipient card not found")
        }
    }
}
