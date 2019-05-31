import Foundation

class CardGame {
    
    var deck: [Card] = {
        var temporaryDeck = [Card]()
        let allRanks = [
            Card.Rank.ace,
            .two, .three, .four, .five, .six, .seven, .eight, .nine, .ten,
            .jack, .queen, .king
        ]
        let allSuits = [Card.Suit.spades, .hearts, .diamonds, .clubs]
        for rank in allRanks {
            for suit in allSuits {
                temporaryDeck.append(Card(rank: rank, suit: suit))
            }
        }
        return temporaryDeck
    }()
    
    
}
