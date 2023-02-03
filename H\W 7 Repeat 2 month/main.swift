

import Foundation

let card1 = Card(bankName: "MBank", cardNumber: "001", bill: 1000)
let card2 = Card(bankName: "Optima", cardNumber: "002", bill: 500)
let client1 = Client(firstName: "Raul", lastName: "Karyanov", cards: [card1, card2])

let card3 = Card(bankName: "DemirBank", cardNumber: "003", bill: 2000)
let client2 = Client(firstName: "Tima", lastName: "Sydykov", cards: [card3])

let bank = Bank()
bank.transfer(sender: client1, recipient: client2, amount: 2000)

